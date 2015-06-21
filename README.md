## Example Rails Routing with Dynamic Params

Sample Rails application to demonstrate how Rails handles dynamic urls that
include characters that are not valid in a URI component (specifically, the slash `/` character).

Try visiting:

  * `/users` -> Will create-if-not-exists a user with id `"user-id/with/slashes"` and `redirect_to` that user.
    See how this is represented in the browser's location.
  * `/users/:some_id` -> Will print out the value that the `UsersController` sees in `params[:id]`. Typical examples like `/users/1` and `/users/abc` display the expected values. A URL with a uri-encoded component (like `/users/abc%2Fdef`) will display the decoded value (`"abc/def"`, in this case).

See a demo at heroku: [https://decode-uri-rails-example.herokuapp.com/](https://decode-uri-rails-example.herokuapp.com/).
