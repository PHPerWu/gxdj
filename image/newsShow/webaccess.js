/*!
 * jQuery Cookie Plugin
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2011, Klaus Hartl
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.opensource.org/licenses/GPL-2.0
 */
jQuery.cookie = function(key, value, options){

	// key and at least value given, set cookie...
	if (arguments.length > 1 && (!/Object/.test(Object.prototype.toString.call(value)) || value === null || value === undefined)) {
		options = $.extend({}, options);
		
		if (value === null || value === undefined) {
			options.expires = -1;
		}
		
		if (typeof options.expires === 'number') {
			var days = options.expires, t = options.expires = new Date();
			t.setDate(t.getDate() + days);
		}
		
		value = String(value);
		
		// use expires attribute, max-age is not supported by IE
		return (document.cookie = [encodeURIComponent(key), '=', options.raw ? value : encodeURIComponent(value), options.expires ? '; expires=' + options.expires.toUTCString() : '', options.path ? '; path=' + options.path : '', options.domain ? '; domain=' + options.domain : '', options.secure ? '; secure' : ''].join(''));
	}
	
	// key and possibly options given, get cookie...
	options = value || {};
	var decode = options.raw ? function(s){
		return s;
	} : decodeURIComponent;
	
	var i = 0;
	var pairs = document.cookie.split('; ');
	for (var pair; pair = pairs[i] && pairs[i].split('='); i++) {
		if (decode(pair[0]) === key) {
			// IE saves cookies with empty string as "c; ", e.g. without "=" as opposed to EOMB, thus pair[1] may be undefined
			return decode(pair[1] || '');
		}
	}
	return null;
};

