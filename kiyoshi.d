import std.stdio;
import std.array;
import std.random;
import std.conv;
import std.windows.charset;
import core.thread;

void main(){
	immutable ptn=["ズン","ドコ"];
	immutable fin="キ・ヨ・シ!";
	auto log=["","","","",""];
	immutable ans="ズンズンズンズンドコ";

	for(;;){
		auto last=ptn[uniform(0,ptn.length)];
		write(last.toMBSz.to!string);stdout.flush();
		log.popFront();
		log~=last;
		if(ans==log.join("")) break;
		Thread.sleep(dur!("msecs")(200));
	}
	writeln(fin.toMBSz.to!string);
}
