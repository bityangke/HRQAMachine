import skvideo.io
import math
import pylab
import os, sys
from PIL import Image

def _process_video(save_path, filename):
  """Process a single video.

  Args:
    save_path: string, path to the extracted frames e.g., '/path/to/example'
    filename: string, path to a video file e.g., '/path/to/example.mp4'.
  Returns:
    image_buffer: string, JPEG encoding of RGB image.
    height: integer, image height in pixels.
    width: integer, image width in pixels.
  """
  # Read the image file.
  vid_in = skvideo.io.FFmpegReader(filename)
  data = skvideo.io.ffprobe(filename)['video']
  fps = data['@r_frame_rate'].split('/')
  fps = math.ceil(float(fps[0])/float(fps[1]))
  width = int(data['@width'])
  height = int(data['@height'])

  frames = []
  for idx, frame in enumerate(vid_in.nextFrame()):
    if (idx % (fps)) == 0:
      img = Image.fromarray(frame)
      if not os.path.exists(save_path):
        os.mkdir(save_path)
      path = os.path.join(save_path, 'img_%06d.jpg' % (idx/fps))
      img.save(path, 'jpeg')
  
  vid_in.close()

def vid2img(base_path='/media/sensetime/yoosan/story/video_clips', save_path='/media/sensetime/yoosan/story/video_imgs'):
  list_vids = os.listdir(base_path)
  cnt = 0
  for vid in list_vids:
    if vid.endswith('.tar'):
      continue      
    vid_path = os.path.join(base_path, vid)
    save_vid_path = os.path.join(save_path, vid)
    if not os.path.exists(save_vid_path):
      os.mkdir(save_vid_path)
    clips = os.listdir(vid_path)
    for cp in clips:
      clip_file = os.path.join(vid_path, cp)
      cp = cp.replace('.mp4', '')
      save_clip_path = os.path.join(save_vid_path, cp)
      if not os.path.exists(save_clip_path):
        os.mkdir(save_clip_path)
      try:
        _process_video(save_clip_path, clip_file)
      except Exception as e:
        print(e)
        print('SKIPPED: Unexpected eror while decoding %s.' % clip_file)
        continue
      cnt += 1
      if not cnt % 100:
        print('processed %d.' % cnt)


# _process_video('data/', '/home/sensetime/Documents/0T7JI0q5HvE.mp4')
vid2img()