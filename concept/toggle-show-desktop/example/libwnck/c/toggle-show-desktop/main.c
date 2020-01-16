

#include <libwnck/libwnck.h>


int
main (
	int argc,
	char **argv
) {

	gboolean show;
	WnckScreen * wnck_screen;

	gdk_init(&argc, &argv);

	wnck_screen = wnck_screen_get_default();

	wnck_screen_force_update(wnck_screen);

	show = wnck_screen_get_showing_desktop(wnck_screen);

	wnck_screen_toggle_showing_desktop(wnck_screen, !show);

	return 0;
}