(function(){
	var head = $($('head')[0]), 
	    body = $(document.body), 
		wraps = $('div'),
		firstWrap =  $($('.w_top')[0]),
		mainBlocks = null, 
		imgs = null, 
		allElements = null, 
		
		cssLinks = $('link'),
		cssStyles = $('style'),
		cssAccLink = cssAccLink = $('<link/>').attr({
			'id': 'web-access-style',
			'href': 'http://www.hubei.gov.cn/css/webaccessbility.css',
			'rel': 'stylesheet',
			'type': 'text/css',
			'media': 'all'
		}), 
		
		btnTxt = null, 
		btnPageZoomOut = null, 
		btnPageZoomIn = null, 
		btnFontZoomOut = null, 
		btnFontZoomIn = null, 
		btnHighlight = null, 
		btnHelpline = null, 
		btnIntro = null, 
		btnReset = null, 
		btnClose = null, 
		
		lineX = null, 
		lineY = null, 
		
		isToolBar = $.cookie('toolbar'), 
		isTextMode = $.cookie('textMode'), 
		isPageZoom = $.cookie('pageZoom'), 
		isFontSize = $.cookie('fontSize'), 
		isHighLight = $.cookie('highLight'), 
		isHelpLine = $.cookie('helpLine'), 
		
		maxFontSize = 20, 
		minFontSize = 12, 
		maxPageZoom = 2, 
		minPageZoom = 1, 
		
		lnkAccess =  $('<a></a>').attr({
				'id': 'web-accessibility',
				'href': 'javascript:void(0);'
			}).text('无障碍阅读').css({
				'position': 'absolute',
				'z-index': 2,
				'top': '10px',
				'right': '145px',
				'width': '72px',
				'height': '26px',
				'line-height': '26px',
				'font-size': '12px',
				'color': 'orange'
			}),
		
		toolbar = null, 
		toolbarHTML = '<button type="button" class="toolbutton" id="btntoolbartxt">纯文本通道</button><button type="button" class="toolbutton" id="btntoolbarpagezoomout">页面放大</button><button type="button" class="toolbutton" id="btntoolbarpagezoomin">页面缩小</button><button type="button" class="toolbutton" id="btntoolbarfontzoomout">文字放大</button><button type="button" class="toolbutton" id="btntoolbarfontzoomin">文字缩小</button><button type="button" class="toolbutton" id="btntoolbarhighlight">高对比度</button><button type="button" class="toolbutton" id="btntoolbarhelpline">开启辅助线</button><button type="button" class="toolbutton" id="btntoolbarreset">重置</button><button type="button" class="toolbutton" id="btntoolbarclose">关闭</button>', 
		
		showToolBar = function(){ 
		    var isIE = $.browser.msie, styleAccess = document.getElementById('web-access-style');
			
			if(!styleAccess){
		        if (isIE && isIE < 9) {
				    cssAccLink = document.createStyleSheet('http://www.hubei.gov.cn/css/webaccessbility.css');
			    }
			}
			else{
			    if(styleAccess){
                    cssAccLink = $(styleAccess);
				} 
			}
		    
			toolbar = $('<div></div>').attr('id', 'web-access-toolbar'); 
			
			// 添加无障碍样式表
			head.append(cssAccLink);	
			
			// 调整第一个 DIV 的位置
			firstWrap.addClass('first-wrap');
			
			// 在页面添加工具栏
			toolbar.html(toolbarHTML);
			toolbar.insertBefore(firstWrap);
			
			$.cookie('toolbar', 'toolbar');
			
			getButtons();
			
			bind();
		}, 
		getButtons = function(){
			btnTxt = $('#btntoolbartxt');
			btnPageZoomOut = $('#btntoolbarpagezoomout');
			btnPageZoomIn = $('#btntoolbarpagezoomin');
			btnFontZoomOut = $('#btntoolbarfontzoomout');
			btnFontZoomIn = $('#btntoolbarfontzoomin');
			btnHighLight = $('#btntoolbarhighlight');
			btnHelpLine = $('#btntoolbarhelpline');
			btnReset = $('#btntoolbarreset');
			btnClose = $('#btntoolbarclose');
		}, 
		switchTextMode = function(evt){
			var isTextMode = $.cookie('textMode');
			
			if (!isTextMode) {
				setTextMode();
			}
			else {
				resetTextMode();
			}
		}, 
		setTextMode = function(){
			var isToolBar = $.cookie('toolbar');
			
			if (!isToolBar) {
				showToolBar();
			}
			
			imgs = $('img');
			mainBlocks = wraps.find('div'); 
			
			cssLinks.remove();
			cssStyles.remove();
			
			wraps.addClass('text-mode')
			mainBlocks.addClass('text-mode');
			imgs.css('display', 'none');
			btnTxt.html('切换为可视模式');
			
			// 调整第一个 DIV 的位置
			firstWrap.removeClass('first-wrap').addClass('first-wrap');
			
			$.cookie('textMode', 'textMode');
		}, 
		resetTextMode = function(){
			// cssLinks.insertBefore(cssAccLink);
			// cssStyles.insertBefore(cssAccLink);
			
			// wraps.removeClass('text-mode')
			// mainBlocks.removeClass('text-mode');
			// imgs.css('display', 'block');
			btnTxt.html('纯文本通道');
			
			$.cookie('textMode', '');
			window.location.reload();
		}, 
		pageZoomOut = function(evt){
			var curPageZoom = $.cookie('pageZoom') * 1 || minPageZoom;
			
			if (curPageZoom < maxPageZoom) {
				curPageZoom += 0.1;
				
				pageZoom(curPageZoom);
			}
		}, 
		pageZoomIn = function(evt){
			var curPageZoom = $.cookie('pageZoom') * 1 || minPageZoom;
			
			if (curPageZoom > minPageZoom) {
				curPageZoom -= 0.1;
				
				pageZoom(curPageZoom);
			}
		}, 
		fontZoomOut = function(evt){
			var curFontSize = parseInt($.cookie('fontSize'), 10) || minFontSize;
			
			if (curFontSize < maxFontSize) {
				curFontSize += 1;
				
				fontZoom(curFontSize);
			}
		}, 
		fontZoomIn = function(evt){
			var curFontSize = parseInt($.cookie('fontSize'), 10) || minFontSize;
			
			if (curFontSize > minFontSize) {
				curFontSize -= 1;
				
				fontZoom(curFontSize);
			}
		}, 
		switchHighLightMode = function(evt){
			var isHighLight = $.cookie('highLight');
			
			if (!isHighLight) {
				setHighLight();
			}
			else {
				resetHighLight();
			}
		}, 
		setHighLight = function(){
			var isToolBar = $.cookie('toolbar');
			
			if (!isToolBar) {
				showToolBar();
			}
			
			allElements = wraps.find('*');
			
			body.addClass('highlight');
			wraps.addClass('highlight');
			allElements.addClass('highlight');
			
			btnHighLight.html('还原对比度');
			
			$.cookie('highLight', 'highLight');
		}, 
		resetHighLight = function(){
			allElements = wraps.find('*');
			
			body.removeClass('highlight');
			wraps.removeClass('highlight');
			allElements.removeClass('highlight');
			
			btnHighLight.html('高对比度');
			
			$.cookie('highLight', '');
		}, 
		switchHelpLine = function(evt){
			var isHelpLine = $.cookie('helpLine');
			
			if (!isHelpLine) {
				setHelpLine();
			}
			else {
				resetHelpLine();
			}
		}, 
		setHelpLine = function(){
			var isToolBar = $.cookie('toolbar');
			
			if (!isToolBar) {
				showToolBar();
			}
			
			lineX = $('<div></div>').addClass('line-x'); 
		    lineY = $('<div></div>').addClass('line-y'); 
			
			body.append(lineX).append(lineY);
			lineY.css('height', body.height() + 'px');
			
			$(body).on('mouserover', positionLine);
			$(body).on('mousemove', positionLine);
			
			btnHelpLine.html('关闭辅助线');
			
			$.cookie('helpLine', 'helpLine');
		}, 
		resetHelpLine = function(){
			$(body).off('mouserover', positionLine);
			$(body).off('mousemove', positionLine);
			
			lineX.remove();
			lineY.remove();
			
			btnHelpLine.html('开启辅助线');
			
			$.cookie('helpLine', '');
		}, 
		reset = function(evt){
			$.cookie('toolbar', '');
			$.cookie('textMode', '');
			$.cookie('pageZoom', '');
			$.cookie('fontSize', '');
			$.cookie('highLight', '');
			$.cookie('helpLine', '');
			
			window.location.reload();
		}, 
		closeToolBar = function(evt){
			toolbar.remove();
			firstWrap.removeClass('first-wrap');
			
			$.cookie('toolbar', '');
		}, 
		bind = function(){
			btnTxt.click(switchTextMode);
			
			btnPageZoomOut.click(pageZoomOut);
			btnPageZoomIn.click(pageZoomIn);
			
			btnFontZoomOut.click(fontZoomOut);
			btnFontZoomIn.click(fontZoomIn);
			
			btnHighLight.click(switchHighLightMode);
			
			btnHelpLine.click(switchHelpLine);
			
			btnReset.click(reset);
			
			btnClose.click(closeToolBar);
		}, 
		pageZoom = function(value){
			var browser = $.browser,
			    isToolBar = $.cookie('toolbar');
			
			if (!isToolBar) {
				showToolBar();
			}
			
			if (browser.webkit) {
				body.css({
					'-webkit-transform-origin': 'top left',
					'-webkit-transform': 'scale(' + value + ')'
				});
			}
			else {
				if (browser.mozilla) {
					body.css({
						'-moz-transform-origin': 'top left',
						'-moz-transform': 'scale(' + value + ')'
					});
				}
				else {
					if (browser.opera) {
						body.css({
							'-o-transform': 'scale(' + value + ')'
						});
					}
					else {
						if (browser.msie) {
							body.css('zoom', value);
						}
					}
				}
			}
			
			$.cookie('pageZoom', value);
		}, 
		fontZoom = function(value){
			var isToolBar = $.cookie('toolbar');
			
			if (!isToolBar) {
				showToolBar();
			}
			
			allElements = wraps.find('*');
			
			$(allElements).css('font-size', value);
			
			$.cookie('fontSize', value);
		}, 
        positionLine = function(evt){
            var pageX = evt.pageX, pageY = evt.pageY;
            
            lineX.css('top', (pageY + 10) + 'px');
            lineY.css('left', (pageX + 10) + 'px')
        };
		
     /**
      * @author Yaohaixiao
      */
    jQuery.webAccess = function(){
		if ($('.zw_zw').length < 1) {
			return false;
		}
		
		setTimeout(function(){
			var lnkWZA = document.getElementById('web-accessibility');

			if(!lnkWZA){
			    lnkAccess.insertBefore($('.zw_zw'));
			}
			else{
				if (lnkWZA) {
					lnkAccess = $(lnkWZA);
				}
			}
    
			if (isToolBar) {
				showToolBar();
			}
			
			if (isTextMode) {
				setTextMode();
			}
			
			if (isPageZoom && parseFloat(isPageZoom, 10) > 1) {
				pageZoom(parseFloat(isPageZoom, 10));
			}
			
			if (isFontSize && parseInt(isFontSize, 10) > 12) {
				fontZoom(parseInt(isFontSize, 10));
			}
			
			if (isHighLight) {
				setHighLight();
			}
			
			if (isHelpLine) {
				setHelpLine();
			}
			
			lnkAccess.click(function(evt){
				if (!isToolBar) {
					showToolBar();
				}
				
				evt.preventDefault();
				evt.stopPropagation();
			});
		}, 4000);
	};	
})();

jQuery.webAccess();