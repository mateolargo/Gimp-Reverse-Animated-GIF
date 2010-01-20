(define (reverse-gif filename outputname)

(let* (
        (image (car (file-gif-load RUN-NONINTERACTIVE filename filename)))
        (drawable (car (gimp-image-get-active-layer image))))
        
    (script-fu-reverse-layers RUN-NONINTERACTIVE image drawable)
	(file-gif-save RUN-NONINTERACTIVE image drawable outputname outputname 1 1 100 0)
	(gimp-image-delete image)
)
)

(script-fu-register "reverse-gif"
    "<Image>/Script-Fu/Reverse Animation"
    "Reverses an animated GIF"
    "Matt Long"
    "Matt Long"
    "Jan 2010"
    ""
    SF-VALUE "File Name" "/tmp/x.gif"
    SF-VALUE "Output Name" "/tmp/y.gif"
)

