(setf *random-state* (make-random-state t))
(let (
		(ptn '("ズン" "ドコ"))
		(fin "キ・ヨ・シ!")
		(log '("" "" "" "" ""))
		(ans "ズンズンズンズンドコ")
		last)

	(loop
		(setf last (nth(random(length ptn)) ptn))
		(princ last)(force-output)
		(pop log)
		(setf log (nconc log `(,last)))
		(when(string= ans (format nil "~{~A~}" log)) (return))
		(sleep 0.2))

	(format t "~A~%" fin))
