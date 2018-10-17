#!/usr/bin/env python3


import gi

gi.require_version('Gtk', '3.0')
from gi.repository import Gio

gi.require_version('Fcitx', '1.0')
from gi.repository import Fcitx


import argparse


class ImList:
	im = None

	def __init__ (self):
		self.im = Fcitx.InputMethod.new(Gio.BusType.SESSION, Gio.DBusProxyFlags.NONE, 0, None)

	def enableIm (self, name):
		list = self.im.get_imlist()
		for item in list:
			if item.unique_name == name:
				item.enable = True
				break

		self.im.set_imlist(list)

	def disableIm (self, name):
		list = self.im.get_imlist()
		for item in list:
			if item.unique_name == name:
				item.enable = False
				break

		self.im.set_imlist(list)

	def findAll (self):
		list = self.im.get_imlist()
		for item in list:
			print("{name} : {status}".format(name=item.unique_name, status=item.enable))


	def isValidIm (self, name):
		list = self.im.get_imlist()
		for item in list:
			if item.unique_name == name:
				return True

		return False


def main():
	# https://docs.python.org/3/library/argparse.html
	parser = argparse.ArgumentParser(description='Fcitx im list')

	# https://docs.python.org/3/library/argparse.html#argparse.ArgumentParser.add_argument
	parser.add_argument(
		'-e',
		'--enable',
		metavar='im',
		nargs=1,
		help='Enable im'
	)

	parser.add_argument(
		'-d',
		'--disable',
		metavar='im',
		nargs=1,
		help='Disable im'
	)

	# https://docs.python.org/3/library/argparse.html#nargs
	parser.add_argument(
		'-l',
		'--list',
		nargs=argparse.REMAINDER,
		help='Display im list'
	)


	args = parser.parse_args()

	# https://docs.python.org/3/library/argparse.html#the-namespace-object
	# https://docs.python.org/3/library/functions.html#vars
	#print(vars(args))

	if args.list != None:
		#print('do list')
		imlist = ImList()
		imlist.findAll()

	elif args.enable != None:
		#print('do enable')
		imlist = ImList()
		imname = args.enable[0]
		if imlist.isValidIm(imname):
			imlist.enableIm(imname)
		else:
			print("invalid im name: {name}".format(name=imname))

	elif args.disable != None:
		#print('do disable')
		imlist = ImList()
		imname = args.disable[0]
		if imlist.isValidIm(imname):
			imlist.disableIm(imname)
		else:
			print("invalid im name: {name}".format(name=imname))

	else:
		parser.print_help()

if __name__ == '__main__':
	main()
