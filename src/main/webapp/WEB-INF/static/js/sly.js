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