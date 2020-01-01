import time
import random

if __name__=="__main__":
	ptn=["ズン","ドコ"]
	fin="キ・ヨ・シ!"
	log=["","","","",""]
	ans="ズンズンズンズンドコ"

	while True:
		last=random.choice(ptn)
		print(last,end="",flush=True)
		log.pop(0)
		log.append(last)
		if ans=="".join(log): break
		time.sleep(0.2)

	print(fin)
