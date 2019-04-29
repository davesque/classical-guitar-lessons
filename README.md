# Guitar Lesson Resources

This is a collection of resources I use for teaching classical guitar lessons.
It includes sheet music for exercises and repertoire typeset with
[LilyPond](http://lilypond.org/index.html).

## Installing LilyPond

Visit the LilyPond downloads page [here](http://lilypond.org/download.html) to
get a distribution for your platform.

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

Now, you can use the included `Makefile` to build the sheet music:
```bash
make build
```
