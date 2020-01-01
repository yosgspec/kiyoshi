(require '[clojure.string :as string])

(let [
		ptn,["ズン" "ドコ"]
		fin,"キ・ヨ・シ!"
		ans,"ズンズンズンズンドコ"]

	(loop[log,["" "" "" "" ""]]
		(let [
				last,(rand-nth ptn)
				log,(vec(rest(conj log last)))]
			(print last)
			(when-not(= ans (string/join "" log))
				(recur log))))

	(println fin))
