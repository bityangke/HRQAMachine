import os, sys
import re
import json
import pysrt
import operator

from data_loader import DataLoader
from story_loader import StoryLoader
from nltk import word_tokenize
from functools import reduce

def process_str(ostr):
    ostr = ostr.lower()
    ostr = ostr.replace("'", '')
    ostr = ostr.replace('-', '')
    ostr = ostr.replace('.', '')
    ostr = ostr.replace('*', '')
    return ostr

def build_vocabuary(dloader, vocab_path='./data/vocab.txt'):
    stys, qas = dloader.get_story_qa_data(split='full', story_type='subtitle')
    print(type(stys))
    vocab = []
    vocab_inversed = {}
    for pair in qas:
        ques = pair.question
        ans = pair.answers
        ques = process_str(ques)
        tokens = word_tokenize(ques)
        ans_tokens = [word_tokenize(process_str(a)) for a in ans]
        tokens += reduce(operator.add, ans_tokens)
        for token in tokens:
            token += '\n'
            if not token in vocab_inversed.keys():
                vocab.append(token)
                vocab_inversed[token] = 1
            else:
                vocab_inversed[token] += 1
    
    for k, v in stys.items():
        for sub in v:
            tokens = word_tokenize(process_str(sub))
            for token in tokens:
                token += '\n'
                if not token in vocab_inversed.keys():
                    vocab.append(token)
                    vocab_inversed[token] = 1
                else:
                    vocab_inversed[token] += 1

    vocab = sorted(vocab)
    vocab = [v for v in vocab if vocab_inversed[v] > 5]
    print('vocab size %d' % len(vocab))
    with open(vocab_path, 'w') as f:
        f.writelines(vocab)

def load_vocabuary(vocab_file='./data/vocab.txt'):
    vocab = []
    vocab_inversed = {}
    vocab.append('UNK')
    vocab_inversed['UNK'] = 0 
    with open(vocab_file, 'r') as f:
        for line in f:
            line = line.strip()
            vocab.append(line)
            vocab_inversed[line] = len(vocab)
    
    return vocab, vocab_inversed


def str2idx(s, vocab_inversed):
    tokens = word_tokenize(process_str(s))
    return [vocab_inversed[s] if s in vocab_inversed.keys() else vocab_inversed['UNK'] for s in tokens]


def build_trainset(data_loader, vocab_inversed, processed_file='./data/qa_ids.json'):
    stys, qas = data_loader.get_story_qa_data(split='full', story_type='subtitle')
    data_as_idx = []
    for qa in qas:
        if len(qa.video_clips) > 0:
            ques_ids = str2idx(qa.question, vocab_inversed)
            ans_ids = [str2idx(s, vocab_inversed) for s in qa.answers]
            data_as_idx.append({
                'qid': qa.qid,
                'imdb_key': qa.imdb_key,
                'question': ques_ids,
                'answers': ans_ids,
                'correct_index': qa.correct_index,
                'video_clips': qa.video_clips
            })
    
    with open(processed_file, 'w') as f:
        json.dump(data_as_idx, f)

def process_subtitle(sub_filename, start_time, end_time):
    quote_matches = re.compile('<.+?>')
    subtitle_text = pysrt.open(sub_filename, encoding='iso-8859-1')
    subtitle_text = subtitle_text.slice(starts_after=start_time, ends_before=end_time)
    subtitle_text = [l.strip() for l in subtitle_text.text.split('\n')]
    subtitle_text = [quote_matches.sub('', l).strip() for l in subtitle_text]
    return subtitle_text

def process_align(sub_align_file):
    with open(sub_align_file) as f:
        align_mat = f.readlines()
    return align_mat

def parse_time(time):
    time = time.split('.')
    milliseconds = int(time[1])
    hours = int(time[0]) // 3600
    minutes = (int(time[0]) - hours * 3600) // 60
    seconds = int(time[0]) % 60
    return (hours, minutes, seconds, milliseconds)

def build_subtitle(data_loader, vocab_inversed, align_path='./story/matidx',
                   subtitle_path='./story/subtt',
                   saved_file='./data/subtitle.json'):
    video_list, qas = data_loader.get_video_list(split='full')

    all_subtts = {}
    for qa in qas:
        clips = qa.video_clips
        imdb_key = qa.imdb_key
        subs_per_movie = {}
        for c in clips:
            line = c.split('.')
            align_file = os.path.join(align_path, imdb_key + '.matidx')
            align_mat = process_align(align_file)
            sf = int(line[1].split('-')[1])
            ef = int(line[2].split('-')[1])
            start_time = align_mat[sf].split(' ')[1]
            end_time = align_mat[ef].split(' ')[1]
            start_time = parse_time(start_time)
            end_time = parse_time(end_time)
            subtitle_file = os.path.join(subtitle_path, imdb_key + '.srt')
            subtitles_clip = process_subtitle(subtitle_file, start_time, end_time)
            subtitles_per_clip = [str2idx(s, vocab_inversed) for s in subtitles_clip]
            subs_per_movie[c] = subtitles_per_clip
            all_subtts[imdb_key] = subs_per_movie
    with open(saved_file, 'w') as f:
        json.dump(all_subtts, f)

if __name__ == '__main__':
    data_ld = DataLoader()
    # build_vocabuary(data_ld)
    voc, voc_rsd = load_vocabuary()
    # print(len(voc))
    # print(voc_rsd)
    # build_trainset(data_ld, voc_rsd)
    build_subtitle(data_ld, voc_rsd)
