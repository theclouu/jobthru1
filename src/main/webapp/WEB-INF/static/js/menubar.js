var nav_header = document.querySelector('.nav_header'),
    mainMenuList = document.querySelectorAll('.mainmenu > li'),
    subMenu = document.querySelectorAll('.subMenu'),
    nav_headerHeight = nav_header.offsetHeight,
    subMenuHeight = 0;

    for(var i = 0; i < subMenu.length; i++){
        if(subMenu[i].offsetHeight > subMenuHeight){
            subMenuHeight = subMenu[i].offsetHeight;
        }
    }
    for(var i = 0; i < mainMenuList.length; i++){
        mainMenuList[i].addEventListener('mouseover', function(){
            nav_header.style.height = nav_headerHeight + subMenuHeight + 'px';
        });
        mainMenuList[i].addEventListener('mouseout', function(){
            nav_header.style.height = nav_headerHeight + 'px';
        });
    }