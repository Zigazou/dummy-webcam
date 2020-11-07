Dummy webcam
============

Dummy webcam is a Bash script which takes advantage of v4l2loopback and
ffmpeg to substitute a webcam stream with any file supported by ffmpeg.

Requirements
------------

On Debian/Ubuntu, you need to install the following packages:

    sudo apt install v4l2loopback-dkms v4l2loopback-utils ffmpeg

Setup
-----

You need to run `dummy-webcam setup` once before sending any file to the fake
webcam.

    dummy-webcam setup webcam

Note:
- This script requires root (sudo) permissions, don't be surprised if it
  asks for your password.
- it uses the first `/dev/video*` special file available.

Usage
-----

You can play any media file supported by ffmpeg with `dummy-webcam play`:

    dummy-webcam play example.gif example.jpg example.mp4

If the command line parameters are not correct, the script shows an help page.

Documentation generation
------------------------

The `Makefile` included in this project is only used to generate documentation
of this project. Running `make` is all you need.

It generates 2 files:

- [dummy-webcam-dev.md](dummy-webcam-dev.md]): source code documentation,
- [dummy-webcam.html](dummy-webcam.html): dummy-webcam user help.

Note: to generate source documentation, you will need the
[shdoc](https://github.com/reconquest/shdoc) command-line program.