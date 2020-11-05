Dummy webcam
============

Dummy webcam is a set of 2 Bash scripts which take advantage of v4l2loopback and
ffmpeg to substitute a webcam stream with any file supported by ffmpeg.

Requirements
------------

On Debian/Ubuntu, you need to install the following packages:

    sudo apt install v4l2loopback-dkms v4l2loopback-utils ffmpeg

Setup
-----

You need to run `dummy_webcam_setup` once before sending any file to the fake
webcam.

    dummy_webcam_setup

Note:
- This script requires root (sudo) permissions, don't be surprised if it
  asks for your password.
- it uses the `/dev/video0` special file.

Usage
-----

The `dummy_webcam_show` script is all you need:

    dummy_webcam_show example.gif
    dummy_webcam_show example.jpg
    dummy_webcam_show example.mp4

Any file supported by ffmpeg should work.

