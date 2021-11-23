/*!
* Start Bootstrap - Freelancer v7.0.4 (https://startbootstrap.com/theme/freelancer)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-freelancer/blob/master/LICENSE)
*/
//
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Navbar shrink function
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };
    

    // Shrink the navbar 
    navbarShrink();

    // Shrink the navbar when page is scrolled
    document.addEventListener('scroll', navbarShrink);

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 72,
        });
    };

    // Collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });
    

});

$(document).ready(function() {
	

	var menu_start = "0";
	$('#mobile_nav').sly({
		horizontal: 1,
		itemNav: 'centered',
		smart: 1,
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		startAt: menu_start,
		speed: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1
    });
	$(window).resize(function(e) {
		$('#mobile_nav').sly('reload');

	});
	

	var menu_start02 = "0";
	var $wrap = $('#mobile_nav02').parent();	//스크롤을 넣고 싶을 경우 삽입
	$('#mobile_nav02').sly({
		horizontal: 1,
		itemNav: 'centered',
		smart: 1,
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		startAt: menu_start02,
		scrollBar: $wrap.find('.scrollbar'),	//스크롤을 넣고 싶을 경우 삽입
		scrollBy: 1,							//스크롤을 넣고 싶을 경우 삽입
		speed: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1
    });
	$(window).resize(function(e) {
		$('#mobile_nav02').sly('reload');

	});

	var menu_start02 = "0";
	var $wrap = $('#mobile_nav03').parent();	//3번
	$('#mobile_nav03').sly({
		horizontal: 1,
		itemNav: 'centered',
		smart: 1,
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		startAt: menu_start02,
		scrollBar: $wrap.find('.scrollbar'),	
		scrollBy: 1,							
		speed: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1
    });
	$(window).resize(function(e) {
		$('#mobile_nav03').sly('reload');

	});

	var menu_start02 = "0";
	var $wrap = $('#mobile_nav04').parent();	//3번
	$('#mobile_nav04').sly({
		horizontal: 1,
		itemNav: 'centered',
		smart: 1,
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		startAt: menu_start02,
		scrollBar: $wrap.find('.scrollbar'),	
		scrollBy: 1,							
		speed: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1
    });
	$(window).resize(function(e) {
		$('#mobile_nav04').sly('reload');

	});
});