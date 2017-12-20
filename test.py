from data_loader import DataLoader
from story_loader import StoryLoader
import pysrt

mqa = DataLoader()
# print(mqa.movies_map)
# mqa.pprint_movie(mqa.movies_map['tt0133093'])

mqa.pprint_qa(mqa.qa_list[0])

movie_list = mqa.get_split_movies(split='train')

# print(movie_list)

vl_qa, _ = mqa.get_video_list('full', 'qa_clips')
# print(vl_qa)
print(len(vl_qa))

# sty = StoryLoader()
# res = sty.load_story(mqa.movies_map, story_type='subtitle')
# res = res['tt0133093']
# print(len(res))

subtitle_text = pysrt.open('/home/sensetime/Desktop/MovieQA_benchmark/story/subtt/tt0455824.srt', encoding='iso-8859-1')
subtitle_text.shift
print(type(subtitle_text[993].start))
end = subtitle_text[993].start
print(end)


def get_scds(h, m, s):
    return h * 60 * 60 + m * 60 + s

res = get_scds(subtitle_text[233].start.hours, subtitle_text[233].start.minutes, subtitle_text[233].start.seconds)
print(res)

print(4249 - 60 * 60 - 60 * 10)

res = subtitle_text.slice(starts_after=(1, 10, 49, 958), ends_before=(1, 12, 59, 958))
print(len(res))