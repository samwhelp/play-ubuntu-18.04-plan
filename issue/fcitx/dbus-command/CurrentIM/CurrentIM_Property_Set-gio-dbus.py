#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '3.0')

from gi.repository import Gio, GLib

bus = Gio.bus_get_sync(Gio.BusType.SESSION, None)

args = 'chewing'

res = bus.call_sync(
	bus_name = 'org.fcitx.Fcitx',
	object_path = '/inputmethod',
	interface_name = 'org.freedesktop.DBus.Properties',
	method_name = 'Set',
	parameters = GLib.Variant('(ssv)', ('org.fcitx.Fcitx.InputMethod', 'CurrentIM', GLib.Variant('s', args))),
	reply_type = GLib.VariantType('()'),
	flags = Gio.DBusCallFlags.NONE,
	timeout_msec = -1,
	cancellable = None
)

if res != None:
	print(res)
