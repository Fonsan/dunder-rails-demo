This app is using [dunder](https://github.com/Fonsan/dunder) to prove concurrent database requests in rails. Dunder requires ruby 1.9.*

	Started GET "/" for 127.0.0.1 at 2011-02-15 23:50:53 +0100
	  Processing by FrontController#index as HTML
	  Widget Load (1000.4ms)  select sleep(1),'first'
	  Widget Load (1000.5ms)  select sleep(1),'second'
	Rendered front/index.html.erb within layouts/application (1006.4ms)
	Completed 200 OK in 1031ms (Views: 1025.6ms | ActiveRecord: 0.0ms)
	


It takes 1024.6ms to complete a request that does two queries each taking 1000.ms, queries scale!

If you run concurrent requests I recommend setting a higher value of pool in database.yml
