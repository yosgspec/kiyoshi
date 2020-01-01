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
	string ptn[]={"�Y��","�h�R"};
	const auto fin="�L�E���E�V!";
	deque<string> log={"","","","",""};
	const auto ans="�Y���Y���Y���Y���h�R";

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
