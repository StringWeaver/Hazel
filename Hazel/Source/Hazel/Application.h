#pragma once
#include "Core.h"
namespace Hazel {
	class  HZ_API Application
	{
		public:
		Application();
		virtual ~Application();
		void run();
	};
	Application* createApplication(); //在客户端里定义
}

