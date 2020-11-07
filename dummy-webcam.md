# dummy-example

Use any media file as a source for videoconferencing applications.

## Overview



## Index

* [assert()](#assert)
* [generate_help()](#generatehelp)
* [show_help()](#showhelp)
* [get_id_v4l_product()](#getidv4lproduct)
* [find_v4l2loopback_file()](#findv4l2loopbackfile)
* [setup_video()](#setupvideo)
* [find_dummy_mic()](#finddummymic)
* [setup_audio()](#setupaudio)
* [play_media_file()](#playmediafile)
* [play_media_files()](#playmediafiles)

### assert()

Assert function for Bash.

#### Example

```bash
assert "File not found" test -r /dev/null
```

#### Arguments

* **$1** (string): The message to display if the assertion fails.
* **$2** (string): The command to execute.
* ... any The parameters to give to the command to be executed.

#### Exit codes

* **0**: If the assertion is validated.

#### Output on stdout

* The stdout of the command executed.

### generate_help()

Generate the help for this script in groff format.

_Function has no arguments._

#### Exit codes

* **0**: Should be the normal exit value.

#### Output on stdout

* Help in groff format.

### show_help()

Show help for this script like a man page.

_Function has no arguments._

#### Exit codes

* **0**: Should be the normal exit code.

#### Output on stdout

* The standard output is sent to the less command.

### get_id_v4l_product()

Get the ID_V4L_PRODUCT property of a special file.

#### Example

```bash
get_id_v4l_product /dev/video0
```

#### Arguments

* **$1** (string): The special file to look for the ID_V4L_PRODUCT property.

#### Exit codes

* **0**: Should be the normal value.

#### Output on stdout

* The ID_V4L_PRODUCT property (may be an empty string).

### find_v4l2loopback_file()

Look for the v4l2loopback /dev/video* file.

#### Example

```bash
find_v4l2loopback
```

#### Arguments

* **$1** (string): The special file to look for the ID_V4L_PRODUCT property.

#### Exit codes

* **0**: Should be the normal value.

#### Output on stdout

* The ID_V4L_PRODUCT property (may be an empty string).

### setup_video()

Setup the video environment of dummy-webcam.

#### Arguments

* **$1** (string): Pixel format used by the video stream.
* **$2** (int): Width in pixels of the video stream.
* **$3** (int): Height in pixels of the video stream.

### find_dummy_mic()

Look for an existing DummyMic sink in PulseAudio.

_Function has no arguments._

#### Exit codes

* **0**: Should be the normal value.

#### Output on stdout

* The ID_V4L_PRODUCT property (may be an empty string).

### setup_audio()

Setup the audio environment of dummy-webcam.

_Function has no arguments._

### play_media_file()

Send media file to the v4l2loopback and the DummyMic sink.

#### Example

```bash
play_media_file /dev/video0 1280 720 video.mp4
```

#### Arguments

* **$1** (string): The v4l2loopback special file.
* **$2** (int): Width in pixels of the video stream to generate.
* **$3** (int): Height in pixels of the video stream to generate.
* **$4** (string): The media file to play.

#### Exit codes

* **0**: Should be the normal value.

#### Output on stdout

* Indicates which file is playing.

### play_media_files()

Send multiple media files to the v4l2loopback and the DummyMic
sink.

#### Example

```bash
play_media_files 1280 720 video1.mp4 video2.mp4
```

#### Arguments

* **$1** (int): Width in pixels of the video stream to generate.
* **$2** (int): Height in pixels of the video stream to generate.
* ... string The media files to play.

#### Output on stdout

* Indicates which file is playing.

