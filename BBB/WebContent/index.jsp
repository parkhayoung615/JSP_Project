<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>B.B.B</title>

    <link rel="stylesheet" href="./css/main.css">
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <!--
        Base Base Ball
        클래스명에 하이픈(-)만 사용 ! 언더바(_) 사용 금지
        큰 틀에 wrap 기본 사용
        
        
        mypage에서 삭제 누르면 delete 구현
    -->
    <div class="wrapper">
        <!-- header 영역 -->
 		<%@ include file="./view/header.jsp"%>
        <!-- 풀페이지 영역 -->
        <div id="fullpage">
            <!-- 메인 영역 -->
            <!-- 첫 번째 영역 -->
            <section class="section one">
                <div class="slide" id="slide1">
                    <!-- 색상 .. 떄문에 half 써줌 -->
                    <div class="half">
                        <div id="visual">
                            <div data-aos="fade-up">
                                <div class="visual-tit">
                                    <div class="tit">BASIC.<br>
                                        <span class="sub-tit">기본의, 기본을 위한, 기본에 의해.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="visual-wrap">
                                <ul class="visual-window">
                                    <li class="slide-item">
                                        <div class="slide-txtbox">
                                            <div class="box-wrap">
                                                <div class="box-txt">About<br>Basic Base Ball ...</div>
                                                <a href="./about.jsp">
                                                    <div class="box-enter">ENTER
                                                        <i class="fa-sharp fa-solid fa-chevron-right"></i>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <img src="./image/ball.png" alt="ball image" class="slide-img ball">
                                        <img src="./image/bat.png" alt="bat image" class="slide-img bat">
                                        <div class="circle1"></div>
                                        <div class="circle2"></div>
                                    </li>

                                    <li class="slide-item">
                                        <div class="slide-txtbox2">
                                            <div class="box-wrap">
                                                <div class="box-txt">B.B.B<br>야구 용어 사전 !</div>
                                                <a href="/listDictionary?sel=all">
                                                    <div class="box-enter">ENTER<i
                                                            class="fa-sharp fa-solid fa-chevron-right"></i></div>
                                                </a>
                                            </div>
                                        </div>
                                        <img src="./image/baseballplayer.png" alt="player image"
                                            class="slide-img player">
                                        <img src="./image/glove.png" alt="glove image" class="slide-img glove">
                                        <div class="squ1"></div>
                                        <div class="squ2"></div>
                                    </li>

                                    <div class="slide-item">
                                        <div class="slide-txtbox3">
                                            <div class="box-wrap">
                                                <div class="box-txt">아직도 회원이<br>아닌가요?</div>
                                                <a href="./join.jsp">
                                                    <div class="box-enter">SIGN UP<i
                                                            class="fa-sharp fa-solid fa-chevron-right"></i></div>
                                                </a>
                                            </div>
                                        </div>
                                        <img src="./image/mlbbaseball.jpg" alt="baseball image" class="slide-img bb">
                                        <img src="./image/bb2.png" alt="ball image" class="slide-img bb2">
                                        <div class="tri1"></div>
                                        <div class="tri2"></div>
                                    </div>
                                </ul>
                            </div>
                        </div>
                        <div class="intro">
                            <hr>
                            <p class="devel">YangYoung Software Development</p>
                            <p class="email">parkhayoung615@gmail.com</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 두 번째 영역 -->
            <section class="section two">
                <div class="video">
                    <div class="video-wrap">
                        <div class="tit">당신의 <span>Base Ball Life</span>에<br>재미를 덧붙여드립니다.</div>
                        <video id="myVideo" loop muted data-autoplay>
                            <source src="./image/video.mp4" type="video/mp4">
                        </video>
                        <div class="balloon">갸티비 by KIA타이거즈. KIA 타이거즈 2022 시즌 개막 트레일러<br><a
                                href="https://youtu.be/zcZpKk3P22c">https://youtu.be/zcZpKk3P22c</a></div>
                    </div>
                </div>
            </section>

            <section class="section three">
                <div class="three">
                    <div class="three-wrap">
                        <div class="title">
                            <div class="sub-tit">알면 좋은 서비스</div>
                            <div class="tit">이런 서비스도<br>한번 써보세요</div>
                        </div>
                        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

                        <section class="hero-section">
                            <div class="card-grid">
                                <a class="card" href="./join.jsp">
                                    <div class="card__background"
                                    style="background-image: url(./image/bb4.jpg); ">
                                </div>
                                    <div class="card__content">
                                        <p class="card__category">회원가입</p>
                                        <h3 class="card__heading">가입을 통해<br>다양한 서비스를<br>만나보세요!</h3>
                                    </div>
                                </a>
                                <a class="card" href="/listDictionary?sel=all">
                                    <div class="card__background"
                                    style="background-image: url(./image/bb3.jpg); ">
                                </div>
                                <div class="card__content">
                                        <p class="card__category">사전</p>
                                        <h3 class="card__heading">빠른 검색을 통해<br>자신이 원하는 정보를 찾으세요!</h3>
                                    </div>
                                </a>
                                <a class="card" href="./add.jsp">
                                    <div class="card__background"
                                        style="background-image: url(./image/bb1.jpg);"> 
                                    </div>
                                    <div class="card__content">
                                        <p class="card__category">용어 추가</p>
                                        <h3 class="card__heading">제가 알고 있는<br>단어가 없어요!</h3>
                                    </div>
                                </a>
                                <a class="card" href="./about.jsp">
                                    <div class="card__background"
                                        style="background-image: url(./image/bb2.jpg); ">
                                    </div>
                                    <div class="card__content">
                                        <p class="card__category">About B.B.B</p>
                                        <h3 class="card__heading">B.B.B가 무엇인가요?</h3>
                                    </div>
                                </a>
                            </div>
                        </section>
                    </div>
                </div>
            </section>

           <!-- footer 영역 -->
        	<%@ include file="./view/footer.jsp"%>
        </div>
    </div>

    <!-- 풀페이지 웹사이트에 필요한 js 코드 -->
    <script type="text/javascript">
        var myFullpage = new fullpage('#fullpage', {
            anchors: ['firstPage', 'secondPage', '3rdPage', 'lastPage'], // '3rdPage', '4thpage', 
            menu: '#menu',
            lazyLoad: true,
            navigation: true,
            navigationPosition: 'left',
            navigationTooltips: ['', '', '', ''],
            showActiveTooltip: true
        });
    </script>




</body>

</html>