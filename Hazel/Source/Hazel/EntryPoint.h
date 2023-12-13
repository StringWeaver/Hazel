#pragma once
namespace Hazel {
	//extern Application* createApplication();
}
int main(int argc, int** argv) {
	auto pApp = Hazel::createApplication();
	pApp->run();
	delete pApp;
	return 0;
}