# README

* 모듈화 방법
-------------
<p>* 우선 /config/application.rb 에서 config.autoload_paths += %W(#{config.root}/lib)의 주석을 제거한다. lib 디렉토리 내의 rb파일을 autoload하겠다는 뜻이다.</p>
<p>* lib 디렉토리내의 rb파일명은 모듈의 class명과 일치해야 한다. 대문자가 등장할 때마다 언더바를 넣는 형식이다(camel case) ex) class명이 SchoolFood라면 파일명은 school_food.rb</p>
<p>* 자신의 컨트롤러에서 위의 경우 require 'school_food'를 통해서 모듈을 사용할 수 있다.</p>
<p><a href="http://discourse.codenewbie.org/t/rails-experts-i-cant-include-ruby-files-from-lib-dir/528/2">출처 : http://discourse.codenewbie.org/t/rails-experts-i-cant-include-ruby-files-from-lib-dir/528/2</a></p>