#!/usr/bin/env python3

import sys, os

## print(os.path.realpath(__file__))

THE_BASE_DIR_PATH = os.path.dirname(os.path.realpath(__file__))
THE_ASSET_DIR_PATH = os.path.join(THE_BASE_DIR_PATH, 'asset')
THE_IMG_DIR_PATH = os.path.join(THE_ASSET_DIR_PATH, 'img')

#print(THE_BASE_DIR_PATH)
#pritn(THE_ASSET_DIR_PATH)
#print(THE_IMG_DIR_PATH)


import openshot
import json
import pprint;

def main():

	# $ dpkg -L openshot-qt | grep test
	# /usr/lib/python3/dist-packages/openshot_qt/tests/query_tests.py

	# Create clip
	# cp /usr/lib/python3/dist-packages/openshot_qt/images/AboutLogo.png asset/img/AboutLogo.png
	#clip = openshot.Clip(os.path.join(THE_IMG_DIR_PATH, 'AboutLogo.png'))
	clip = openshot.Clip('/usr/share/backgrounds/Spices_in_Athens_by_Makis_Chourdakis.jpg')


	# Parse JSON
	clip_data = json.loads(clip.Json())

	#print(clip_data)

	pp = pprint.PrettyPrinter(indent=2);
	pp.pprint(clip_data)


if __name__ == '__main__':
	main()
