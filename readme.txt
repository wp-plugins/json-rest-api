=== JSON REST API ===
Contributors: rmccue
Tags: json, rest, api, rest-api
Requires at least: 3.5
Tested up to: 3.5
Stable tag: 0.1.1
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

JSON-based REST API for WordPress, developed as part of GSoC 2013.

== Description ==
This is a project to create a JSON-based REST API for WordPress. This project is
run by Ryan McCue and is part of the WordPress 2013 GSoC projects.

All tickets for the project are being tracked on the [GSoC Trac][]. Make sure
you use the JSON REST API component.

[GSoC Trac]: https://gsoc.trac.wordpress.org/query?component=JSON+REST+API

== Installation ==

### As a Plugin
Drop this directory in and activate it. You need to be using pretty permalinks
to use the plugin, as it uses custom rewrite rules to power the API.

### As Part of Core
Drop `wp-json.php` into your WordPress directory, and drop
`class-wp-json-server.php` into your `wp-includes/` directory. You'll need
working `PATH_INFO` on your server, but you don't need pretty permalinks
enabled.

== Changelog ==

= 0.1.1 =
* No changes, process error

= 0.1 =
* Enable the code to be used via the plugin architecture (now uses rewrite rules
	if running in this mode)
* Design documents are now functionally complete for the current codebase
	([#264][])
* Add basic writing support ([#265][])
* Filter fields by default - Unfiltered results are available via their
	corresponding `*_raw` key, which is only available to users with
	`edit_posts` ([#290][])
* Use correct timezones for manual offsets (GMT+10, e.g.) ([#279][])
* Allow permanently deleting posts ([#292])
* [View all changes](https://github.com/rmccue/WP-API/compare/b3a8d7656ffc58c734aad95e0839609011b26781...0.1.1)

[#264]: https://gsoc.trac.wordpress.org/ticket/264
[#265]: https://gsoc.trac.wordpress.org/ticket/265
[#279]: https://gsoc.trac.wordpress.org/ticket/279
[#290]: https://gsoc.trac.wordpress.org/ticket/290
[#292]: https://gsoc.trac.wordpress.org/ticket/292

= 0.0.4 =
* Hyperlinks now available in most constructs under the 'meta' key. At the
	moment, the only thing under this key is 'links', but more will come
	eventually. (Try browsing with a browser tool like JSONView; you should be
	able to view all content just by clicking the links.)
* Accessing / now gives an index which briefly describes the API and gives
	links to more (also added the HIDDEN_ENDPOINT constant to hide from this).
* Post collections now contain a summary of the post, with the full post
	available via the single post call. (prepare_post() has fields split into
	post and post-extended)
* Post entities have dropped post_ prefixes, and custom_fields has changed to
	post_meta.
* Now supports JSONP callback via the _jsonp argument. This can be disabled
	separately to the API itself, as it's only needed for
	cross-origin requests.
* Internal: No longer extends the XMLRPC class. All relevant pieces have been
	copied over. Further work still needs to be done on this, but it's a start.
 
= 0.0.3 =
 - Now accepts JSON bodies if an endpoint is marked with ACCEPT_JSON
