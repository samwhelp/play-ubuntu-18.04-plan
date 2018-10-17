#!/usr/bin/env python3


import gi

gi.require_version('Gtk', '3.0')
from gi.repository import Gio, GLib


import argparse

class ImItem:
	name = None
	unique_name = None
	langcode = None
	enable = None


class ImService:

	def get_imlist(self):
		bus = Gio.bus_get_sync(Gio.BusType.SESSION, None)

		res = bus.call_sync(
			bus_name = 'org.fcitx.Fcitx',
			object_path = '/inputmethod',
			interface_name = 'org.freedesktop.DBus.Properties',
			method_name = 'Get',
			parameters = GLib.Variant('(ss)', ('org.fcitx.Fcitx.InputMethod', 'IMList')),
			reply_type = GLib.VariantType('(v)'),
			flags = Gio.DBusCallFlags.NONE,
			timeout_msec = -1,
			cancellable = None
		)

		list = []

		if res != None:
			data = res.unpack()[0]
			for atom in data:
				item = ImItem()
				item.name = atom[0]
				item.unique_name = atom[1]
				item.langcode = atom[2]
				item.enable = atom[3]
				list.append(item)

		return list

	def set_imlist(self, list):
		bus = Gio.bus_get_sync(Gio.BusType.SESSION, None)

		data = []
		for item in list:
			atom = (item.name, item.unique_name, item.langcode, item.enable)
			data.append(atom)

		res = bus.call_sync(
			bus_name = 'org.fcitx.Fcitx',
			object_path = '/inputmethod',
			interface_name = 'org.freedesktop.DBus.Properties',
			method_name = 'Set',
			parameters = GLib.Variant('(ssv)', ('org.fcitx.Fcitx.InputMethod', 'IMList', GLib.Variant('a(sssb)', data))),
			reply_type = GLib.VariantType('()'),
			flags = Gio.DBusCallFlags.NONE,
			timeout_msec = -1,
			cancellable = None
		)

		return self


class ImList:
	im = None

	def __init__ (self):
		self.im = ImService()

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
