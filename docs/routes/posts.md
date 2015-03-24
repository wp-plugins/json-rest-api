# Posts

View and manage the Posts for your site.

NOTE: This document is a **work in progress**.

# /wp/posts

## GET



+ Response 200 (text/plain)

## PUT
OK, let's add another action. This time to put new data to our resource (essentially an update action). We will need to send something in a [request](http://www.w3.org/TR/di-gloss/#def-http-request) and then send a response back confirming the posting was a success (HTTP Status Code 204 ~ Resource updated successfully, no content is returned).

+ Request (text/plain)

        All your base are belong to us.

+ Response 204
+ Parameters
    + type (string) ... the type of Post.
