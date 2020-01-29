#!/usr/bin/env python3


import sys, os
## print(os.path.realpath(__file__))
THE_BASE_DIR_PATH = os.path.dirname(os.path.realpath(__file__))
THE_ASSET_DIR_PATH = os.path.join(THE_BASE_DIR_PATH, 'asset')
THE_IMG_DIR_PATH = os.path.join(THE_ASSET_DIR_PATH, 'img')
#print(THE_BASE_DIR_PATH)
#pritn(THE_ASSET_DIR_PATH)
#print(THE_IMG_DIR_PATH)


import json
import pprint;


## Package: [python3-openshot](https://packages.ubuntu.com/bionic/python3-openshot)
import openshot


class app():

	def __init__(self):

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

	def run(self):

		# $ dpkg -L openshot-qt | grep test
		# /usr/lib/python3/dist-packages/openshot_qt/tests/query_tests.py

		# Create clip
		# cp /usr/lib/python3/dist-packages/openshot_qt/images/AboutLogo.png asset/img/AboutLogo.png
		#clip = openshot.Clip(os.path.join(THE_IMG_DIR_PATH, 'AboutLogo.png'))
		clip = openshot.Clip('/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg')


		clip.Position(0)
		clip.Start(0)
		clip.End(5)


		# Parse JSON
		clip_data = json.loads(clip.Json())
		#print(clip_data)

		pp = pprint.PrettyPrinter(indent=2);
		pp.pprint(clip_data)

		print()
		print('================================================================================')
		print()

		self.timeline.AddClip(clip)
		print(self.timeline.Json())



def main():
	app().run()

if __name__ == '__main__':
	main()
