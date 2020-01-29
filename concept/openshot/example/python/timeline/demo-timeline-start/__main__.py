#!/usr/bin/env python3

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

		print(self.timeline.Json())

		# Open the timeline reader
		self.timeline.Open()

		#print(self.timeline.Json())

def main():
	app()

if __name__ == '__main__':
	main()
