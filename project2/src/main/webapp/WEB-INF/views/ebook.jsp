<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link rel="stylesheet" href="./ebook/reader/css/normalize.css">
<link rel="stylesheet" href="./ebook/reader/css/main.css">
<link rel="stylesheet" href="./ebook/reader/css/popup.css">

<script src="./ebook/reader/js/libs/jquery-3.4.1.js"></script>
<script src="./ebook/reader/js/libs/zip.min.js"></script>
<style>
	.set {
		font-size: 20px;
		font-weight: bold;
		display: inline;
	}

	.colormode {
	  padding : 11px 5px 5px 5px;
	  margin: 10px;
	  font-weight: 100;
	  font-size: 16px;
	  display : inline-block;
	  border : black 1px solid;
	  height : 30px;
	  width : 80px;
	  text-align : center;
	}

	#black {
		background-color: black;
		color : white;
		cursor: pointer;
	}

	#white {
		background-color: white;
		color : black;
		cursor: pointer;
	}

	#sepia {
		background-color: #efcba7;
		color : black;
		cursor: pointer;
	}
</style>
<script>
	"use strict";
	document.onreadystatechange = function() {

		if (document.readyState == "complete") {
			var isbn1 = document.getElementById('bookisbn');
			console.log(isbn1);
			window.reader = ePubReader("ebookfiles/8961556576 9788961556576.epub", {
				restore : true
			});
		}
	};
</script>

<!-- File Storage -->
<script src="./ebook/reader/js/libs/localforage.min.js"></script>

<!-- Full Screen -->
<!-- <script src="./ebook/reader/js/libs/screenfull.js"></script> -->

<!-- Render -->
<script src="./ebook/reader/js/epub.js"></script>

<!-- Reader -->
<script src="./ebook/reader/js/reader.js"></script>

<!-- Plugins -->
<script src="./ebook/reader/js/plugins/search.js"></script>

<script src="https://kit.fontawesome.com/e8be0dd633.js"></script>-


