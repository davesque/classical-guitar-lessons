# Guitar Lesson Resources

This is a collection of resources I use for teaching classical guitar lessons.
It includes sheet music for exercises and repertoire typeset with
[LilyPond](http://lilypond.org/index.html).

## Installing LilyPond

Visit the LilyPond downloads page [here](http://lilypond.org/download.html) to
get a distribution for your platform.

## Building the sheet music

Build the sheet music with the included `Makefile`:
```bash
make build
```

This assumes there is an executable called `lilypond` in your path.  For mac
users, see below for instructions on how to create a wrapper script for
LilyPond.

### Using LilyPond from the command line on macOS

After running the LilyPond installer, create a bash script with the following
content named `lilypond`:
```bash
#!/usr/bin/env bash

set -o nounset
set -o errexit

exec /Applications/LilyPond.app/Contents/Resources/bin/lilypond "$@"
```

Make the script executable:
```bash
chmod u+x lilypond
```

Finally, place the script somewhere on your path.
