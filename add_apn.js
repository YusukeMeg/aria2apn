var data = null;

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === 4) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "http://192.168.0.1/goform/goform_set_cmd_process");
xhr.setRequestHeader("Origin", "http://192.168.0.1");
xhr.setRequestHeader("Accept-Encoding", "gzip, deflate");
xhr.setRequestHeader("Accept-Language", "ja,ja-JP;q=0.9,en-US;q=0.8,en;q=0.7,zh-CN;q=0.6,zh;q=0.5");
xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
xhr.setRequestHeader("Accept", "application/json, text/javascript, */*; q=0.01");
xhr.setRequestHeader("Referer", "http://192.168.0.1/index.html?_1102");
xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
xhr.setRequestHeader("Connection", "keep-alive");
xhr.setRequestHeader("Cache-Control", "no-cache");

xhr.send(data);

