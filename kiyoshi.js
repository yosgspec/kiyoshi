"use strict";
const sleep=require("util").promisify(setTimeout);

(async function(){
	const ptn=["ズン","ドコ"];
	const fin="キ・ヨ・シ!";
	const log=["","","","",""];
	const ans="ズンズンズンズンドコ";

	for(;;){
		let last=ptn[0|Math.random()*ptn.length];
		process.stdout.write(last);
		log.shift();
		log.push(last);
		if(ans==log.join("")) break;
		await sleep(200);
	}
	console.log(fin);
})();
