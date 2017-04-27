class HomeController < ApplicationController
  def index
    #personal_type 이라는 배열을 만듬
    #단, 배열 안에는 personal type은 8개이상이 되어야 한다
    #personal_types=["어리석음","바보같음","착함","못됨","까칠함","슬픔","화남","즐거움"]
    #your_types라는 변수에 personal_types에서 랜덤으로 추출한 성격 2가지를 저장시오
    #@your_types=personal_types.sample(2)
    
    #incdex.html에 쓸 내용들
    #<ul>
    #<li><%= "#{@your_types[0]}을 조금 넣고" %></li> 
    #<%= @your_types[0] %>을 조금넣고%>
    #<li><%= "#{@your_types[1]}도 세스푼" %></li>
    #</ul>
   
  end
  def pick_and_check
      
    age_types=["20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","37","39","41","43","45"]
    place_types=["미국 뉴욕","영국","한국 서울","일본","중국","한국 부산","러시아","미국 샌프란시스코"]
    job_types=["증권맨으","아나운서","영화 배우","프로그래머","가수"]
    image_types=["권지용","송민호","박보검"]
    @your_age=age_types[Random.new.rand(0..20)]
    @your_place=place_types[Random.new.rand(0..7)]
    @your_job=job_types[Random.new.rand(0..4)]
    random = Random.new.rand(1..3)
    @your_image=random
    @your_appearence=image_types[random-1]
    
  end
end
