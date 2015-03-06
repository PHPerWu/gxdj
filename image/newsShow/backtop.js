(function(){
	/**
	 * @author Yaohaixiao
	 */
	/**
	 * @method backTop
	 * @param {String} [btnId] - 按钮的 ID 值 (可选)
	 * @param {Number} [startTop] - 开始显示按钮的高度值（可选）
	 * @param {Number} [scrollSpeed] - 为 IE6 fixed 定位处理的滚动时间间隔 (可选)
	 */
	var backTop = function(btnId, startTop, scrollSpeed){
		var doc = document, isIE = $.browser.msie, version = $.browser.version, isNumber = function(num){
			return typeof num === 'number' && isFinite(num);
		}, // 获得窗口的滚动条滚动距离
 getScrollTop = function(){
			return doc.documentElement.scrollTop || doc.body.scrollTop;
		}, // 设置获得窗口的滚动条滚动距离
 setScrollTop = function(val){
			doc.documentElement.scrollTop = val;
			doc.body.scrollTop = val;
		}, // 默认的按钮
 btnTop = $('#lnk-backtop'), // 默认的显示按钮的滚动距离
 min = 580, // 默认的滚动时间间隔
 speed = 20, timer = null, // 滚动窗口的处理函数
 move = function(){
			var scrollTop = getScrollTop();
			
			// 滚动到窗口顶部就不滚动了，并且释放计时器的资源
			if (scrollTop <= 0) {
				clearInterval(timer);
				return false;
			}
			
			// 滚动窗口
			// scrollTop / 1.1 做了一个简单的滚动缓冲处理
			// 滚动过程看上去不是那么生硬
			setScrollTop(scrollTop / 1.1);
		};
		
		if (btnId) {
			btnTop = $(btnId);
		}
		
		// 没有按钮就跳出程序
		if (!btnTop[0]) {
			console.log('no back button');
			return false;
		}
		
		if (startTop && isNumber(startTop)) {
			min = startTop;
		}
		
		if (scrollSpeed && isNumber(scrollSpeed)) {
			speed = scrollSpeed;
		}
		
		// 监测窗口的滚动
		$(window).scroll(function(){
			var scrollTop = getScrollTop(), // 获得当前窗口可视区域的高度
 viewportHeight = $(window).height();
			
			// 到特定距离显示或隐藏按钮
			scrollTop > min ? btnTop.show() : btnTop.hide();
			
			// 为 IE6（以下）浏览器 hack fixed
			if (isIE && version < 7) {
				setTimeout(function(){
					btnTop.css('top', (viewportHeight + scrollTop - 80) + 'px');
				}, 100);
			}
		});
		
		// 点击按钮开始滚动
		btnTop.click(function(evt){
			timer = setInterval(move, speed);
			
			evt.preventDefault();
			evt.stopPropagation();
		});
	};
	
	backTop();
})();