<!-- Highlights -->
<script src="./ebook/reader/js/libs/jquery.highlight.js"></script>
<!-- <script src="./ebook/reader/js/hooks/extensions/highlight.js"></script> -->
<script>
	// 책 제목은 나중에 controller에서 값을 받아와서 사용해야함.
	function black() {
		colorflag = 'black';
		console.log('black');
		var black = document.getElementById("main");
		var ttsicon = $("#ttsicon");
		var bookmarkempty = $(".icon-bookmark-empty");
		var bookmark = $(".icon-bookmark");
		var iconmenu = $(".icon-menu");
		var iconcog = $(".icon-cog");
		var iconright = $(".icon-right");

		ttsicon.attr("style","color : white");
		bookmarkempty.attr("style","color:white");
		bookmark.attr("style","color:white");
		iconmenu.attr("style","color:white");
		iconcog.attr("style","color:white");
		iconright.attr("style", "color:white");

		black.style.backgroundColor = "#262626";

		var a = $('iframe').contents().find('head').html();

		var b = a + "<style> .wordColor { color : white } </style>"
		$('iframe').contents().find('head').html(b);

		$('iframe').contents().find('p').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h1').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h2').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h3').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h4').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('span').each(function(index,item) {
			$(item).addClass('wordColor');
		});

		var prev_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

		$('#current_chapter').val(prev_chapter);
	}

	function clickblack(prev_chapter) {
		console.log('clickblack');
		setTimeout(function() {
			current_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

			if(current_chapter != prev_chapter) {
				$('#current_chapter').val(current_chapter);
				console.log('different');
				var a = $('iframe').contents().find('head').html();

				var b = a + "<style> .wordColor { color : white } </style>"
				$('iframe').contents().find('head').html(b);

				$('iframe').contents().find('p').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h1').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h2').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h3').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h4').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('span').each(function(index,item) {
					$(item).addClass('wordColor');
				});
			}
		},200);
	}

	function white() {
		colorflag = 'white';
		console.log('white');
		var white = document.getElementById("main");
		var ttsicon = $("#ttsicon");
		var bookmarkempty = $(".icon-bookmark-empty");
		var bookmark = $(".icon-bookmark");
		var iconmenu = $(".icon-menu");
		var iconcog = $(".icon-cog");
		var iconright = $(".icon-right");

		ttsicon.attr("style", "color : black");
		bookmarkempty.attr("style", "color : black");
		//bookmark.attr("style",);
		iconmenu.attr("style", "color : black");
		iconcog.attr("style", "color : black");
		iconright.attr("style", "color : black");


		white.style.backgroundColor = "white";

		var a = $('iframe').contents().find('head').html();
		var b = a + "<style> .wordColor { color : black } </style>"
		$('iframe').contents().find('head').html(b)
		$('iframe').contents().find('p').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h1').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h2').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h3').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h4').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('span').each(function(index,item) {
			$(item).addClass('wordColor');
		})
	}

	function clickwhite(prev_chapter) {
		setTimeout(function() {
			current_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

			if(current_chapter != prev_chapter) {
				$('#current_chapter').val(current_chapter);
				console.log('different');
				var a = $('iframe').contents().find('head').html();

				var b = a + "<style> .wordColor { color : black } </style>"
				$('iframe').contents().find('head').html(b);

				$('iframe').contents().find('p').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h1').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h2').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h3').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h4').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('span').each(function(index,item) {
					$(item).addClass('wordColor');
				});
			}
		},200);
	}

	function sepia() {
		colorflag = 'sepia';
		//console.log('white');
		var white = document.getElementById("main");
		var ttsicon = $("#ttsicon");
		var bookmarkempty = $(".icon-bookmark-empty");
		var bookmark = $(".icon-bookmark");
		var iconmenu = $(".icon-menu");
		var iconcog = $(".icon-cog");
		var iconright = $(".icon-right");

		ttsicon.attr("style", "color : black");
		bookmarkempty.attr("style", "color : black");
		//bookmark.attr("style",);
		iconmenu.attr("style", "color : black");
		iconcog.attr("style", "color : black");
		iconright.attr("style", "color : black");

		white.style.backgroundColor = "#efcba7";

		var a = $('iframe').contents().find('head').html();
		console.log(a);
		var b = a + "<style> .wordColor { color : black } </style>"
		$('iframe').contents().find('head').html(b)


		$('iframe').contents().find('p').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h1').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h2').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h3').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('h4').each(function(index, item) {
			$(item).addClass('wordColor');
		})
		$('iframe').contents().find('span').each(function(index,item) {
			$(item).addClass('wordColor');
		})

	}

	function clicksepia(prev_chapter) {
		console.log('clicksepia');
		setTimeout(function() {
			current_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

			if(current_chapter != prev_chapter) {
				$('#current_chapter').val(current_chapter);
				console.log('different');
				var a = $('iframe').contents().find('head').html();

				var b = a + "<style> .wordColor { color : black } </style>"
				$('iframe').contents().find('head').html(b);

				$('iframe').contents().find('p').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h1').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h2').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h3').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('h4').each(function(index, item) {
					$(item).addClass('wordColor');
				})
				$('iframe').contents().find('span').each(function(index,item) {
					$(item).addClass('wordColor');
				});
			}
		},200);
	}

	console.log('ebook.jsp, hello world!');
	var colorflag;
	var book_name = "alice";
	var flag = true;

	function myFunction1(callback) {
		flag = true;
		$("#next").trigger('click');
		setTimeout(function() {
			callback();
		},500)
	}
	function myFunction2(callback) {
		setTimeout(function() {
			callback();
		},300)
	}
	function makemp3() {
		if(flag == true) {
			var data = $('#tts').val();
			console.log(data);
			$.ajax({
				url : 'tts'
				,data : {data : data}
				,aysnc: false
				,success : function(name) {
					$('#audio').html('<audio src = "mp3/' + name + '.mp3" id = "mp3" onended="myFunction1(makemp3)"></audio>');
					var x = document.getElementById("mp3");
					x.play();
					flag = false;
				}
				,error : function() {
					console.log('error');
				}
			})

		} else {
			var x = document.getElementById("mp3");
			x.pause();
			$('#audio').html();
			flag = true;
		}
	}
	function deleteAll() {
		reader.removeAllBookmark(book_name);
	}

	function changesfonts(){
		//console.log('change');
		if($("#contentfont").val() == 'serif') {
			console.log('serif');

			var a = $('iframe').contents().find('head').html();
			var b = a + "<style> .fontchange { font-family : serif; }</style>"
			$('iframe').contents().find('head').html(b);
			$('iframe').contents().find('p').each(function(index,item) {
				$(item).addClass('fontchange');
			});
			$('iframe').contents().find('h1').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h2').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h3').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h4').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('span').each(function(index,item) {
				$(item).addClass('fontchange');
			})

		}
		if($("#contentfont").val() == 'fontello') {
			console.log('fontello');

			var a = $('iframe').contents().find('head').html();
			var b = a + "<style> .fontchange { font-family : fontello; }</style>"
			$('iframe').contents().find('head').html(b);
			$('iframe').contents().find('p').each(function(index,item) {
				$(item).addClass('fontchange');
			});
			$('iframe').contents().find('h1').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h2').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h3').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h4').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('span').each(function(index,item) {
				$(item).addClass('fontchange');
			})

		}

		if($("#contentfont").val() == 'cursive') {
			console.log('cursive');

				var a = $('iframe').contents().find('head').html();
				var b = a + "<style> .fontchange { font-family : cursive; }</style>"
				$('iframe').contents().find('head').html(b);
				$('iframe').contents().find('p').each(function(index,item) {
					$(item).addClass('fontchange');
				});
				$('iframe').contents().find('h1').each(function(index, item) {
					$(item).addClass('fontchange');
				})
				$('iframe').contents().find('h2').each(function(index, item) {
					$(item).addClass('fontchange');
				})
				$('iframe').contents().find('h3').each(function(index, item) {
					$(item).addClass('fontchange');
				})
				$('iframe').contents().find('h4').each(function(index, item) {
					$(item).addClass('fontchange');
				})
				$('iframe').contents().find('span').each(function(index,item) {
					$(item).addClass('fontchange');
				})

		}

		if($("#contentfont").val() == 'monospace') {
			console.log('monospace');

			var a = $('iframe').contents().find('head').html();
			var b = a + "<style> .fontchange { font-family : monospace; }</style>"
			$('iframe').contents().find('head').html(b);
			$('iframe').contents().find('p').each(function(index,item) {
				$(item).addClass('fontchange');
			});
			$('iframe').contents().find('h1').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h2').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h3').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('h4').each(function(index, item) {
				$(item).addClass('fontchange');
			})
			$('iframe').contents().find('span').each(function(index,item) {
				$(item).addClass('fontchange');
			})
		}
	}

	function fontchangeclick(prev_chapter) {
		setTimeout(function() {
			current_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

			if(current_chapter != prev_chapter) {
				$('#current_chapter').val(current_chapter);

				if($("#contentfont").val() == 'serif') {
					console.log('serif');

					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> .fontchange { font-family : serif; }</style>"
					$('iframe').contents().find('head').html(b);
					$('iframe').contents().find('p').each(function(index,item) {
						$(item).addClass('fontchange');
					});
					$('iframe').contents().find('h1').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h2').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h3').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h4').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('span').each(function(index,item) {
						$(item).addClass('fontchange');
					})

				}
				if($("#contentfont").val() == 'fontello') {
					console.log('fontello');

					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> .fontchange { font-family : fontello; }</style>"
					$('iframe').contents().find('head').html(b);
					$('iframe').contents().find('p').each(function(index,item) {
						$(item).addClass('fontchange');
					});
					$('iframe').contents().find('h1').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h2').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h3').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h4').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('span').each(function(index,item) {
						$(item).addClass('fontchange');
					})
				}

				if($("#contentfont").val() == 'cursive') {
					console.log('cursive');

					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> .fontchange { font-family : cursive; }</style>"
					$('iframe').contents().find('head').html(b);
					$('iframe').contents().find('p').each(function(index,item) {
						$(item).addClass('fontchange');
					});
					$('iframe').contents().find('h1').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h2').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h3').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h4').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('span').each(function(index,item) {
						$(item).addClass('fontchange');
					})
				}

				if($("#contentfont").val() == 'monospace') {
					console.log('monospace');
					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> .fontchange { font-family : monospace; }</style>"
					$('iframe').contents().find('head').html(b);
					$('iframe').contents().find('p').each(function(index,item) {
						$(item).addClass('fontchange');
					});
					$('iframe').contents().find('h1').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h2').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h3').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('h4').each(function(index, item) {
						$(item).addClass('fontchange');
					})
					$('iframe').contents().find('span').each(function(index,item) {
						$(item).addClass('fontchange');
					})
				}
			}
		},200);
	}

	function changefontsize() {
		console.log('changefontsize');

		var a = $('iframe').contents().find('head').html();
		var fontsize = $('input[type = range]').val();

		if(fontsize == 11) {
			var b = a + "<style> .fontsize { font-size : 70%; }</style>"
			$('iframe').contents().find('head').html(b);
		}
		if(fontsize == 13) {
			var b = a + "<style> .fontsize { font-size : 85%; }</style>"
			$('iframe').contents().find('head').html(b);
		}
		if(fontsize == 15) {
			var b = a + "<style> .fontsize { font-size : 100%; }</style>"
			$('iframe').contents().find('head').html(b);
		}
		if(fontsize == 17) {
			var b = a + "<style> .fontsize { font-size : 125%; }</style>"
			$('iframe').contents().find('head').html(b);
		}
		if(fontsize == 19) {
			var b = a + "<style> .fontsize { font-size : 150%; }</style>"
			$('iframe').contents().find('head').html(b);
		}

		$('iframe').contents().find('p').each(function(index,item) {
			$(item).addClass('fontsize');
		});

	}

	function intervalfontsize(prev_chapter) {
		setTimeout(function() {
			current_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

			if(current_chapter != prev_chapter) {
				$('#current_chapter').val(current_chapter);
				var a = $('iframe').contents().find('head').html();
				var fontsize = $('input[type = range]').val();

				if(fontsize == 11) {
					var b = a + "<style> .fontsize { font-size : 70%; }</style>"
					$('iframe').contents().find('head').html(b);
				}
				if(fontsize == 13) {
					var b = a + "<style> .fontsize { font-size : 85%; }</style>"
					$('iframe').contents().find('head').html(b);
				}
				if(fontsize == 15) {
					var b = a + "<style> .fontsize { font-size : 100%; }</style>"
					$('iframe').contents().find('head').html(b);
				}
				if(fontsize == 17) {
					var b = a + "<style> .fontsize { font-size : 125%; }</style>"
					$('iframe').contents().find('head').html(b);
				}
				if(fontsize == 19) {
					var b = a + "<style> .fontsize { font-size : 150%; }</style>"
					$('iframe').contents().find('head').html(b);
				}

				$('iframe').contents().find('p').each(function(index,item) {
					$(item).addClass('fontsize');
				});
			}
		},200);
	}

	function linespace() {
		var linespace = $('input[type = "radio"]:checked').val();
		console.log(linespace);

		if(linespace == "small") {
			var a = $('iframe').contents().find('head').html();
			var b = a + "<style> p { line-height : 90%; } </style>"
			$('iframe').contents().find('head').html(b)
			$('iframe').contents().find('p').each(function(index, item) {
				$(item).addClass('wordColor');
			})
		}

		if(linespace == "medium") {
			var a = $('iframe').contents().find('head').html();
			var b = a + "<style> p { line-height : normal; } </style>"
			$('iframe').contents().find('head').html(b)
			$('iframe').contents().find('p').each(function(index, item) {
				$(item).addClass('wordColor');
			})
		}

		if(linespace == "large") {
			var a = $('iframe').contents().find('head').html();
			var b = a + "<style> p { line-height : 170%; } </style>"
			$('iframe').contents().find('head').html(b)
			$('iframe').contents().find('p').each(function(index, item) {
				$(item).addClass('wordColor');
			})
		}
	}
	function intervallinespace(prev_chapter) {
		setTimeout(function() {
			current_chapter = window.frames[0].document.getElementsByTagName("link")[1].getAttribute('href');

			if(current_chapter != prev_chapter) {
				$('#current_chapter').val(current_chapter);
				var linespace = $('input[type = "radio"]:checked').val();
				console.log(linespace);

				if(linespace == "small") {
					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> p { line-height : 90%; } </style>"
					$('iframe').contents().find('head').html(b)
					$('iframe').contents().find('p').each(function(index, item) {
						$(item).addClass('wordColor');
					})
				}

				if(linespace == "medium") {
					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> p { line-height : normal; } </style>"
					$('iframe').contents().find('head').html(b)
					$('iframe').contents().find('p').each(function(index, item) {
						$(item).addClass('wordColor');
					})
				}

				if(linespace == "large") {
					var a = $('iframe').contents().find('head').html();
					var b = a + "<style> p { line-height : 170%; } </style>"
					$('iframe').contents().find('head').html(b)
					$('iframe').contents().find('p').each(function(index, item) {
						$(item).addClass('wordColor');
					})
				}
			}
		},200);
	}
	$(document).ready(function() {
		$('#contentfont').on("change", changesfonts);
		// $('iframe').ready(function() {
		// 	console.log('iframe loading');
		// 	var iframeid = $('iframe').contents().find('link[rel=canonical]').attr('href');
		// 	console.log(iframeid);
		//
		// })
		$('input[name="linespace"]').on("change",linespace);

		$('#fontsize').on("change",changefontsize);

		$("#black").on("click", black);
		$('#white').on("click", white);
		$('#sepia').on("click", sepia);

		$("#slider").on("click",function() {
			console.log('sliderbar');
			myFunction2(changesfonts);
			if(colorflag=='black')
				myFunction2(black);
			if(colorflag=='white')
				myFunction2(white);
			if(colorflag=='sepia')
				myFunction2(sepia);
			myFunction2(changefontsize);
			myFunction2(linespace);
		})

		// $(".icon-right").on("click",function() {
		// 	console.log('icon-right');
		// 	fontchangeclick($('#current_chapter').val());
		// 	if(colorflag=='black')
		// 		clickblack($('#current_chapter').val());
		// 	if(colorflag=='white')
		// 		clickwhite($('#current_chapter').val());
		// 	if(colorflag=='sepia')
		// 		clicksepia($('#current_chapter').val());
		// })

		$('#next').on("click",function() {
			fontchangeclick($('#current_chapter').val());
			intervalfontsize($('#current_chapter').val());
			intervallinespace($('#current_chapter').val());
			if(colorflag=='black')
				clickblack($('#current_chapter').val());
			if(colorflag=='white')
				clickwhite($('#current_chapter').val());
			if(colorflag=='sepia')
				clicksepia($('#current_chapter').val());
		});

 		$('#prev').on("click",function() {
			intervalfontsize($('#current_chapter').val());
			fontchangeclick($('#current_chapter').val());
			intervallinespace($('#current_chapter').val());
			if(colorflag=='black')
				clickblack($('#current_chapter').val());
			if(colorflag=='white')
				clickwhite($('#current_chapter').val());
			if(colorflag=='sepia')
				clicksepia($('#current_chapter').val());
		});


	});

