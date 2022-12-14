<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>검색</title>

    <link rel="stylesheet" href="./css/select.css">
</head>

<body style="-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
    <!--
        Base Base Ball
        클래스명에 하이픈(-)만 사용 ! 언더바(_) 사용 금지
        큰 틀에 wrap 기본 사용
    -->
    <div class="wrapper">
        <!-- header 영역 -->
        <%@ include file="./view/header.jsp"%>

        <!-- 풀페이지 영역 -->
        <div id="fullpage">
            <!-- 메인 영역 -->
            <!-- 첫 번째 영역 -->
            <section class="section one">
                <div class="select">
                    <div class="select-wrap">
                        <form action="/listDictionary" method="get" class="select-form">
                            <div class="selectinput">
                                <input type="text" class="select-input" name="sel" id="sel" placeholder="검색어를 입력하세요.">
                            </div>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </form>
                        <div class="cate">
                            <div class="cate-wrap">
                                <ul class="cate-list">
                                    <li>
                                        <div class="sub-tit">포지션별 검색</div>
                                        <ul>
                                            <li><a href="/listDictionary?sel=투수&pos=p" class="dict-button">투수 (P)</a></li>
                                            <li><a href="/listDictionary?sel=포수&pos=p" class="dict-button">포수 (C)</a></li>
                                            <li><a href="/listDictionary?sel=1루수&pos=p" class="dict-button">1루수 (1B)</a></li>
                                            <li><a href="/listDictionary?sel=2루수&pos=p" class="dict-button">2루수 (2B)</a></li>
                                            <li><a href="/listDictionary?sel=3루수&pos=p" class="dict-button">3루수 (3B)</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="/listDictionary?sel=유격수&pos=p" class="dict-button">유격수 (SS)</a></li>
                                            <li><a href="/listDictionary?sel=좌익수&pos=p" class="dict-button">좌익수 (LF)</a></li>
                                            <li><a href="/listDictionary?sel=중견수&pos=p" class="dict-button">중견수 (CF)</a></li>
                                            <li><a href="/listDictionary?sel=우익수&pos=p" class="dict-button">우익수 (RF)</a></li>
                                            <li><a href="/listDictionary?sel=지명타자&pos=p" class="dict-button">지명타자 (DH)</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="/listDictionary?sel=대타&pos=p" class="dict-button">대타 (PH)</a></li>
                                            <li><a href="/listDictionary?sel=대주자&pos=p" class="dict-button">대주자 (PR)</a></li>
                                        </ul>
                                    </li>
                                    <hr>
                                    <li>
                                        <div class="sub-tit">용어 검색</div>
                                        <ul>
                                            <li><a href="/listDictionary?sel=공식&pos=p" class="dict-button">공식</a></li>
                                            <li><a href="/listDictionary?sel=비공식&pos=p" class="dict-button">비공식</a></li>
                                        </ul>
                                    </li>
                                    <hr>
                                    <li>
                                        <div class="sub-tit">KBO 구단 검색</div>
                                        <ul>
                                            <li><a href="http://www.ssglanders.com" class="dict-button ssg">SSG Landers</a></li>
                                            <li><a href="https://www.heroesbaseball.co.kr" class="dict-button kiwoom">KIWOOM Heroes</a></li>
                                            <li><a href="https://tigers.co.kr" class="dict-button kia">KIA Tigers</a></li>
                                            <li><a href="https://www.giantsclub.com" class="dict-button lotte">LOTTE Giants</a></li>
                                            <li><a href="https://www.doosanbears.com" class="dict-button doosan">DOOSAN Bears</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="https://www.samsunglions.com" class="dict-button samsung">SAMSUNG Lions</a></li>
                                            <li><a href="https://www.lgtwins.com" class="dict-button lg">LG Twins</a></li>
                                            <li><a href="https://www.hanwhaeagles.co.kr" class="dict-button hanwha">HANWHA Eagles</a></li>
                                            <li><a href="https://www.ncdinos.com" class="dict-button nc">NC Dinos</a></li>
                                            <li><a href="https://www.ktwiz.co.kr" class="dict-button kt">KT Wiz</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
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
            anchors: ['firstPage', 'lastPage'],
            lazyLoad: true,
            navigationTooltips: ['', 'footer'],
            showActiveTooltip: true
        });

    </script>
</body>

</html>