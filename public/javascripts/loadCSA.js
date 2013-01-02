var loadCSA = function(filePath) {
    httpObj = new XMLHttpRequest();
    // httpObj.open('GET', filePath, true);
    httpObj.open('GET', filePath + "?" +(new Date()).getTime(), true);
    // ?以降はキャッシュされたファイルではなく、毎回読み込むためのもの
    httpObj.send(null);
    httpObj.onreadystatechange = function(){
	if ( (httpObj.readyState == 4) && (httpObj.status == 200) ){
            document.getElementById("csa").innerHTML = httpObj.responseText;
	    //makeBoard("board", "csa");
	}
    }
}