</script>
</head>
<body>

	<div id="sidebar">
		<div id="panels">
<!-- 			<input id="searchBox" placeholder="search" type="search"> <a
				id="show-Search" class="show_view icon-search" data-view="Search">Search</a> -->
			<a id="show-Toc" class="show_view icon-list-1 active" data-view="Toc">TOC</a>
			<a id="show-Bookmarks" class="show_view icon-bookmark"
				data-view="Bookmarks">Bookmarks</a>
				<!--<a id="show-Notes"class="show_view icon-edit" data-view="Notes">Notes</a> -->

		</div>
		<div id="tocView" class="view"></div>
		<%-- <div id="searchView" class="view">
			<ul id="searchResults"></ul>
		</div> --%>
		<div id="bookmarksView" class="view">
			<ul id="bookmarks">
			</ul>
			<input id = "clear" type = "button" value = "북마크 전체 삭제" onclick = "deleteAll()")>

		</div>
		<div id="notesView" class="view">
			<div id="new-note">
				<textarea id="note-text"></textarea>
				<button id="note-anchor">Anchor</button>
			</div>
			<ol id="notes"></ol>
		</div>
	</div>
	<div id="main" style="margin-top:-24px;">

		<div id="titlebar">
			<div id="opener">
				<a id="slider" class="icon-menu" >Menu</a>
			</div>
			<div id="metainfo">
				<span id="book-title"></span> <span id="title-seperator">&nbsp;&nbsp;–&nbsp;&nbsp;</span>
				<span id="chapter-title"></span>
			</div>
			<div id="title-controls">
				<a id="bookmark" class="icon-bookmark-empty" >Bookmark</a>

				<a id="ttsbutton" onclick = "makemp3()" ><i class="fas fa-volume-up" id = "ttsicon"></i></a>

				<a id="setting" class="icon-cog">Settings</a>
				<!-- <a id="fullscreen" class="icon-resize-full">Fullscreen</a> -->
			</div>
		</div>

		<div id="divider"></div>
		<div id="prev" class="arrow">‹</div>
		<div id="viewer"></div>
		<div id="next" class="arrow">›</div>

		<div id="loader">
			<img src="./ebook/reader/img/loader.gif">
		</div>
	</div>

	<input type = "hidden" id = "tts">
	<input type = "hidden" id = "nextsound">
	<input type = "hidden" id = "current_chapter"  />
	<input type = "hidden" id = "bookisbn" value = "${isbn}"/>

	<div id = "audio"></div>
	 <div class="modal md-effect-1" id="settings-modal">
		<div class="md-content">
			<h3>Settings</h3>
			<div>
				<div class = "set">
					font : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;
					<select name = "contentfont" id = "contentfont">
						<option value = "serif">
							serif
						</option>
						<option value = "fontello" selected = "selected">
							fontello
						</option>
						<option value = "cursive">
							cursive
						</option>
						<option value = "monospace">
							monospace
						</option>
					</select>
				</div>	<br><br>
				<div class = "set">
					font size : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					Aa <input type = "range" / id = "fontsize" name = "fontsize"
						min = "11" max = "19" value = "15" step = "2"> Aa

				</div> <br><br>
				<div class = "set">
					line spacing : &nbsp;
					<input type = "radio" name = "linespace" value = "small"/>  Samll
					<input type = "radio" name = "linespace" value = "medium" checked/>  Medium
					<input type = "radio" name = "linespace" value = "large"/>  Large
				</div> <br><br>
				<div class = "set">
					color mode :
					<div class = "colormode" id = "white">
						white
					</div>
					<div class = "colormode" id = "black">
						black
					</div>
					<div class = "colormode" id = "sepia">
						sepia
					</div>

				</div> <br><br>
			</div>
			<div class="closer icon-cancel-circled"></div>
		</div>
	</div>
	 <div class="overlay"></div>


</body>
</html>
