(define (batch-resize-rename pattern width height)
(let* ((filelist (cadr (file-glob pattern 1))))
(while (not (null? filelist))
(let* ((filename (car filelist))
(image (car (gimp-file-load RUN-NONINTERACTIVE filename filename)))
(drawable (car (gimp-image-get-active-layer image))))
(gimp-image-scale-full image width height INTERPOLATION-CUBIC)
(let ((nfilename (string-append "a" filename)))
(gimp-file-save RUN-NONINTERACTIVE image drawable nfilename nfilename))
(gimp-image-delete image))
(set! filelist (cdr filelist)))))