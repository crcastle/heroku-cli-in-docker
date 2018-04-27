# Heroku CLI Docker Image (unofficial)

This provides a Docker image containing:

* Heroku CLI
* curl
* dnsutils
* git
* psql

It can be used from the Heroku Dashboard from any web browser (e.g. desktop, phone, tablet) like this:

[]()
![Screencast](screencast.gif "Screencast")

## Usage

Clone this repo, then run the below commands

```
$ cd heroku-cli-in-docker
$ heroku create
$ heroku container:login
$ heroku container:push web
$ heroku run zsh
```

Optionally, you can auto-login to your Heroku account with the command below. By passing your Heroku API/Auth token into the app you will be 'logged' into
your Heroku account.

```
$ heroku run zsh -e HEROKU_API_KEY=<your api key>
```

If you don't do that, then login to your Heroku account once you're on the dyno.

```
[  ]→ heroku login
```