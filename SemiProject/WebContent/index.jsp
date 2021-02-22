<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");%>
    
<!DOCTYPE HTML>

<html>
<head>
<title>예매메인</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<script src="./jquery-3.5.1.js"></script>
<script>
window.onload=function(){
   kaja();
}

function kaja(){                    
   if(document.cookie.indexOf("annaeCookie=kongji1") == -1){ 
      window.open("pop.html","cookieWin2",
             "width=320px, height=390px, top=20px, left=100px, top=100px, toolbar=0,  location=no, status=yes, menubars=0, scrollbars=0, resizable=0, location=0, directories=0")
   }
} 

</script>
</head>
<body >



   <!-- Header  대   -->
   <header id="header" class="alt">
      <div class="logo">
         <a href="index.html">HOME</a>
      </div>
      <a href="#menu">메뉴</a>
   </header>

   <!-- Nav  ㅻ  -->
   <nav id="menu">
      <ul class="links">
         <li><a href="index.html">홈</a></li>
         <li><a href="login.jsp">로그인</a></li>
         <li><a href="join.jsp">회원가입</a></li>
         <li><a href="store.html">장바구니</a></li>

      </ul>
   </nav>

   <!-- Banner 諛곕   -->
   <section class="banner full">
      <article>
        <img src="images/poster1.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>작은 신의 아이들</h2>
            </header>
         </div>
         
      </article>
      <article>
         <img src="images/poster2.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>Day Of Being Wild</h2>
            </header>
         </div>
      </article>
      <article>
         <img src="images/poster3.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>SHOW CAR</h2>
            </header>
         </div>
      </article>
      <article>
         <img src="images/poster4.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>당신의 꿈을 삽니다</h2>
            </header>
         </div>
      </article>

      <article>
         <img src="images/poster5.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>WANGKARWAI</h2>
            </header>
         </div>
      </article>

      <article>
         <img src="images/poster6.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>SPECIAL GALA</h2>
            </header>
         </div>
      </article>
      
      <article>
         <img src="images/poster7.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>Imago and Scent</h2>
            </header>
         </div>
      </article>
      
      <article>
         <img src="images/poster8.jpg" alt="" />
         <div class="inner">
            <header>
               <p>WELCOME</p>
               <h2>민중의 귀로 다시듣는 토끼뎐</h2>
            </header>
         </div>
      </article>

   </section>

   <!-- hot  멸린-->
   <section id="one" class="wrapper style2">
      <div class="inner">
         <header class="align-center">
            <h1>HOT 🔥</h1>
         </header>
         <div class="grid-style">

            <div>
               <div class="box">
                  <div class="image fit"><a href="show1.jsp">
                     <img src="images/poster1.jpg" alt="" /></a>
                  </div>
                  <div class="content">
                     <header class="align-center">
                        <h2>작은 신의 아이들</h2>
                            <p><h3>홍길동 , 김철수 , 김비비 , 김길동 등</h3></p>
                     </header>
                     
                     <footer class="align-center">
                        <a href="getinfo.do?" class="button alt">예매하기</a>
                     </footer>
                  </div>
               </div>
            </div>

            <div>
               <div class="box">
                  <div class="image fit"><a href="show2.jsp">
                     <img src="images/poster2.jpg" alt="" /></a>
                  </div>
                  <div class="content">
                     <header class="align-center">
                        <h2>Day of Being Wild</h2>
                            <p><h3>아이스 , 맹구 , 훈이 등</h3></p>
                     </header>
                     
                     <footer class="align-center">
                        <a href="getinfo2.do" class="button alt">예매하기</a>
                     </footer>
                  </div>
               </div>
            </div>

         </div>
      </div>
   </section>

   
<!-- new  곗  紐  -->
   <section id="two" class="wrapper style3">
      <div class="inner">
         <header class="align-center">
            <p>NEW</p>
            <h2>공연들</h2>
         </header>
      </div>
   </section>


<!-- new -->

