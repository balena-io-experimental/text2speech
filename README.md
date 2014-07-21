# Resin.io -- Simple text-to-speech demo

## How it works

This demo uses Google's Text-To-Speech endpoint to get an MP3 audio stream of the supplied text.
Then it uses the `node-lame` module to decode the MP3 stream to raw audio and finally
passes the raw audio stream to `node-speaker` which plays it using the RaspberryPi's
soundcard.

## How to use

To use this demo project, first clone this repo on your local machine. Then go to your
Resin dashboard and create an application or use one that you've already created. You
have to add the resin remote to your local git repo in order to `git push resin master`.

To do that, copy the remote and issue the following command in the folder containing this
repo:

```bash
git remote add resin git@git.resin.io:username/test.git
```

You should be able to `git push resin master` to your devices!

**Note**: If you used an already existing application that you've previously pushed other code
to you will have to do `git push --force resin master` the first time to delete the previous
commits.
