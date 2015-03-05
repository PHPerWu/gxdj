/**
 * @update 2013-7-16
 * @modified by: Yaohaixiao
 */
(function(){
	document.writeln("<style>");
	document.writeln(".scrollWin{background:#fff; border-left:solid #D70D0E 3px;border-right:solid #D70D0E 3px; width:250px; position:absolute; right:50px; bottom:100px; display:none; overflow:hidden;z-index:999;}");
	document.writeln(".scrollWin .topArea{background:url(http://www.hubei.gov.cn/images/scrollWin_top_1.gif) left top repeat; margin:0 0;  text-align:center; overflow:hidden; padding:3px 0 0 0;height:26px;*padding:0;*height:26px; cursor:move;}");
	document.writeln(".scrollWin .title{ font-size:12px;color:#fff; margin:0 0 0 3px;height:22px;line-height:22px;cursor:pointer;}");
	document.writeln(".scrollWin .minimize{ position: absolute;right:24px; top:8px; background:url(http://www.hubei.gov.cn/images/2008001y_03.gif) left top no-repeat; width:14px; height:14px; cursor:pointer;}");
	document.writeln(".scrollWin .closewin{position: absolute;right:8px; top:8px; background:url(http://www.hubei.gov.cn/images/2008001y_07.jpg) left top no-repeat; width:14px; height:14px; cursor:pointer;}");
	document.writeln(".scrollWin .scrollWinLink{ line-height:20px;}");
	document.writeln(".scrollWin .middleArea{float:left; display:inline;  padding:0 0 0 0;   height:110px; overflow:hidden;font-size:12px; text-align:center; vertical-align:middle;}");
	document.writeln(".scrollWin .bottomArea{ float:left; width:100%; margin:0 0 3px 0;}");
	document.writeln(".scrollWin .showBtn{ float:right; cursor:pointer; background:url(http://www.hubei.gov.cn/images/2008001y_18.jpg) left top no-repeat; width:57px; height:20px; margin:0 10px 0 8px;}");
	document.writeln(".scrollWin .scrollShowMore{float:right;font-size:12px;color:#797676; margin:-3px 8px 0 0;height:20px;line-height:20px;cursor:pointer;}");
	document.writeln(".scrollWin .bottomArea .time{display:none;}");
	document.writeln(".scrollWin .bottombg{background:url(http://www.hubei.gov.cn/images/scrollWin_bottom_1.gif) left top repeat-x; height:3px; font-size:1px;}");
	document.writeln(".scrollWin .content{ width:92%; height:100%; text-align:left; text-indent:2em; margin:0 0 0 5px;}");
	document.writeln(".scrollWin .middleArea a{ line-height:22px;}");
	document.writeln("</style>");
	
	var scrollWinObj = function(i){
		if (document.getElementById(i)) {
			var X = 120;
			var k = 260;
			var h = 260;
			var l = 57;
			var K = k - 6;
			var V = X;
			var d = document.getElementById(i);
			var Q = document.getElementById("scrollContent");
			var W = document.getElementById("closewin");
			var a = document.getElementById("minimize");
			var J = this;
			var N = false;
			var T = true;
			var I = 0;
			var H = 0;
			var A = true;
			var C = "m";
			var B;
			var D = function(){
				return parseInt(document.documentElement.scrollTop)
			};
			var c = function(){
				return parseInt(document.documentElement.clientWidth)
			};
			var U = function(){
				return parseInt(document.documentElement.clientHeight)
			};
			var R = function(o){
				d.style.left = parseInt(o) + "px"
			};
			var O = function(){
				return parseInt(d.style.left)
			};
			var P = function(o){
				d.style.top = parseInt(o) + "px"
			};
			var M = function(){
				return parseInt(d.style.top)
			};
			var n = function(){
				return m() + 6
			};
			var f = function(){
				return Y() + l
			};
			var j = function(o){
				d.style.width = parseInt(o) + "px"
			};
			var m = function(){
				return parseInt(d.style.width)
			};
			var e = function(o){
				Q.style.height = parseInt(o) + "px";
				d.style.height = parseInt(Q.style.height) + 54 + "px"
			};
			var Y = function(){
				return parseInt(Q.style.height)
			};
			var b = function(o){
				I = o
			};
			var G = function(){
				return I
			};
			var Z = function(o){
				H = o - parseInt(document.documentElement.scrollTop)
			};
			var E = function(){
				return H
			};
			var g = function(){
				return U() - E()
			};
			var L = function(o){
				if (o == 1) {
					N = false;
					T = true;
					a.style.backgroundImage = "url(images/2008001y_05.gif)";
					a.onclick = J.maximize;
					J.setCurrentClickState(0)
				}
				else {
					N = true;
					T = false;
					a.style.backgroundImage = "url(images/2008001y_03.gif)";
					a.onclick = J.minimize;
					J.setCurrentClickState(1)
				}
			};
			var S = function(){
				d.style.display = "none";
				J.setCurrentClickState(-1)
			};
			var F = function(){
				if (isShowWin()) {
					d.style.display = "block"
				}
			};
			this.init = function(){
				if (C == "m") {
					L(0);
					e(V)
				}
				else {
					if (C == "s") {
						L(1);
						e(0)
					}
				}
				j(K);
				var o = c();
				var p = U();
				W.onclick = this.closeWin;
				W.onmousedown = function(q){
					q = q ? q : window.event;
					q.cancelBubble = true
				};
				a.onmousedown = function(q){
					q = q ? q : window.event;
					q.cancelBubble = true
				};
				R(o - k);
				P(p - (l + Y()) + D());
				I = o - k;
				H = p - (l + Y());
				F();
				if (A) {
					d.onmousedown = function(r){
						r = r ? r : window.event;
						var y = r.clientX, x = r.clientY;
						var AB = d.offsetLeft, AA = d.offsetTop;
						var w = y - AB, u = x - AA;
						if (document.addEventListener) {
							document.addEventListener("mousemove", z, true);
							document.addEventListener("mouseup", q, true)
						}
						else {
							if (document.attachEvent) {
								d.setCapture();
								d.attachEvent("onmousemove", z);
								d.attachEvent("onmouseup", q);
								d.attachEvent("onlosecapture", q)
							}
							else {
								var t = document.onmousemove;
								var v = document.onmouseup;
								document.onmousemove = z;
								document.onmouseup = q
							}
						}
						if (r.stopPropagation) {
							r.stopPropagation()
						}
						else {
							r.cancelBubble = true
						}
						if (r.preventDefault) {
							r.preventDefault()
						}
						else {
							r.returnValue = false
						}
						function z(AG){
							if (!AG) {
								AG = window.event
							}
							var AD = AG.clientX - w;
							var AC = AG.clientY - u;
							if (AD >= 0 && ((AD + k) <= c())) {
								R(AD);
								b(AD)
							}
							else {
								if (AD < 0) {
									R(0);
									b(0)
								}
								else {
									var AF = c() - k;
									R(AF);
									b(AF)
								}
							}
							if (AC >= D() && ((AC + f() - D()) <= U())) {
								P(AC);
								Z(AC)
							}
							else {
								if (AC < D()) {
									P(D());
									Z(D())
								}
								else {
									var AE = U() - f() + D();
									P(AE);
									Z(AE)
								}
							}
							if (AG.stopPropagation) {
								AG.stopPropagation()
							}
							else {
								AG.cancelBubble = true
							}
						}
						function q(AC){
							if (!AC) {
								AC = window.event
							}
							if (document.removeEventListener) {
								document.removeEventListener("mouseup", q, true);
								document.removeEventListener("mousemove", z, true)
							}
							else {
								if (document.detachEvent) {
									d.detachEvent("onlosecapture", q);
									d.detachEvent("onmouseup", q);
									d.detachEvent("onmousemove", z);
									d.releaseCapture()
								}
								else {
									document.onmouseup = v;
									document.onmousemove = t
								}
							}
							if (AC.stopPropagation) {
								AC.stopPropagation()
							}
							else {
								AC.cancelBubble = true
							}
						}
					}
				}
				window.onscroll = this.follow;
				window.onresize = this.follow
			};
			this.follow = function(){
				if (G() != 0 || E() != 0) {
					R(G());
					P(D() + E())
				}
				else {
					R(c() - n());
					P(D() + U() - f())
				}
			};
			this.maximize = function(){
				if (T) {
					N = false;
					if (Y() < X) {
						var o = Math.ceil((X - Y()) / 10);
						if (o > E() && E() > 0) {
							o = E()
						}
						if (E() > 0) {
							P(M() - o);
							Z(M())
						}
						e(Y() + o);
						window.setTimeout(J.maximize, 10)
					}
					else {
						N = true;
						L(0)
					}
				}
			};
			this.minimize = function(){
				if (N) {
					T = false;
					if (Y() > 0) {
						var o = Math.ceil((Y()) / 10);
						e(Y() - o);
						P(M() + o);
						Z(M());
						window.setTimeout(J.minimize, 10)
					}
					else {
						if (J.getCurrentClickState() == -1) {
							J.minimize_width()
						}
						else {
							L(1);
							T = true
						}
					}
				}
			};
			this.minimize_width = function(){
				if (m() > 0) {
					var o = Math.ceil((m()) / 10);
					j(m() - o);
					R(O() + o / 2);
					b(O());
					window.setTimeout(J.minimize_width, 10)
				}
				else {
					if (J.getCurrentClickState() == -1) {
						S();
						T = false;
						N = false
					}
				}
			};
			this.getState = function(){
				if (N) {
					return 1
				}
				else {
					if (T) {
						return 0
					}
					else {
						return -1
					}
				}
			};
			this.closeWin = function(){
				J.setCurrentClickState(-1);
				if (J.getState() == 1) {
					J.minimize()
				}
				else {
					if (J.getState() == 0) {
						J.minimize_width()
					}
				}
			};
			this.setCurrentClickState = function(o){
				B = o
			};
			this.getCurrentClickState = function(){
				return B
			};
			
			window.setTimeout(function(){
				J.init()
			}, 1000);
		}
	};
	var s = new scrollWinObj("scrollWin");
})();