<div class= "wrapper style2">
   <ul class="cards">
      <li>
         <div class="serveimg">
            <a href="show3.jsp"><img src="images/poster3.jpg" id="serveimg"></a>
         </div>
         <div class="img-text"><br>
         <div class="ticket-date">2021.03.10~</div>
         <div class="ticket-name">Show Car</div></div>
      </li>

      <li>
         <div class="serveimg">
            <a href="show4.jsp"><img src="images/poster4.jpg" id="serveimg"></a>
         </div>
         
         <div class="img-text"><br>
         <div class="ticket-date">2021.04.01~</div>
         div class="ticket-name">당신의 꿈을 삽니다</div></div>
      </li>

      <li>
         <div class="serveimg">
            <a href="show5.jsp"><img src="images/poster5.jpg" id="serveimg"></a>
         </div>
         <div class="img-text"><br>
         <div class="ticket-date">2021.03.05~</div>
         <div class="ticket-name">왕가위 특별전</div></div>
      </li>

      <li>
         <div class="serveimg">
            <a href="show6.jsp"><img src="images/poster6.jpg" id="serveimg"></a>
         </div>
         <div class="img-text"><br>
         <div class="ticket-date">2021.03.05~</div>
         <div class="ticket-name">Special Gala</div></div>
      </li>
   </ul>
</div>


   <!-- <button id="btnAll">+   蹂닿린</button> -->
   
   <!-- 怨듭 곗  泥   곗  紐  -->
   <section id="three" class="wrapper style3">
      <div class="inner">
         <header class="align-center">
            <p>All</p>
            <h3>공연들</h3>
         </header>
      </div>
   </section>


   <!-- 怨듭     泥   щ 쇱 대   -->

<div class="all">
<div class="slide_wrapper">
   <ul class="slides">
      <li><a href="show1.jsp"><img src="images/poster1.jpg" alt="" id="ss" /></a></li>
      <li><a href="show2.jsp"><img src="images/poster2.jpg" alt="" id="ss" /></a></li>
      <li><a href="show3.jsp"><img src="images/poster3.jpg" alt="" id="ss" /></a></li>
      
      <li><a href="show4.jsp"><img src="images/poster4.jpg" alt="" id="ss" /></a></li>
      <li><a href="show5.jsp"><img src="images/poster5.jpg" alt="" id="ss" /></a></li>
      <li><a href="show6.jsp"><img src="images/poster6.jpg" alt="" id="ss" /></a></li>
      
      <li><a href="show7.jsp"><img src="images/poster7.jpg" alt="" id="ss" /></a></li>
      <li><a href="show8.jsp"><img src="images/poster8.jpg" alt="" id="ss" /></a></li>
      <li><a href="show8.jsp"><img src="images/poster8.jpg" alt="" id="ss" /></a></li>
   </ul>
</div>


   <p class="controls">
   <span class="prev"><img src="images/icon_prev.png"></span>
   <span class="next"><img src="images/icon_next.png"></span> 
   </p>
</div>


<script>
var slides = document.querySelector('.slides'),
slide = document.querySelectorAll('.slides li'),
currentIdx = 0,
slideCount = slide.length,
prevBtn = document.querySelector('.prev'),
slideWidth = 158,
slideMargin = 30,
nextBtn = document.querySelector('.next');

slides.style.width = (slideWidth + slideMargin)*slideCount - slideMargin+'px';

function moveSlide(num){
   
   slides.style.left = -num * 200+'px';
   currentIdx = num;
}
nextBtn.addEventListener('click',function(){
   if(currentIdx < slideCount-7){
      moveSlide(currentIdx + 1);
   }else{
      moveSlide(0);   
   }
});

prevBtn.addEventListener('click',function(){
   if(currentIdx > 0){
      moveSlide(currentIdx - 1);
   }else{
      moveSlide(slideCount-7);   
   }
});
</script>

   

<!-- 愿 怨   곗  紐  -->
   <!-- <section id="four" class="wrapper style3">
      <div class="inner">
         <header class="align-center">
            <p>愿 怨 </p>
            <h2>愿 怨 </h2>
         </header>
      </div>
   </section> -->

<!-- 愿 怨  -->
   <!-- <div class="last">
      <div class="lleft"><h1>Focus ON</h1></div>
      <div class="lright">video</div>
   </div> -->




   <!-- Footer 諛 -->
   <footer id="footer">
      <div class="container">
         <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-facebook"><span
                  class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-instagram"><span
                  class="label">Instagram</span></a></li>
            <li><a href="#" class="icon fa-envelope-o"><span
                  class="label">Email</span></a></li>
         </ul>
      </div>
      <div class="copyright">&copy; 서울특별시 종로3가 (주)케이지아이티뱅크 빌딩 4층 대표
         홍길동 사업자등록번호 123-45-678910</div>
   </footer>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.scrollex.min.js"></script>
   <script src="assets/js/skel.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

</body>
</html>