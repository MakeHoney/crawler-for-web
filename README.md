# README

* 모듈화 방법
-------------
<p>* 우선 /config/application.rb 에서 config.autoload_paths += %W(#{config.root}/lib)의 주석을 제거한다. lib 디렉토리 내의 rb파일을 autoload하겠다는 뜻이다.</p>
<p>* lib 디렉토리내의 rb파일명은 모듈의 class명과 일치해야 한다. 대문자가 등장할 때마다 언더바를 넣는 형식이다(camel case) ex) class명이 SchoolFood라면 파일명은 school_food.rb</p>
<p>* 자신의 컨트롤러에서 위의 경우 require 'school_food'를 통해서 모듈을 사용할 수 있다.</p>
<p><a href="http://discourse.codenewbie.org/t/rails-experts-i-cant-include-ruby-files-from-lib-dir/528/2">출처 : http://discourse.codenewbie.org/t/rails-experts-i-cant-include-ruby-files-from-lib-dir/528/2</a></p>

<p>* 여러개의 클래스를 모듈에 넣어서 사용하고 싶다면, 클래스들을 모듈안에 넣어 놓고, 위 방식을 그대로 module에 적용한다.(모듈명과 파일명 일치 시키는 것, require '모듈명'으로 임포트하는 작업) 단, 인스턴스 생성과정에서 @tmp = SchoolFood.new()가 아닌 @tmp = Crawl::SchoolFood.new()로 인스턴스를 생성해야한다. 이해가 가지 않을 시에 코드를 참조하면 될 듯하다.</p>
<p>아직 루비의 OOP문법이 와닿지 않는다... 이것저것 만들어가면서 알아가야겠다.. 총총</p>