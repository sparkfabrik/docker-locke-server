# Locke Docker image

> **NOTE**: This repository is no longer maintained and it has been archived.  
> In can still be forked and remains read-only.

A Docker image to expose your Markdown-based project documentation with [Locke](https://github.com/sparkfabrik/locke).

## Content

The last version of this image is based on Node 7.10.0-slim and Locke.

## Usage

This image works mounting a local documentation folder in a volume inside the container, and exposing Locke on port 80 (standard).
It also supports a custom configuration file for Locke.

To run the image mounting only documentation's folder issue:

`docker run -p 80:80 -v </path/to/your/content>:/srv/locke/content -d sparkfabrik/docker-locke-server`

To run the image with documentation's folder and a custom config file issue:

`docker run -p 80:80 -v </path/to/your/content-folder>:/srv/locke/content -v </path/to/your/config-file>:/srv/locke/config.js  -d sparkfabrik/docker-locke-server`

You can then browse your content visiting:

    http://localhost:80

## Contributions and todo

* PRs are welcome, I'll try to review them as quickly as possible.
* I'm not fond at all of the way configuration is included. It would be top to have a default config and a local one in content directory. I'm not that skilled in node.js to know hot to achieve this ATM. If anyone has a good idea, PR it to me.
* Currently only standard theme is available in the image. Being able to dinamically read new themes from local volume would be great. Same as above.

## Credits

Thanks to chanux who inspired me a bit with his [Chanux Raneto Docker image](https://github.com/chanux/docker-raneto).
Thanks to my colleague Paolo Mainardi who forced me to consider Docker as an actual tool, explained me lot of black magic and gave me great advices on sucha small Dockerfile.
Raneto team for providing a simple and effective tool for this widespread need. Exactly what I was looking for! :)
