window.onload = function() {
       
	zhuce.onclick = function() {
		var a = document.getElementById('pnone').value;
		var b = document.getElementById('passWord').value;
		var c = document.getElementById('yanzheng').value;
		if(a == '' || b == '' || c == '') {
			document.all('submit').disable = true;
			//						alert("提交失败");
		}else if(c!=code){
			document.all('submit').disable = true;
     		alert("验证码有误");
     	}else{
     		alert("注册成功");
     		window.location.href = "login.jsp";
     	}
	}
	
	setInterval(function() {
		var a = document.getElementById('pnone').value;
		var b = document.getElementById('passWord').value;
		var c = document.getElementById('yanzheng').value;
		if(a == '' || b == '' || c == '') {
			document.all('submit').disable = true;
			zhuce.style.backgroundColor = "#eaeaea";
			//						alert("提交失败");
		} else {
			zhuce.style.backgroundColor = "rgb(34,209,142)";
		}
	}, 1)
    var code;
    num1.onclick=function Code(){
    	var d=document.getElementById('num1').value;
    	num1.style.backgroundColor="rgb(34,209,142)";
    	num1.style.color="#fff";
    	
    	code="";
    	var codeLength=4;
    	var random=new Array(0,1,2,3,4,5,6,7,8,9);
    	for (var i=0;i<codeLength;i++) {
    		var index = Math.floor(Math.random()*10);
    		code += random[index];
    	}
    	document.getElementById('num1').innerHTML= code;
    }}