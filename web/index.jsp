<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<!--
Fractal by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>"Fake"</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <link rel="stylesheet" href="assets/css/main.css"/>
    </head>
    <body id="top">

    <!-- Header -->
    <header id="header">
        <div class="content">
            <h1><a href="#">"Fake"</a></h1>
            <p>Follow your fake news anywhere</p>
            <ul class="actions">
                <li><a href="#two" class="button icon fa-chevron-down scrolly">Learn More</a></li>
            </ul>
        </div>
        <div class="image phone">
            <div class="inner">
                <video style="width: 100%; height: 100%;"loop autoplay name="media">
                    <source src="news.m4v" type="video/mp4">
                </video>
            </div>
        </div>
    </header>

    <!-- Two -->
    <section id="two" class="wrapper">
        <div class="inner alt">
            <section class="spotlight">
                <div class="image"><img src="images/picTrump.jpg" alt=""/></div>
                <div class="content">
                    <h3>Follow your favorite's</h3>
                    <p>Using our custom search engine you can enjoy the fake news on the source you like.</p>
                </div>
            </section>
            <section class="spotlight">
                <div class="image"><img src="images/picAnywhere.jpg" alt=""/></div>
                <div class="content">
                    <h3>Anywhere</h3>
                    <p></p>
                </div>
            </section>
            <section class="spotlight">
                <div class="image"><img src="images/picEasyToUse.jpg" alt=""/></div>
                <div class="content">
                    <h3>Easy to use</h3>
                    <p></p>
                </div>
            </section>
        </div>
    </section>

    <!-- Three -->
    <section id="three" class="wrapper style2 special">
        <header class="major">
            <h2>Available in <span id="countdown"></span></h2>
        </header>
    </section>

    <!-- Four -->
    <form id="support-form" action="/support" method="post">
        <section id="four" class="wrapper">
            <div class="inner">
                <header class="major">
                    <h2>Support us</h2>
                </header>
                <div class="row uniform">
                    <div class="6u 12u$(small)">
                        <input type="text" name="email" value="" placeholder="Email" />
                    </div>
                    <div class="6u 12u$(small)">
                        <input type="text" min="1" name="amount" value="" placeholder="Amount (min €1)">
                    </div>
                    <div class="12u">
                        <a href="#" class="button fit" onclick="support()">Support "Fake"</a>
                    </div>
                </div>
            </div>
        </section>
    </form>

    <!-- Footer -->
    <footer id="footer">
        <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
            <li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
        </ul>
        <p class="copyright">&copy; joost lawerman</p>
    </footer>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>

    <script>
        function support() {
            document.getElementById('support-form').submit();
        }

        $("#countdown")
            .countdown("<%= "2017/02/13" %>", function(event) {
                $(this).text(
                    event.strftime('%D days and %H:%M:%S')
                );
            });
    </script>

    </body>
</html>