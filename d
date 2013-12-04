[33mcommit 083bf0eff1dfd96a1e06acff81f6d21337cb4b8e[m
Author: David Jordan <jordand95@gmail.com>
Date:   Tue Dec 3 12:33:49 2013 -0500

    Updated some Code, Removed Batch Files

[1mdiff --git a/NPM Install.bat b/NPM Install.bat[m
[1mdeleted file mode 100644[m
[1mindex bb053b3..0000000[m
[1m--- a/NPM Install.bat[m	
[1m+++ /dev/null[m
[36m@@ -1 +0,0 @@[m
[31m-npm install instagram[m
\ No newline at end of file[m
[1mdiff --git a/README.md b/README.md[m
[1mindex e0d19da..d7ffbe2 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -1,2 +1,5 @@[m
[31m-Midterm-Project[m
[31m-===============[m
[32m+[m[32mCSI-120[m
[32m+[m[32m===================[m
[32m+[m[32mGold Team's Web App[m
[32m+[m[32m===================[m
[32m+[m[32mDavid Jordan, Matt Carroll, Jeff Delucia[m
\ No newline at end of file[m
[1mdiff --git a/Run.bat b/Run.bat[m
[1mdeleted file mode 100644[m
[1mindex be6ba2e..0000000[m
[1m--- a/Run.bat[m
[1m+++ /dev/null[m
[36m@@ -1,2 +0,0 @@[m
[31m-node server.js[m
[31m-pause[m
\ No newline at end of file[m
[1mdiff --git a/public/home.html b/public/home.html[m
[1mindex b061821..3395a28 100644[m
[1m--- a/public/home.html[m
[1m+++ b/public/home.html[m
[36m@@ -30,24 +30,24 @@[m
 		<!-- Top 10 Globally Searched Hashtags -->[m
 		<h4 style="text-align: center;">Most Popular Searches</h4>[m
 		<ul data-role="listview" data-divider-theme="b" data-inset="true">[m
[31m-			<li data-theme="c">#1 - "Yolo" and "Swag"</li>[m
[31m-			<li data-theme="c">#2 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#3 - "Lorem" and "Ipsum"</li>[m
[31m-			<li data-theme="c">#4 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#5 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#6 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#7 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#8 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#9 - "Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">#10 - "Foo" and "Bar"</li>[m
[32m+[m			[32m<li data-theme="c">#1 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#2 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#3 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#4 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#5 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#6 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#7 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#8 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#9 - "hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">#10 - "hashtag" and "hashtag"</li>[m
 		</ul>[m
 		[m
 		<!-- User's Recently Searched Hashtags -->[m
 		<h4 style="text-align: center;">Your Recent Searches</h4>[m
 		<ul data-role="listview" data-divider-theme="b" data-inset="true">[m
[31m-			<li data-theme="c">"Yolo" and "Swag"</li>[m
[31m-			<li data-theme="c">"Foo" and "Bar"</li>[m
[31m-			<li data-theme="c">"Lorem" and "Ipsum"</li>[m
[32m+[m			[32m<li data-theme="c">"hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">"hashtag" and "hashtag"</li>[m
[32m+[m			[32m<li data-theme="c">"hashtag" and "hashtag"</li>[m
 		</ul>[m
 	</div>[m
 </div>[m
[1mdiff --git a/public/search.html b/public/search.html[m
[1mindex 939b32e..bac020f 100644[m
[1m--- a/public/search.html[m
[1m+++ b/public/search.html[m
[36m@@ -9,18 +9,6 @@[m
 	<link rel="stylesheet" href="https://d10ajoocuyu32n.cloudfront.net/mobile/1.3.1/jquery.mobile-1.3.1.min.css">[m
 	<script src="https://d10ajoocuyu32n.cloudfront.net/jquery-1.9.1.min.js"></script>[m
 	<script src="https://d10ajoocuyu32n.cloudfront.net/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>[m
[31m-	<script>[m
[31m-		$(function() {[m
[31m-			$(".search").click(function() {[m
[31m-				[m
[31m-				console.log("Search Button Pressed!");[m
[31m-			});[m
[31m-		});[m
[31m-		[m
[31m-		function search() {[m
[31m-			//location.href = "http://localhost:8000/results/swag/yolo";[m
[31m-		}[m
[31m-	</script>[m
 	</head>[m
 [m
 <body>[m
[36m@@ -40,6 +28,8 @@[m
 		[m
 			<h3 style="text-align: center;"><b>Search for Tweets</b></h3>[m
 			[m
[32m+[m			[32m[MESSAGE][m
[32m+[m[41m			[m
 			<!-- Hashtags -->[m
 			<div data-role="fieldcontain">[m
 				<label for="ht1">Hashtag 1</label>[m
[36m@@ -72,7 +62,7 @@[m
 			[m
 			<!-- Search Button -->[m
 			<div data-role="content">[m
[31m-				<input type="submit" value="Search" data-theme="b" data-icon="search" data-iconpos="left">[m
[32m+[m				[32m<input type="submit" class="search" value="Search" data-theme="b" data-icon="search" data-iconpos="left">[m
 			</div>[m
 			[m
 		</form>[m
[1mdiff --git a/public/styles.css b/public/styles.css[m
[1mdeleted file mode 100644[m
[1mindex ff9b406..0000000[m
[1m--- a/public/styles.css[m
[1m+++ /dev/null[m
[36m@@ -1,79 +0,0 @@[m
[31m-/* Styles */[m
[31m-[m
[31m-body {[m
[31m-	font-size:        14px;[m
[31m-	background-color: #EEE;[m
[31m-	font-family:      arial;[m
[31m-}[m
[31m-[m
[31m-h1 {[m
[31m-	font-size:        24px;[m
[31m-	margin-top:       10px;[m
[31m-	margin-bottom:    20px;[m
[31m-	padding:          8px;[m
[31m-	padding-left:     24px;[m
[31m-	margin-left:      auto;[m
[31m-	margin-right:     auto;[m
[31m-	background-color: #8394B2;[m
[31m-	border:           1px solid black;[m
[31m-	color:            white;[m
[31m-}[m
[31m-[m
[31m-h2 {[m
[31m-	margin-top:       40px;[m
[31m-	margin-bottom:    20px;[m
[31m-	padding-bottom:   5px;[m
[31m-	font-size:        18px;[m
[31m-	padding:          5px;[m
[31m-	background-color: #CED2DB;[m
[31m-	border:           1px solid #9BA9C1;[m
[31m-}[m
[31m-[m
[31m-h3 {[m
[31m-	margin-top:    25px;[m
[31m-	margin-bottom: 14px;[m
[31m-	font-style:    italic;[m
[31m-	/*border-bottom: 1px solid #8394B2;*/[m
[31m-}[m
[31m-[m
[31m-h4 {[m
[31m-	margin-left:   5px;[m
[31m-	margin-top:    14px;[m
[31m-	margin-bottom: 6px;[m
[31m-	font-weight:   800;[m
[31m-	font-size:     14px;[m
[31m-	font-family:   "consolas";[m
[31m-}[m
[31m-[m
[31m-p {[m
[31m-	margin-left:   30px;[m
[31m-	margin-top:    5px;[m
[31m-	margin-bottom: 5px;[m
[31m-}[m
[31m-[m
[31m-.description {[m
[31m-	margin-left: 5px;[m
[31m-	color:       black;[m
[31m-}[m
[31m-[m
[31m-.subclasses {[m
[31m-	width:            250;[m
[31m-	margin-top:       20px;[m
[31m-	padding-top:      10px;[m
[31m-	margin-left:      18px;[m
[31m-	padding-bottom:   10px;[m
[31m-	line-height:      20px;[m
[31m-	background-color: #CED2DB;[m
[31m-	border:           1px solid #9BA9C1;[m
[31m-}[m
[31m-[m
[31m-pre {[m
[31m-	margin-left:      30px;[m
[31m-	margin-right:     30px;[m
[31m-	padding:          15px;[m
[31m-	font-weight:      800;[m
[31m-	font-family:      "courier new";[m
[31m-	background-color: #DFDFDF;[m
[31m-	border:           1px dotted black;[m
[31m-	line-height:      22px;[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/server.js b/server.js[m
[1mindex 6994ab9..07ae292 100644[m
[1m--- a/server.js[m
[1m+++ b/server.js[m
[36m@@ -44,46 +44,39 @@[m [mfunction isValidHashtag(tag) {[m
 }[m
 [m
 // Return a list of ten tweets from the results page.[m
[31m-function getTweets(req, res, success, error) {[m
[31m-	if (!isValidHashtag(req.query.hashtag1)[m
[31m-		|| !isValidHashtag(req.query.hashtag2))[m
[32m+[m[32mfunction getTweets(req, res, success) {[m
[32m+[m	[32mvar options = {[m
[32m+[m		[32mq: "#" + req.query.hashtag1 + " AND #" + req.query.hashtag2,[m
[32m+[m		[32m//geocode:[m[41m [m
[32m+[m		[32muntil: req.query.date_to,[m
[32m+[m		[32mlang: "en",[m
[32m+[m		[32mcount: 100,[m
[32m+[m		[32mresult_type: "recent"[m
[32m+[m	[32m};[m
[32m+[m[41m	[m
[32m+[m	[32mtweets = [];[m
[32m+[m[41m	[m
[32m+[m	[32mtwit.get("/search/tweets.json", options, function(data)[m
 	{[m
[31m-		error("Invalid Hashtag(s)");[m
[31m-	}[m
[31m-	else {[m
[31m-		var options = {[m
[31m-			q: "#" + req.query.hashtag1 + " AND #" + req.query.hashtag2,[m
[31m-			//geocode: [m
[31m-			until: req.query.date_to,[m
[31m-			lang: "en",[m
[31m-			count: 100,[m
[31m-			result_type: "recent"[m
[31m-		};[m
[31m-		[m
[31m-		tweets = [];[m
[31m-		[m
[31m-		twit.get("/search/tweets.json", options, function(data)[m
[31m-		{[m
[31m-			if (data.statuses && data.statuses.length > 0) {[m
[31m-				for (var i = 0; i < data.statuses.length && tweets.length < 10; i++) {[m
[31m-					var raw   = data.statuses[i];[m
[31m-					[m
[31m-					tweet = {[m
[31m-						id: raw.id_str,[m
[31m-						text: raw.text,[m
[31m-						score: sentimental(raw.text).score[m
[31m-					};[m
[31m-					[m
[31m-					if (tweet.score >= req.query.score_min[m
[31m-						&& tweet.score <= req.query.score_max)[m
[31m-					{[m
[31m-						tweets.push(tweet);[m
[31m-					}[m
[32m+[m		[32mif (data.statuses && data.statuses.length > 0) {[m
[32m+[m			[32mfor (var i = 0; i < data.statuses.length && tweets.length < 10; i++) {[m
[32m+[m				[32mvar raw   = data.statuses[i];[m
[32m+[m[41m				[m
[32m+[m				[32mtweet = {[m
[32m+[m					[32mid: raw.id_str,[m
[32m+[m					[32mtext: raw.text,[m
[32m+[m					[32mscore: sentimental(raw.text).score[m
[32m+[m				[32m};[m
[32m+[m[41m				[m
[32m+[m				[32mif (tweet.score >= req.query.score_min[m
[32m+[m					[32m&& tweet.score <= req.query.score_max)[m
[32m+[m				[32m{[m
[32m+[m					[32mtweets.push(tweet);[m
 				}[m
 			}[m
[31m-			success(tweets);[m
[31m-		});[m
[31m-	}[m
[32m+[m		[32m}[m
[32m+[m		[32msuccess(tweets);[m
[32m+[m	[32m});[m
 }[m
 [m
 [m
[36m@@ -100,9 +93,10 @@[m [mapp.get('/', function(req, res) {[m
 // ==================== SEARCH PAGE ====================== //[m
 [m
 app.get("/search", function(req, res) {[m
[31m-	var content = fs.readFileSync("public/search.html");[m
[31m-	res.setHeader("Content-Type", "text/html; charset=utf8");[m
[31m-	res.send(content);[m
[32m+[m		[32mvar content = fs.readFileSync("public/search.html").toString("utf8");[m
[32m+[m		[32mcontent = content.replace("[MESSAGE]", "");[m
[32m+[m		[32mres.setHeader("Content-Type", "text/html");[m
[32m+[m		[32mres.send(content);[m
 });[m
 [m
 app.get("/test", function(req, res) {[m
[36m@@ -132,95 +126,76 @@[m [mapp.get('/results', function(req, res) {[m
 	if (!isValidHashtag(req.query.hashtag1)[m
 		|| !isValidHashtag(req.query.hashtag2))[m
 	{[m
[31m-		/*[m
[31m-		var content = fs.readFileSync("public/search.html");[m
[31m-		res.setHeader("Content-Type", "text/html; charset=utf8");[m
[31m-		res.send(content);[m
[31m-		*/[m
[31m-		[m
 		var content = fs.readFileSync("public/search.html").toString("utf8");[m
[31m-		[m
[31m-		//content = content.replace("[TWITTER]", "<h3 style=\"color: red;\">" + message + "</h3>");[m
[31m-		[m
[32m+[m
[32m+[m		[32mcontent = content.replace("[MESSAGE]", "<p style=\"color: red;\">Error: Invalid Hashtag(s)</p >");[m
 		res.setHeader("Content-Type", "text/html");[m
 		res.send(content);[m
 	}[m
 	else {[m
[31m-	[m
[31m-	// Success Function:[m
[31m-	instagram.tags.media(tag1, function (media1, error1) {[m
[31m-	instagram.tags.media(tag2, function (media2, error2) {[m
[31m-	getTweets(req, res, function(tweets) {[m
[31m-		var content = fs.readFileSync("public/results.html").toString("utf8");[m
[31m-		var list    = "";[m
[31m-		content     = content.replace("[HASHTAG1]", tag1);[m
[31m-		content     = content.replace("[HASHTAG2]", tag2);[m
[31m-		var twitterContent = "";[m
[31m-		[m
[31m-		twitterContent += "<h4 style=\"text-align: center;\">Tweets with the hashtags \"";[m
[31m-		twitterContent += tag1 + "\" and \"" + tag2 + "\"</h4>";[m
[31m-		list += "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";[m
[31m-		[m
[31m-		if (tweets.length > 0) {[m
[31m-			for (var i = 0; i < tweets.length; i++) {[m
[31m-				tweet = tweets[i];[m
[31m-				list += "<li data-theme=\"c\"><a href=/tweet/" + tweet.id + ">";[m
[31m-				list += "[" + sentimental(tweet.text).score + "] ";[m
[31m-				list += tweet.text;[m
[31m-				list += "</a></li>";[m
[32m+[m		[32minstagram.tags.media(tag1, function (media1, error1) {[m
[32m+[m		[32minstagram.tags.media(tag2, function (media2, error2) {[m
[32m+[m		[32mgetTweets(req, res, function(tweets) {[m
[32m+[m			[32mvar content = fs.readFileSync("public/results.html").toString("utf8");[m
[32m+[m			[32mvar list    = "";[m
[32m+[m			[32mcontent     = content.replace("[HASHTAG1]", tag1);[m
[32m+[m			[32mcontent     = content.replace("[HASHTAG2]", tag2);[m
[32m+[m			[32mvar twitterContent = "";[m
[32m+[m[41m			[m
[32m+[m			[32mtwitterContent += "<h4 style=\"text-align: center;\">Tweets with the hashtags \"";[m
[32m+[m			[32mtwitterContent += tag1 + "\" and \"" + tag2 + "\"</h4>";[m
[32m+[m			[32mlist += "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";[m
[32m+[m[41m			[m
[32m+[m			[32mif (tweets.length > 0) {[m
[32m+[m				[32mfor (var i = 0; i < tweets.length; i++) {[m
[32m+[m					[32mtweet = tweets[i];[m
[32m+[m					[32mlist += "<li data-theme=\"c\"><a href=/tweet/" + tweet.id + ">";[m
[32m+[m					[32mlist += "[" + sentimental(tweet.text).score + "] ";[m
[32m+[m					[32mlist += tweet.text;[m
[32m+[m					[32mlist += "</a></li>";[m
[32m+[m				[32m}[m
 			}[m
[31m-		}[m
[31m-		else {[m
[31m-			twitterContent = "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";[m
[31m-			twitterContent += "<li>No Twitter Results Found</li></ul>"[m
[31m-		}[m
[31m-		[m
[31m-		list += "</ul>";[m
[31m-		twitterContent += list;[m
[31m-		[m
[31m-		content = content.replace("[TWITTER]", twitterContent);[m
[31m-		[m
[31m-		// Display the Instagram Image.[m
[31m-		var instagramContent = "";[m
[31m-		if (!error1 && media1 && media1.length > 0) {[m
[31m-			instagramContent += "<h4 style=\"text-align: center;\">Instagram Image with the hashtag \""[m
[31m-					+ tag1 + "\"</h4>";[m
[31m-			var url = media1[0].images.thumbnail.url;[m
[31m-			instagramContent += "<img style=\"text-align: center;\" src="[m
[31m-					+ url + " style=\"text-align: center;\"></img>";[m
[31m-		}[m
[31m-		else {[m
[31m-			instagramContent += "<p style=\"text-align:center;\">(No instagrams images with the hashtag \""[m
[31m-					+ tag1 + "\" found)</p>";[m
[31m-		}[m
[31m-		if (!error2 && media2 && media2.length > 0) {[m
[31m-			instagramContent += "<h4 style=\"text-align: center;\">Instagram Image with the hashtag \""[m
[31m-					+ tag2 + "\"</h4>";[m
[31m-			var url = media2[0].images.thumbnail.url;[m
[31m-			instagramContent += "<img style=\"text-align: center;\" src="[m
[31m-					+ url + " style=\"text-align: center;\"></img>";[m
[31m-		}[m
[31m-		else {[m
[31m-			instagramContent += "<p style=\"text-align:center;\">(No instagrams images with the hashtag \""[m
[31m-					+ tag2 + "\" found)</p>";[m
[31m-		}[m
[31m-		content = content.replace("[INSTAGRAM]", instagramContent);[m
[31m-		[m
[31m-		res.setHeader("Content-Type", "text/html");[m
[31m-		res.send(content);[m
[31m-	},[m
[31m-	[m
[31m-	// Error Function:[m
[31m-	function(message) {[m
[31m-		var content = fs.readFileSync("public/search.html").toString("utf8");[m
[31m-		[m
[31m-		//content = content.replace("[TWITTER]", "<h3 style=\"color: red;\">" + message + "</h3>");[m
[31m-		[m
[31m-		res.setHeader("Content-Type", "text/html");[m
[31m-		res.send(content);[m
[31m-	})[m
[31m-	})[m
[31m-	});[m
[32m+[m			[32melse {[m
[32m+[m				[32mtwitterContent = "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";[m
[32m+[m				[32mtwitterContent += "<li>No Twitter Results Found</li></ul>"[m
[32m+[m			[32m}[m
[32m+[m[41m			[m
[32m+[m			[32mlist += "</ul>";[m
[32m+[m			[32mtwitterContent += list;[m
[32m+[m[41m			[m
[32m+[m			[32mcontent = content.replace("[TWITTER]", twitterContent);[m
[32m+[m[41m			[m
[32m+[m			[32m// Display the Instagram Image.[m
[32m+[m			[32mvar instagramContent = "";[m
[32m+[m			[32mif (!error1 && media1 && media1.length > 0) {[m
[32m+[m				[32minstagramContent += "<h4 style=\"text-align: center;\">Instagram Image with the hashtag \""[m
[32m+[m						[32m+ tag1 + "\"</h4>";[m
[32m+[m				[32mvar url = media1[0].images.thumbnail.url;[m
[32m+[m				[32minstagramContent += "<img style=\"text-align: center;\" src="[m
[32m+[m						[32m+ url + " style=\"text-align: center;\"></img>";[m
[32m+[m			[32m}[m
[32m+[m			[32melse {[m
[32m+[m				[32minstagramContent += "<p style=\"text-align:center;\">(No instagrams images with the hashtag \""[m
[32m+[m						[32m+ tag1 + "\" found)</p>";[m
[32m+[m			[32m}[m
[32m+[m			[32mif (!error2 && media2 && media2.length > 0) {[m
[32m+[m				[32minstagramContent += "<h4 style=\"text-align: center;\">Instagram Image with the hashtag \""[m
[32m+[m						[32m+ tag2 + "\"</h4>";[m
[32m+[m				[32mvar url = media2[0].images.thumbnail.url;[m
[32m+[m				[32minstagramContent += "<img style=\"text-align: center;\" src="[m
[32m+[m						[32m+ url + " style=\"text-align: center;\"></img>";[m
[32m+[m			[32m}[m
[32m+[m			[32melse {[m
[32m+[m				[32minstagramContent += "<p style=\"text-align:center;\">(No instagrams images with the hashtag \""[m
[32m+[m						[32m+ tag2 + "\" found)</p>";[m
[32m+[m			[32m}[m
[32m+[m			[32mcontent = content.replace("[INSTAGRAM]", instagramContent);[m
[32m+[m[41m			[m
[32m+[m			[32mres.setHeader("Content-Type", "text/html");[m
[32m+[m			[32mres.send(content);[m
[32m+[m		[32m})[m
[32m+[m		[32m})[m
[32m+[m		[32m});[m
 	}[m
 	/*[m
 	instagram.tags.media(tag1, function (media1, error1) {[m
