function del(url){
		if(confirm("确定要删除吗?")){
			location.href=url;
		}
	}

function time(){
	var time_date=new Date();
	var date = document.getElementById("times").innerHTML = time_date.toLocaleString();
	}
function date_present(){
	setInterval("time()",1000);
	
	
}


