#!/bin/bash
#
# users.sh
#
curl -X POST -H "Content-Type: application/json" -d '
{
	"username":"newuser",
	"name":"New User",
	"password":"secret",
	"email": "someone@example.com"
}
' -u admin:password http://local.wpapi.dev/wp-json/wp/users
# curl -u admin:password http://local.wpapi.dev/wp-json/wp/users/ --cookie-jar /tmp/cookie-jar

# curl -X PUT -H "Content-Type: application/json" -d '
# {
# 	"title": "Change Title",
# 	"content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mihi vero, inquit, placet agi subtilius et, ut ipse dixisti, pressius. Aut, Pylades cum sis, dices te esse Orestem, ut moriare pro amico? Nonne igitur tibi videntur, inquit, mala? Ita graviter et severe voluptatem secrevit a bono. Pauca mutat vel plura sane; Duo Reges: constructio interrete."
#  }
# ' -u admin:password http://local.wpapi.dev/wp-json/wp/posts/1723
#' -u admin:password http://local.wpapi.dev/wp-json/wp/posts

#curl -X PUT -H "Content-Type: application/json" -d '
# {
#	"key": "create_meta_test3",
#	"value": "rachel"
# }
#' -u admin:password --trace-ascii d.txt http://local.wpapi.dev/wp-json/posts/58/meta/104

#curl GET -u admin:password http://local.wpapi.dev/wp-json/posts/93/revisions

# Tests end points for the WP-API plugin locally.
# curl http://local.wpapi.dev/wp-json/
#  # 	"title":"Bears Beat the Packers",
 # 	"content_raw":"<p>The Bears took the first possession in overtime and won the game on a 38 yard field goal by Robbie Gould.<\/p>",
 # 	"excerpt_raw":"Bears win",
 # 	"status": "publish",
	# "sticky": false,
# curl -X POST -H "Content-Type: application/json" -d '
# {
# 		"key" : "winning_kick_yay",
# 		"value" : "38 yards"
# }
# ' -u admin:password http://local.wpapi.dev/wp-json/posts/145/meta

#
# curl -X POST -H "Content-Type: application/json" -d '
# {
#  	"title":"Testing sticky and meta creation",
#  	"content_raw":"this should be stuck as a post.  Stuck on you.",
#  	"status": "publish",
# 	"sticky": true,
#  	"post_meta" : [
#  		{
#  			"key" : "rb_meta_test2_key",
#  			"value" : "foobar bar and foo"
#  		}
#  	]
# }
# ' -u admin:password http://local.wpapi.dev/wp-json/posts/
#

#"date":"2010.01.01T12.34"
# "excerpt_raw":"Excerpt",
# "post_meta" : [{
#     "key" : "rb_meta_test_key",
#     "value" : ["bar", "foo"],
#     "action" : "add"
# }],
# "post_status" : "publish"
# curl -u admin:password http://local.wpapi.dev/wp-json/posts/58/meta/

# curl -X PUT -H "Content-Type: application/json" -d '
#  {
#  	"title":"Creating sticky post with meta",
#  	"content_raw":"this has to work, or at least I hope it works!",
#  	"excerpt_raw":"Excerpt",
# 	"sticky": true,
#  	"post_meta" : [{
#  		"key" : "rb_meta_test_key",
#  		"value" : ["bar", "foo", "aaa"],
# 		"action" : "update"
#  		},
#  		{
#  			"key" : "rb_meta_test2_key",
#  			"value" : "foobar bar and foo",
#  			"action" : "add"
#  		}
#  	],
#  	"post_status" : "publish"
#  }
#  ' -u admin:password http://local.wpapi.dev/wp-json/posts/58
