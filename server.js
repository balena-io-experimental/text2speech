var request = require('request');
var Lame = require('lame');
var Speaker = require('speaker');

var text = 'Say hello to my little friend';

var url = {
	url: 'http://translate.google.com/translate_tts?ie=UTF-8&tl=en&client=t&q=' + encodeURIComponent(text),
	headers: {
		'User-Agent': 'stagefright/1.2 (Linux;Android 5.0)',
		'Referer': 'http://translate.google.com/'
  	}
};

request(url).pipe(new Lame.Decoder).pipe(new Speaker);