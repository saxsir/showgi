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

var readCSA = function(evt) {
    // Check for the various File API support.
    if (window.File && window.FileReader && window.FileList && window.Blob) {
	var files = evt.target.files;
	var reader = new FileReader();
	for (var i = 0; i < files.length; i++) {
	    var f = files[i];
	    // ファイル読取が完了した際に呼ばれる処理
            reader.onload = function (evt) {
		// FileReaderが取得したテキストをそのままdivタグに出力
		document.getElementById("kifu_csa").value = reader.result;
            }
            // readAsTextメソッドでファイルの内容を取得
            reader.readAsText(f);
	}
    } else {
	alert('The File APIs are not fully supported in this browser.');
    }
}
