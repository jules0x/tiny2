DO.Subscribe('app:ready', function (e, $) {
	'use strict';

	var menu = $('[data-menu]'),
		menuToggle = $('[data-menu-toggle]'),
		menuList = $('[data-menu-list]');

	function init() {
		attachEvents();
	}

	function attachEvents() {
		menuToggle.on('click', function (e) {
			menuToggle.toggleClass('hamburger--active');
			if (menu.hasClass('menu--open')) {
				closeMenu(menu);
			} else {
				menu.height(menuList.outerHeight());
				menu.addClass('menu--open');
			}
		});
	}

	init();
});

DO.Subscribe('app:breakpointchangetodesktop', function (e, $) {
	'use strict';

	var menu = $('[data-menu]');

	function init() {
		closeMenu(menu);
	}

	init();
});

function closeMenu(menu) {
	menu.removeClass('menu--open');
	menu.removeAttr('style');
}
