window.onload = function() {
	var container = document.getElementById("container");
	var list = document.getElementById("list");
	var buttons = document.getElementById("buttons").getElementsByTagName('span');
	var zuo = document.getElementById("zuo");
	var you = document.getElementById("you");
	var index = 1;
	var timer;

	function showButton() {
		for(var i = 0; i < buttons.length; i++) {
			if(buttons[i].className == 'on') {
				buttons[i].className = '';
				break;
			}
		}
		buttons[index - 1].className = 'on';
	}

	function animate(offset) {
		var newLeft = parseInt(list.style.left) + offset;
		var timer = 1000; //位移总的时间
		var interval = 20; //间隔时间
		var speed = offset / (timer / interval);

		function go() {
			if((speed < 0 && parseInt(list.style.left) > newLeft) || (speed > 0 && parseInt(list.style.left) < newLeft)) {
				list.style.left = parseInt(list.style.left) + speed + 'px';
				setTimeout(go, interval);
			} else {
				list.style.left = newLeft + 'px';
				if(newLeft > -1519) {
					list.style.left = -7595 + 'px';
				}
				if(newLeft < -7595) {
					list.style.left = -1519 + 'px';
				}
			}
		}
		go();
	}

	function play() {
		timer = setInterval(function() {
			you.onclick();
		}, 3000);
	}

	function stop() {
		clearInterval(timer);
	}

	you.onclick = function() {
		if(index == 5) {
			index = 1;
		} else {
			index += 1;
		}
		showButton();
		animate(-1519);
	}
	zuo.onclick = function() {
		if(index == 1) {
			index = 5;
		} else {
			index -= 1;
		}
		showButton();
		animate(1519);
	}
	for(var i = 0; i < buttons.length; i++) {
		buttons[i].onclick = function() {
			if(this.className == index) {
				return;
			}
			var myIndex = parseInt(this.getAttribute('index')); //获得自定义属性
			var offSet = -1519 * (myIndex - index);
			animate(offSet);
			index = myIndex;
			showButton();
		}
	}
	container.onmouseover = stop();
	container.onmouseout = play();
	var images = document.getElementsByClassName('tupain');
	var a = 0;
	var b = images.length;
	setInterval(function() {
		images[a].style.display = 'none';
		a = ++a == b ? 0 : a;
		images[a].style.display = 'inline';
	}, 1000);
}