#include "Hazel.h"
class SandboxApp : public Hazel::Application {
public:
	SandboxApp() {

	}
	~SandboxApp() override{

	}
};
Hazel::Application* Hazel::createApplication() {
	return new SandboxApp();
}