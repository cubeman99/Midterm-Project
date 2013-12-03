
// ======================= SETUP ========================= //

// Require modules.
var express     = require("express");
var fs          = require("fs");
var util        = require('util');
var twitter     = require('twitter');
var sentimental = require("sentimental").analyze;
var app         = express();
var port        = 8000;

// Create authenticated twitter object.
var twit = new twitter({
    consumer_key: 'Z1z3ZfgbkaFyjjIubJ7j1Q',
    consumer_secret: 'zXCWCVc7peHzESREo14YjzsrKAhNZtTL5S83mNCrSt4',
    access_token_key: '97908400-Hz3dY35FX00YJxpmIe2JAPK3OSCu4Cnv5kV8M0qlM',
    access_token_secret: 'qv4VzFM43xFkF2muMIt6Od6WnTjtPZyvVBtlriLCHzfe2'
});

// Create authenticated instagram object.
var instagram = require('instagram').createClient(
	"5f62810d7a9e4429a93dbf35ea98a1ca",  // Client ID
	"6dd535f845d94c41ad2dbef6c6698d49"); // Client Secret

// Setup the public directory.
app.use(app.router);
app.use(express.static(__dirname + '/public'));

// Return whether the given hashtag is a valid one.
function isValidHashtag(tag) {
	if (tag.length == 0)
		return false;
	for (var i = 0; i < tag.length; i++) {
		var c = tag.toLowerCase().charAt(i);
		if (!(c >= 'a' && c <= 'z')    // Letters
			&& !(c >= '0' && c <= '9') // Numbers
			&& (c != '_'))             // Underscores
		{
			return false;
		}
	}
	return true;
}

// Return a list of ten tweets from the results page.
function getTweets(req, res, success) {
	var options = {
		q: "#" + req.query.hashtag1 + " AND #" + req.query.hashtag2,
		//geocode: 
		until: req.query.date_to,
		lang: "en",
		count: 100,
		result_type: "recent"
	};
	
	tweets = [];
	
	twit.get("/search/tweets.json", options, function(data)
	{
		if (data.statuses && data.statuses.length > 0) {
			for (var i = 0; i < data.statuses.length && tweets.length < 10; i++) {
				var raw   = data.statuses[i];
				
				tweet = {
					id: raw.id_str,
					text: raw.text,
					score: sentimental(raw.text).score
				};
				
				if (tweet.score >= req.query.score_min
					&& tweet.score <= req.query.score_max)
				{
					tweets.push(tweet);
				}
			}
		}
		success(tweets);
	});
}


// ===================== HOME PAGE ======================= //

app.get('/', function(req, res) {
	var content = fs.readFileSync("public/home.html");
	res.setHeader("Content-Type", "text/html; charset=utf8");
	res.send(content);
});



// ==================== SEARCH PAGE ====================== //

app.get("/search", function(req, res) {
		var content = fs.readFileSync("public/search.html").toString("utf8");
		content = content.replace("[MESSAGE]", "");
		res.setHeader("Content-Type", "text/html");
		res.send(content);
});

app.get("/test", function(req, res) {
	
	instagram.tags.media('snow', function (tag, error) {
		var content = fs.readFileSync("public/results.html").toString("utf8");
		
		var url = tag[0].images.thumbnail.url;
		var image = "<img src=" + url + "></img>";
		
		console.log(url);
		content = content.replace("[IMAGE]", image);
		
		res.setHeader("Content-Type", "text/html; charset=utf8");
		res.send(content);
	});
});



// =================== RESULTS PAGE ===================== //

