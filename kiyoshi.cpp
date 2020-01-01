#include <iostream>
#include <string>
#include <deque>
#include <random>
#include <thread>
#include <chrono>
using namespace std;

string join(deque<string> lst){
	string s;
	for(auto ss:lst) s+=ss;
	return s;
}

int main(){
	random_device sd;
	mt19937 rand(sd());
	string ptn[]={"ズン","ドコ"};
	const auto fin="キ・ヨ・シ!";
	deque<string> log={"","","","",""};
	const auto ans="ズンズンズンズンドコ";

	for(;;){
		auto last=ptn[rand()%(int)(size(ptn))];
		cout<<last<<flush;
		log.pop_front();
		log.push_back(last);
		if(ans==join(log)) break;
		this_thread::sleep_for(chrono::milliseconds(200));
	}
	cout<<fin<<endl;
	return 0;
}
