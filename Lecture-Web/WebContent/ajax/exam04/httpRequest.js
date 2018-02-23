/**
 * Ajax 통신을 위한 함수 구현
 */

var httpRequest = null;


function getXMLHttpRequest() {
	if (window.XMLHttpRequest) {
		httpRequest = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		httpRequest = new ActiveXObjext("Microsoft.XMLHTTP");
	} else
		httpRequest = null;

	return httpRequest;
}


function sendRequest(method, url, params, callback){
	httpRequest = getXMLHttpRequest();
	
	httpRequest.onreadystatechange = callback;
	
	var httpMethod = method; //get이나 post방식 둘 중 하나 가진 것
		if(method != 'GET' && method !='POST'){
			httpMethod = 'GET';
		}//GET이나 POST 둘 다 아닌 다른 게 쓰이면 GET방식을 쓰게 하겠다는 것 
		
	var httpParams = params; //param방식으로 올 때는 이렇게 그냥 오면 돼 
	//	name=swan&age=29&addr=byeolnae
	//	name:'정수환', age:29, addr: '별내의 11층'
		if(params != null && params != ''){
			for(var key in params){
				//params에서 속성만 뽑아내는  포문
				if(httpParams != ''){
				httpParams += '&';
				}
			httpParams += key + '=' + encodeURIComponent(params[key]);
			}
		}
	
	
	
	alert(httpParams);
	
	
	var httpUrl = url;
	 if(httpMethod == 'GET' && (httpParams != '' && httpParams != null)){
		 httpUrl = httpUrl + '?' + httpParams;
		 //post일 때는 주소는 그냥 그대로 날아오니까 그냥 두면 된다.
	 }
	 
	 httpRequest.open(httpMethod, httpUrl, true);
	 
	 if(httpMethod == 'POST'){
		 httpRequest.setRequestHeader(
				 'Content-type', 'application/x-www-form-urlencoded'
		 );	 
				 
	 }
	 
	 httpRequest.send(httpMethod == 'GET' ? null : httpParams);
	 
}