ALL: dummy-webcam-dev.md dummy-webcam.html

dummy-webcam-dev.md: dummy-webcam
	shdoc < dummy-webcam > dummy-webcam-dev.md

dummy-webcam.html: dummy-webcam
	./dummy-webcam help html > dummy-webcam.html
