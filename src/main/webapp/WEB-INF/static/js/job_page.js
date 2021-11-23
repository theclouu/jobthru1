var header = document.querySelector('header'),
    mainMenuList = document.querySelectorAll('.mainmenu > li'),
    subMenu = document.querySelectorAll('.subMenu'),
    headerHeight = header.offsetHeight,
    subMenuHeight = 0;

    for(var i = 0; i < subMenu.length; i++){
        if(subMenu[i].offsetHeight > subMenuHeight){
            subMenuHeight = subMenu[i].offsetHeight;
        }
    }

    for(var i = 0; i < mainMenuList.length; i++){
        mainMenuList[i].addEventListener('mouseover', function(){
            subMenuHeight = this.querySelector('ul').offsetHeight;
            header.style.height = headerHeight + subMenuHeight + 'px';
        });
        mainMenuList[i].addEventListener('mouseout', function(){
            header.style.height = headerHeight + 'px';
        });
    }