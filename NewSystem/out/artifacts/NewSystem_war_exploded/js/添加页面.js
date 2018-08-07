	window.onload=function(){
	    		fabu.onmouseover=function(){
	    			document.getElementById('fabu').innerHTML="点击创建";
	    			var a=document.getElementById('fabu');
	    			a.style.backgroundColor="#44A0FF";
	    		}
	    		fabu.onmouseout=function(){
	    			document.getElementById('fabu').innerHTML="创建新闻";
	    			var a=document.getElementById('fabu');
	    			a.style.backgroundColor="#EAEAEA";
	    		}
	    		fabu.onclick=function(){
	    			window.location.href = "addnews.jsp";
	    		}
	    	}