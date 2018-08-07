window.onload = function() {
	tijiao.onclick = function () {
		var a = document.getElementById('pnone').value;
		var b = document.getElementById('passWord').value;
		if(a == '' || b == '') {
			document.all('submit').disable = true;
			//						alert("提交失败");
		} else {
			window.location.href = "添加页面.html";
		}
	}
    	setInterval(function(){
		var a = document.getElementById('pnone').value;
		var b = document.getElementById('passWord').value;
		if(a == '' || b == '') {
			document.all('submit').disable = true;
			tijiao.style.backgroundColor="#eaeaea";
			//						alert("提交失败");
		} else {
			tijiao.style.backgroundColor="rgb(34,209,142)";
		}
		},1)
	
    
}