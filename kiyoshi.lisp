(setf *random-state* (make-random-state t))
(let (
		(ptn '("�Y��" "�h�R"))
		(fin "�L�E���E�V!")
		(log '("" "" "" "" ""))
		(ans "�Y���Y���Y���Y���h�R")
		last)

	(loop
		(setf last (nth(random(length ptn)) ptn))
		(princ last)(force-output)
		(pop log)
		(setf log (nconc log `(,last)))
		(when(string= ans (format nil "~{~A~}" log)) (return))
		(sleep 0.2))

	(format t "~A~%" fin))
