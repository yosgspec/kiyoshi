using System;
using System.Collections.Generic;
using System.Threading;

class Program{
	static readonly Random rand=new Random();

	static void Main(){
		string[] ptn={"ズン","ドコ"};
		const string fin="キ・ヨ・シ!";
		var log=new LinkedList<string>(new[]{"","","","",""});
		const string ans="ズンズンズンズンドコ";

		for(;;){
			var last=ptn[rand.Next(ptn.Length)];
			Console.Write(last);
			log.RemoveFirst();
			log.AddLast(last);
			if(ans==string.Join("",log)) break;
			Thread.Sleep(200);
		}
		Console.WriteLine(fin);
	}
}
