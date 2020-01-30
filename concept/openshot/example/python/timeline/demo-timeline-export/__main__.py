#!/usr/bin/env python3


import sys, os
## print(os.path.realpath(__file__))
THE_BASE_DIR_PATH = os.path.dirname(os.path.realpath(__file__))
THE_ASSET_DIR_PATH = os.path.join(THE_BASE_DIR_PATH, 'asset')
THE_IMG_DIR_PATH = os.path.join(THE_ASSET_DIR_PATH, 'img')
THE_EXPORT_FILE_PATH = os.path.join(THE_ASSET_DIR_PATH, 'final.webm')
#print(THE_BASE_DIR_PATH)
#pritn(THE_ASSET_DIR_PATH)
#print(THE_IMG_DIR_PATH)
#print(THE_EXPORT_FILE_PATH)


import time
import json
import pprint;


## Package: [python3-openshot](https://packages.ubuntu.com/bionic/python3-openshot)
import openshot


class app():



	def __init__(self):
		self.clips = [None, None]
		self.init_timeline()


	def init_timeline(self):

		fps = {
			'num': 24,
			'den': 1
		}
		width = 1280
		height = 720
		sample_rate = 44100
		channels = 2
		channel_layout = 3

		# Create an instance of a libopenshot Timeline object
		self.timeline = openshot.Timeline(
			width,
			height,
			openshot.Fraction(fps['num'], fps['den']),
			sample_rate, channels,
			channel_layout
		)
		self.timeline.info.channel_layout = channel_layout
		self.timeline.info.has_audio = True
		self.timeline.info.has_video = True
		self.timeline.info.video_length = 99999
		self.timeline.info.duration = 999.99
		self.timeline.info.sample_rate = sample_rate
		self.timeline.info.channels = channels

		#print(self.timeline.Json())

		# Open the timeline reader
		self.timeline.Open()

		#print(self.timeline.Json())


	def create_clip_1(self):

		# $ dpkg -L openshot-qt | grep test
		# /usr/lib/python3/dist-packages/openshot_qt/tests/query_tests.py

		# Create clip
		# cp /usr/lib/python3/dist-packages/openshot_qt/images/AboutLogo.png asset/img/AboutLogo.png
		#clip = openshot.Clip(os.path.join(THE_IMG_DIR_PATH, 'AboutLogo.png'))
		self.clips[0] = openshot.Clip('/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg')



		self.clips[0].Position(0.0)
		self.clips[0].Start(0)
		self.clips[0].End(5)

		return self.clips[0]


	def create_clip_2(self):

		# $ dpkg -L openshot-qt | grep test
		# /usr/lib/python3/dist-packages/openshot_qt/tests/query_tests.py

		# Create clip
		# cp /usr/lib/python3/dist-packages/openshot_qt/images/AboutLogo.png asset/img/AboutLogo.png
		#clip = openshot.Clip(os.path.join(THE_IMG_DIR_PATH, 'openshot.png'))
		self.clips[1] = openshot.Clip('/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg')


		self.clips[1].Position(5.0)
		self.clips[1].Start(0)
		self.clips[1].End(5)

		return self.clips[1]


	def export(self):


		# $ dpkg -L openshot-qt | grep export
		# /usr/lib/python3/dist-packages/openshot_qt/windows/export.py
		# /usr/lib/python3/dist-packages/openshot_qt/windows/ui/export.ui

		# Set MaxSize (so we don't have any downsampling)
		#self.timeline.SetMaxSize(video_settings.get("width"), video_settings.get("height"))

		# Set lossless cache settings (temporarily)
		export_cache_object = openshot.CacheMemory(250)
		self.timeline.SetCache(export_cache_object)

		export_file_path = THE_EXPORT_FILE_PATH


		#print(self.timeline.Json())

		#sys.exit(0)

		# /usr/share/doc/libopenshot-doc/html/classopenshot_1_1FFmpegWriter.html
		try:
			w = openshot.FFmpegWriter(export_file_path)

			w.SetVideoOptions(
				True,
				"libvpx",
				openshot.Fraction(24,1),
				720,
				480,
				openshot.Fraction(1,1),
				False,
				False,
				300000
			)

			w.SetAudioOptions(
				True,
				"libvorbis",
				44100,
				2,
				3,
				128000
			)

			# Open the writer
			w.Open()


			#240 = 24fps x 10s;
			#300 = 30fps x 10s;
			for frame in range(1, 240):
				w.WriteFrame(self.timeline.GetFrame(frame))

			# Close writer
			w.Close()
		except Exception as e:
			print(e)

	def run(self):

		#print(self.create_clip_1())
		#print(self.create_clip_2())
		self.timeline.AddClip(self.create_clip_1())
		self.timeline.AddClip(self.create_clip_2())

		self.export()

def main():
	app().run()

if __name__ == '__main__':
	main()
