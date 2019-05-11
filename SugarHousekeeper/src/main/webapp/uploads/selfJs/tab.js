
var minIH = $(window).height()-55;

$("#iframe0").css("height",minIH+"px");


$(function(){
  /* 页签相关事件 */
  $('.J_menuTabs').on('click', '.J_menuTab i', closeTab);
  $('.J_menuTabs').on('click', '.J_menuTab', activeTab);


});
function closeTab() { 
    var closeTabId = $(this).parents('.J_menuTab').data('id');
    /*var currentWidth = $(this).parents('.J_menuTab').width();*/

    // 当前元素处于活动状态
    if ($(this).parents('.J_menuTab').hasClass('active')) {

        // 当前元素后面有同辈元素，使后面的一个元素处于活动状态
        if ($(this).parents('.J_menuTab').next('.J_menuTab').size()) {

            var activeId = $(this).parents('.J_menuTab').next('.J_menuTab:eq(0)').data('id');
            $(this).parents('.J_menuTab').next('.J_menuTab:eq(0)').addClass('active'); 
            $('#main-container .J_iframe').each(function () {
                if ($(this).data('id') == activeId) {
                    $(this).show().siblings('.J_iframe').hide();
                    return false;
                }
            });

            /*var marginLeftVal = parseInt($('.page-tabs-content').css('margin-left'));
            if (marginLeftVal < 0) {
                $('.page-tabs-content').animate({
                    marginLeft: (marginLeftVal + currentWidth) + 'px'
                }, "fast");
            }*/

            //  移除当前选项卡
            $(this).parents('.J_menuTab').remove();

            // 移除tab对应的内容区
            $('#main-container .J_iframe').each(function () {
                if ($(this).data('id') == closeTabId) {
                    $(this).remove();
                    return false;
                }
            });
        }

        // 当前元素后面没有同辈元素，使当前元素的上一个元素处于活动状态
        if ($(this).parents('.J_menuTab').prev('.J_menuTab').size()) {
            var activeId = $(this).parents('.J_menuTab').prev('.J_menuTab:last').data('id');
            $(this).parents('.J_menuTab').prev('.J_menuTab:last').addClass('active');
            $('#main-container .J_iframe').each(function () {
                if ($(this).data('id') == activeId) {
                    $(this).show().siblings('.J_iframe').hide();
                    return false;
                }
            });

            //  移除当前选项卡
            $(this).parents('.J_menuTab').remove();

            // 移除tab对应的内容区
            $('#main-container .J_iframe').each(function () {
                if ($(this).data('id') == closeTabId) {
                    $(this).remove();
                    return false;
                }
            });
        }
    }
    // 当前元素不处于活动状态
    else {
        //  移除当前选项卡
        $(this).parents('.J_menuTab').remove();

        // 移除相应tab对应的内容区
        $('#main-container .J_iframe').each(function () {
            if ($(this).data('id') == closeTabId) {
                $(this).remove();
                return false;
            }
        });
        // scrollToTab($('.J_menuTab.active'));
    }

    // scrollToTab($('.J_menuTab.active'));
    return false;
}

// 点击选项卡菜单
function activeTab() {
    if (!$(this).hasClass('active')) {
        var currentId = $(this).data('id');
        // 显示tab对应的内容区
        $('#main-container .J_iframe').each(function () {
            if ($(this).data('id') == currentId) {
              //显示当前iframe,隐藏其他iframe
                $(this).show().siblings('.J_iframe').hide();
                return false;
            }
        });
        $(this).addClass('active').siblings('.J_menuTab').removeClass('active');
        //scrollToTab(this);
    }
}

//一级菜单点击事件
function doMenuGroupClick(){
    $(this).find("ul").addClass("menu-open");
}
function doMenuClick(obj){  
    var funHref = $(obj).attr("fun-href");   
    if(""==funHref || typeof(funHref) == "undefined"){
        return;
    }
    var curTagid = $(obj).attr("fun-label");
    var funTarget = "";
    var nodeId = $(obj).attr("id");
    openFun(funHref, funTarget,curTagid,nodeId);
    return false;
}
//打开功能
function openFun(url,target,funName,nodeId,targetUrl){ 
  //处理访问地址
  
  var dataUrl = swrapUrl(url, target); 
  if(""==dataUrl){ return; }
  
    //滚动条置顶
    $("html, body").scrollTop(0);
   
    //1. 以新页面的方式打开
    if("_blank"==target){
      window.open(dataUrl);
      return;
    }
    //2. 页面内套页签的方式打开
    var flag = true;//页签是否存在标记
    var menuName =  funName;//功能名称  
    // 选项卡菜单已存在
    $('.J_menuTab').each(function () {
        if ($(this).data('id') == dataUrl) {
            if (!$(this).hasClass('active')) {
                $(this).addClass('active').siblings('.J_menuTab').removeClass('active');
                // scrollToTab(this);
                // 显示tab对应的内容区
                $('#main-container .J_iframe').each(function () {
                    if ($(this).data('id') == dataUrl) {
                        $(this).show().siblings('.J_iframe').hide();
                        return false;
                    }
                });
            }
            flag = false;
            return false;
        }
    });  
    var Tablength = $(".J_menuTab").length;  
    if(Tablength >= 9 && flag == true){ 
        $('.J_menuTab').each(function () { 
            if ($(this).data('id') == dataUrl) {
                if (!$(this).hasClass('active')) {
                    $(this).addClass('active').siblings('.J_menuTab').removeClass('active');
                    // scrollToTab(this);
                    // 显示tab对应的内容区
                    $('#main-container .J_iframe').each(function () {
                        if ($(this).data('id') == dataUrl) {
                            $(this).show().siblings('.J_iframe').hide();
                            return false;
                        }
                    });
                } 
                return false;
            }else{
                alert("菜单超了！！！"); 
                return false;
            }
            return;
        }); 
    }else{  
        // 选项卡菜单不存在
        if (flag) {
            var str = '<a href="javascript:;" class="active J_menuTab" data-id="' + dataUrl + '">' + menuName + ' <i class="fa fa-times-circle"></i></a>';
            $('.J_menuTab').removeClass('active');

            var minH = $(window).height()-55;
            // 添加选项卡对应的iframe
            var str1 = '<iframe class="J_iframe" id="iframe' + nodeId + '" name="iframe' + nodeId + '" style="width:100%; height:100%; min-height:'+minH+'px" src="' + dataUrl + '" frameborder="0" data-id="' + dataUrl + '" seamless></iframe>';
            $('#main-container').find('iframe.J_iframe').hide().parents('#main-container').append(str1);
            // 添加选项卡
            $('.J_menuTabs .page-tabs-content').append(str);
            //scrollToTab($('.J_menuTab.active'));
        }

    }  
    //目标请求地址
    /*if(null!=targetUrl && ""!=targetUrl){
      $('#iframe' + nodeId).attr("src",targetUrl);
    }*/
}
//处理访问地址
function swrapUrl(url, target){

  if(""==url){return "";}
  if(url.indexOf("http")!=0 && url.indexOf("..")!=0){//如果url不是"http"或".."开头
    //url = "../"+url;
    url = url;
  } 
  return url;
}

// console.log($(window).height());
// var min = document.documentElement.clientHeight;
// // console.log(body.clientHeight);
// console.log(window.screen.height);
// console.log(document.body.clientHeight);

