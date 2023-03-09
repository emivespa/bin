# ~/bin/.

For a complete list, run `make whatis`.

	backup lists of pointers to things

		Musicbak  ~/Music folder content as youtube links
		aptbak    installed package names
		git-urls  remote URLs for all repos under ./

	comfy wrappers around tiring-to-type commands

		datex  date: day of year, human readable, file sorting, unix epoch, YYYYmmdd
		yd     youtube-dl/yt-dlp

	edit thing as if "in place"

		gist    new Github gist
		ix      ix pastebin entry
		v3      s3 objects
		viclip  clipboard contents

	fzf thing id pickers

		aptf      apt packages (feeds to `apt list`)
		dockerx   docker IDs (running containers, images, most things)
		emoji
		git-shax  commit IDs
		psx       PIDs
		s3x       s3 URIs

	organize downloads based on URL

		curlx
		git-clonex

## TODO

	[ ] fix ydr to work with yt-dlp
	[ ] clean up emoji
	[ ] fully compatible moreutils fallbacks
		[ ] sponge
			* can emulate by calling cat within variable assignment?
		[ ] vipe
	[ ] fallback markdown that's not Markdown.pl

## Ideas

* custom website archival utility? https://www.gwern.net/Archiving-URLs
* something like luke smith's "copy command" script, but less hacky by way of
  using bash history instead of PS1 regex
