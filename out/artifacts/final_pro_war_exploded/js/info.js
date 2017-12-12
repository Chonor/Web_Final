// JavaScript Document

function onmovestart(pos){
	obj = document.getElementsByName("real_star");
    for(var i=0;i<pos;i++){
       	obj[i].className="fa fa-star";
    }
	for(var i=pos;i<obj.length;i++){
        obj[i].className="fa fa-star-o";
    }
	obj1=document.getElementsByName("level");
	obj1[pos-1].checked="checked";	
}
function star_add(pos,cnt){
	var star_="<i class='fa fa-star'></i>"
	var out="";
	obj = document.getElementsByName("star_add");
	for(var i=0;i<cnt;i++){
		out=out+star_;
	}
	obj[pos].innerHTML=out;	
}