app.get('/results', function(req, res) {
	var tag1 = req.query.hashtag1;
	var tag2 = req.query.hashtag2;
	
	if (!isValidHashtag(req.query.hashtag1)
		|| !isValidHashtag(req.query.hashtag2))
	{
		var content = fs.readFileSync("public/search.html").toString("utf8");

		content = content.replace("[MESSAGE]", "<p style=\"color: red;\">Error: Invalid Hashtag(s)</p >");
		res.setHeader("Content-Type", "text/html");
		res.send(content);
	}
	else {
		instagram.tags.media(tag1, function (media1, error1) {
		instagram.tags.media(tag2, function (media2, error2) {
		getTweets(req, res, function(tweets) {
			var content = fs.readFileSync("public/results.html").toString("utf8");
			var list    = "";
			content     = content.replace("[HASHTAG1]", tag1);
			content     = content.replace("[HASHTAG2]", tag2);
			var twitterContent = "";
			
			twitterContent += "<h4 style=\"text-align: center;\">Tweets with the hashtags \"";
			twitterContent += tag1 + "\" and \"" + tag2 + "\"</h4>";
			list += "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";
			
			if (tweets.length > 0) {
				for (var i = 0; i < tweets.length; i++) {
					tweet = tweets[i];
					list += "<li data-theme=\"c\"><a href=/tweet/" + tweet.id + ">";
					list += "[" + sentimental(tweet.text).score + "] ";
					list += tweet.text;
					list += "</a></li>";
				}
			}
			else {
				twitterContent = "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";
				twitterContent += "<li>No Twitter Results Found</li></ul>"
			}
			
			list += "</ul>";
			twitterContent += list;
			
			content = content.replace("[TWITTER]", twitterContent);
			
			// Display the Instagram Image.
			var instagramContent = "";
			if (!error1 && media1 && media1.length > 0) {
				instagramContent += "<h4 style=\"text-align: center;\">Instagram Image with the hashtag \""
						+ tag1 + "\"</h4>";
				var url = media1[0].images.thumbnail.url;
				instagramContent += "<img style=\"text-align: center;\" src="
						+ url + " style=\"text-align: center;\"></img>";
			}
			else {
				instagramContent += "<p style=\"text-align:center;\">(No instagrams images with the hashtag \""
						+ tag1 + "\" found)</p>";
			}
			if (!error2 && media2 && media2.length > 0) {
				instagramContent += "<h4 style=\"text-align: center;\">Instagram Image with the hashtag \""
						+ tag2 + "\"</h4>";
				var url = media2[0].images.thumbnail.url;
				instagramContent += "<img style=\"text-align: center;\" src="
						+ url + " style=\"text-align: center;\"></img>";
			}
			else {
				instagramContent += "<p style=\"text-align:center;\">(No instagrams images with the hashtag \""
						+ tag2 + "\" found)</p>";
			}
			content = content.replace("[INSTAGRAM]", instagramContent);
			
			res.setHeader("Content-Type", "text/html");
			res.send(content);
		})
		})
		});
	}
	/*
	instagram.tags.media(tag1, function (media1, error1) {
	instagram.tags.media(tag2, function (media2, error2) {
	twit.get("/search/tweets.json", options, function(data)
	{
		var content = fs.readFileSync("public/results.html").toString("utf8");
		var list    = "";
		
		content = content.replace("[HASHTAG1]", tag1);
		content = content.replace("[HASHTAG2]", tag2);
		
		// Create the list of tweets.
		var twitterContent = "";
		if (data.statuses && data.statuses.length > 0) {
			twitterContent += "<h4 style=\"text-align: center;\">Tweets with the hashtags \"";
			twitterContent += tag1 + "\" and \"" + tag2 + "\"</h4>";
			
			list += "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";
			for (var i = 0; i < data.statuses.length; i++) {
				var tweet = data.statuses[i];
				var valid = true;
				var score = sentimental(tweet.text).score;
				if (score < req.query.score_min || score > req.query.score_max)
					valid = false;
				
				if (valid) {
					list += "<li data-theme=\"c\"><a href=/results/";
					list += tag1 + "/" + tag2 + "/" + tweet.id_str + ">";
					list += "[" + sentimental(tweet.text).score + "] ";
					list += tweet.text;
					list += "</a></li>";
				}
			}
			list += "</ul>";
			
			twitterContent += list;
		}
		else {
			twitterContent = "<ul data-role=\"listview\" data-divider-theme=\"b\" data-inset=\"true\">";
			twitterContent += "<li>No Twitter Results Found</li></ul>"
		}
		content = content.replace("[TWITTER]", twitterContent);
		
		// Display the Instagram Image.
		var instagramContent = "";
		if (!error1 && !error2 && media1 && media1.length > 0) {
			var url = media1[0].images.thumbnail.url;
			instagramContent += "<img src=" + url + " style=\"text-align: center;\"></img>";
		}
		else {
			instagramContent += "<p style=\"text-align:center;\">(No instagrams results found)</p>";
		}
		content = content.replace("[INSTAGRAM]", instagramContent);
		
		
		res.setHeader("Content-Type", "text/html");
		res.send(content);
	});
	});
	});
	*/
});



// ==================== TWEET PAGE ====================== //

app.get('/tweet/:id', function(req, res) {
	var tag1 = req.params.hashtag1;
	var tag2 = req.params.hashtag2;
	var id   = req.params.id;
	
	twit.get("/statuses/show/" + id + ".json", {include_entities:true}, function(data) {
		var content = fs.readFileSync("public/tweet.html").toString("utf8");
		
		if (data.statusCode != 404) {
			tweet = fs.readFileSync("public/validTweet.html").toString("utf8");
			tweet = tweet.replace("[DATE]", data.created_at);
			tweet = tweet.replace("[TEXT]", data.text);
			tweet = tweet.replace("[SCORE]", sentimental(data.text).score);
			tweet = tweet.replace("[USER_NAME]", data.user.name);
			tweet = tweet.replace("[SCREEN_NAME]", data.user.screen_name);
			tweet = tweet.replace("[AVATAR]", "<img src=" + data.user.profile_image_url + "></img>");
			content = content.replace("[CONTENT]", tweet);
		}
		else {
			message = fs.readFileSync("public/invalidTweet.html").toString("utf8");
			content = content.replace("[CONTENT]", message);
		}
		res.setHeader("Content-Type", "text/html; charset=utf8");
		res.send(content);
	});
});



// Start the server.
app.listen(port);
console.log("Listening on Port 8000.");
