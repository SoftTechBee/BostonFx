<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Member_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" />
       <style type="text/css">
        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20px;
            width: 110px;
        }

            .toggle.ios .toggle-handle {
                border-radius: 20px;
                width: 40px;
            }
    </style>

    <style>
        .btn-primary {
            background-color: #7367f0 !important;
            color: #fff;
        }

        .btn-danger {
            background-color: #d34c4d !important;
            color: #fff;
        }

        .btn1 {
            --bs-btn-padding-x: 0.25rem !important;
            --bs-btn-padding-y: -0.4rem !important;
        }

        .pad1 {
            padding: 0.1rem 1rem !important;
        }


        .recent-activity-wrapper-invoice {
            height: 816px  !important;
        }

        @media only screen and (max-width: 61.9375rem) {
            .ref {
                width: 30px !important;
            }
        }
    </style>
    <!-- content -->
    <div class="container">
        <script type="text/javascript">
            function myFunction() {

                var copyText = document.getElementById('ContentPlaceHolder1_myInput');

                copyText.select();
                copyText.setSelectionRange(0, 99999); /*For mobile devices*/
                /* Copy the text inside the text field */
                document.execCommand("copy");
                /* Alert the copied text */

                alert("Copied the text: " + copyText.value);

            }
        </script>
        <input type="text" name="link" id="myInput" runat="server" value="" style="opacity: 0;">

        <!-- TradingView Widget BEGIN -->
        <div class="tradingview-widget-container">
            <%--<div class="tradingview-widget-container__widget"></div>
  <div class="tradingview-widget-copyright"><a href="https://in.tradingview.com/" rel="noopener nofollow" target="_blank"><span class="blue-text">Track all markets on TradingView</span></a></div>--%>
            <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async>
  {
  "symbols": [
    {
      "description": "Tesla",
      "proName": "NASDAQ:TSLA"
    },
    {
      "description": "Saudi Aramco",
      "proName": "FWB:2W7A"
    },
    {
      "description": "Etihaad Aireways",
      "proName": "TADAWUL:7020"
    },
    {
      "description": "EMAAR",
      "proName": "DFM:EMAAR"
    },
    {
      "description": "Emirates",
      "proName": "ADX:EAND"
    },
    {
      "description": "Al DAR",
      "proName": "ADX:ALDAR"
    },
    {
      "description": "AIR ARABIA",
      "proName": "DFM:AIRARABIA"
    }
  ],
  "showSymbolLogo": true,
  "colorTheme": "dark",
  "isTransparent": true,
  "displayMode": "adaptive",
  "locale": "in"
}
            </script>
        </div>
        <!-- TradingView Widget END -->

        <!-- Statistics -->
        <div class="col-xl-12 mb-4 col-lg-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col-2">
                            <img src="../images/news2.png" style="width: 45px !important; height: auto !important" alt="" />
                        </div>
                        <div class="col-10">
                            <marquee onmouseover="this.stop()" onmouseout="this.start()">
                                <h5>
                                    <span style="color: #fff!important">
                                        <asp:Label ID="lbhead" Font-Bold="true" Font-Size="Larger" Font-Underline="true" runat="server"></asp:Label>
                                        : </span><a style="color: #fff!important">
                                            <asp:Label ID="lbnews" runat="server"></asp:Label>
                                        </a></h5>
                            </marquee>
                        </div>
                    </div>
                </div>
            </div>
        </div>
             <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="card ">
                        <div class="card-body">
                            <div class="d-flex align-items-center flex-wrap income justify-content-evenly">
                                <div class="d-flex align-items-center mb-2 me-3 arrow">
                                    <div class="me-3">
                                        <svg class="theme-col" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="26" cy="26" r="26" fill="var(--bs-body-bg)" />
                                            <g clip-path="url(#clip0)">
                                                <path d="M34.9293 30.4004C34.9294 30.3966 34.9293 30.3927 34.9293 30.3889L34.9371 18.5152C34.9369 18.4212 34.9264 18.3275 34.906 18.2357L34.8284 17.9716L34.7507 17.8163L34.6653 17.7309C34.5585 17.5759 34.4243 17.4417 34.2693 17.3348L34.1916 17.2572L34.0984 17.164L33.8965 17.1019C33.783 17.0683 33.6654 17.0499 33.547 17.0475L21.6112 17.0708C20.8167 17.0676 20.17 17.7092 20.1668 18.5037C20.1668 18.5075 20.1668 18.5114 20.1668 18.5152C20.1853 19.3009 20.8178 19.9334 21.6035 19.9519L28.6935 19.9596C28.9967 19.9626 29.2402 20.2109 29.2372 20.5141C29.2358 20.6552 29.1802 20.7903 29.0818 20.8915L17.5187 32.4546C16.9568 33.0164 16.9568 33.9273 17.5186 34.4892C18.0804 35.0511 18.9913 35.0511 19.5532 34.4893C19.5533 34.4893 19.5533 34.4892 19.5534 34.4892L31.1164 22.9261C31.3338 22.7147 31.6815 22.7196 31.8929 22.937C31.9912 23.0382 32.0469 23.1733 32.0483 23.3144L32.0405 30.3889C32.0551 31.1805 32.6933 31.8188 33.4849 31.8333C34.2795 31.8365 34.9262 31.195 34.9293 30.4004Z" fill="white" />
                                            </g>
                                            <defs>
                                                <clipPath>
                                                    <rect width="24" height="24" fill="white" transform="translate(26 9.02945) rotate(45)" />
                                                </clipPath>
                                            </defs>
                                        </svg>
                                    </div>
                                    <div>
                                        <span class="fs-14">Referral Affilates</span>
                                        <h4 class="fs-5 font-w600">
                                            <asp:Label ID="lbdirect" CssClass="text-success" runat="server" Text="0"></asp:Label></h4>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center ms-sm-2 mb-2 arrow">
                                    <div class="me-3">
                                        <svg class="" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="26" cy="26" r="26" transform="rotate(-180 26 26)" fill="#5E3ED0" />
                                            <g clip-path="url(#clip0)">
                                                <path d="M17.0707 21.5996C17.0706 21.6034 17.0707 21.6073 17.0707 21.6111L17.0629 33.4848C17.0631 33.5788 17.0736 33.6725 17.094 33.7643L17.1716 34.0284L17.2493 34.1837L17.3347 34.2691C17.4415 34.4241 17.5757 34.5583 17.7307 34.6652L17.8084 34.7428L17.9016 34.836L18.1035 34.8981C18.217 34.9317 18.3346 34.9501 18.453 34.9525L30.3888 34.9292C31.1833 34.9324 31.83 34.2908 31.8332 33.4963C31.8332 33.4925 31.8332 33.4886 31.8332 33.4848C31.8147 32.6991 31.1822 32.0666 30.3965 32.0481L23.3065 32.0404C23.0033 32.0374 22.7598 31.7891 22.7628 31.4859C22.7642 31.3448 22.8198 31.2097 22.9182 31.1085L34.4813 19.5454C35.0432 18.9836 35.0432 18.0727 34.4814 17.5108C33.9196 16.9489 33.0087 16.9489 32.4468 17.5107C32.4467 17.5107 32.4467 17.5108 32.4466 17.5108L20.8836 29.0739C20.6662 29.2853 20.3185 29.2804 20.1071 29.063C20.0088 28.9618 19.9531 28.8267 19.9517 28.6856L19.9595 21.6111C19.9449 20.8195 19.3067 20.1812 18.5151 20.1667C17.7205 20.1635 17.0738 20.805 17.0707 21.5996Z" fill="white" />
                                            </g>
                                            <defs>
                                                <clipPath>
                                                    <rect width="24" height="24" fill="white" transform="translate(26 42.9706) rotate(-135)" />
                                                </clipPath>
                                            </defs>
                                        </svg>
                                    </div>
                                    <div>
                                        <span class="fs-14">Total Affiliate</span>
                                        <h4 class="fs-5 font-w700">
                                            <asp:Label ID="lbteam" CssClass="text-success" runat="server" Text="0"></asp:Label></h4>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center mb-2 me-3 arrow">
                                    <div class="me-3">
                                        <svg class="theme-col" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="26" cy="26" r="26" fill="var(--bs-body-bg)" />
                                            <g clip-path="url(#clip0)">
                                                <path d="M34.9293 30.4004C34.9294 30.3966 34.9293 30.3927 34.9293 30.3889L34.9371 18.5152C34.9369 18.4212 34.9264 18.3275 34.906 18.2357L34.8284 17.9716L34.7507 17.8163L34.6653 17.7309C34.5585 17.5759 34.4243 17.4417 34.2693 17.3348L34.1916 17.2572L34.0984 17.164L33.8965 17.1019C33.783 17.0683 33.6654 17.0499 33.547 17.0475L21.6112 17.0708C20.8167 17.0676 20.17 17.7092 20.1668 18.5037C20.1668 18.5075 20.1668 18.5114 20.1668 18.5152C20.1853 19.3009 20.8178 19.9334 21.6035 19.9519L28.6935 19.9596C28.9967 19.9626 29.2402 20.2109 29.2372 20.5141C29.2358 20.6552 29.1802 20.7903 29.0818 20.8915L17.5187 32.4546C16.9568 33.0164 16.9568 33.9273 17.5186 34.4892C18.0804 35.0511 18.9913 35.0511 19.5532 34.4893C19.5533 34.4893 19.5533 34.4892 19.5534 34.4892L31.1164 22.9261C31.3338 22.7147 31.6815 22.7196 31.8929 22.937C31.9912 23.0382 32.0469 23.1733 32.0483 23.3144L32.0405 30.3889C32.0551 31.1805 32.6933 31.8188 33.4849 31.8333C34.2795 31.8365 34.9262 31.195 34.9293 30.4004Z" fill="white" />
                                            </g>
                                            <defs>
                                                <clipPath>
                                                    <rect width="24" height="24" fill="white" transform="translate(26 9.02945) rotate(45)" />
                                                </clipPath>
                                            </defs>
                                        </svg>
                                    </div>
                                    <div>
                                        <span class="fs-14">In-Active Affilates</span>
                                        <h4 class="fs-5 font-w600">
                                            <asp:Label ID="lbinactiveteam" CssClass="text-success" runat="server" Text="0"></asp:Label></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <!--/ Statistics -->

        <%--<a href="AutoWalletRecharge.aspx" class="btn btn-primary d-block mb-4">Add Funds</a>--%>


        <div class="row">
            <div class="col-xl-12">
                <div class="col">
                    <div class="card">
                        <div class="card-header d-flex flex-row align-items-start row">
                            <div class="col-6">
                                <h5 class="card-title">User ID :<span class="text-secondary">
                                    <%=SessionData.Get<string>("Newuser") %></span></h5>
                                <h5>Account Status :
                                    <asp:Label ID="lbStatus" class="text-success" runat="server"></asp:Label></h5>
                            </div>
                            <div class="col-6">
                                <h5 class="card-title text-end">USDT Package : <asp:Label CssClass="text-secondary" ID="lbpackname" runat="server"></asp:Label></h5>
                            </div>
                            
                        </div>
                        <div class="bootstrap-carousel">
                            <div class="carousel slide" data-bs-ride="carousel">
                                <%--<div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                </div>--%>
                                <div class="carousel-inner">
                                    <asp:Repeater ID="PackRepeater" runat="server">
                                        <ItemTemplate>
                                            <div class="<%# Isactive(Container.ItemIndex + 1) %>">
                                                <div class="card-body py-3 py-md-2 px-4">
                                                    <div class="row">
                                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                                            <div class="card mt-1 mt-md-3">
                                                                <div class="card-body p-3">
                                                                    <div class="align-items-center justify-content-center h-100 d-flex flex-wrap">
                                                                        <div class="d-inline-block position-relative donut-chart-sale me-2">
                                                                            <center>
                                                                                <img src='<%#Eval("ImgUrl") %>' style="width: 100px; margin-bottom: 10px; border-radius: 30px" />
                                                                                <%--<span class="donut2" data-peity='{ "fill": ["#AC39D4", "rgba(255, 255, 255, 0.1"],   "innerRadius": 18, "radius": 8}'>3/9</span>--%>
                                                                                <h5 class="fs-14 text-secondary"><%#Eval("Product") %></h5>
                                                                            </center>
                                                                        </div>

                                                                        <div class="card-header">
                                                                            <p class="fs-14" style="margin-bottom: 0px"><%#Eval("Descrption") %></p>
                                                                        </div>

                                                                        <div class="text-center" style="margin-top: 15px">

                                                                            <h5 class="fs-14">Investment Amount :  $ <%#Eval("MRP") %></h5>
                                                                            <h5 class="fs-14">Maximum Daily Return : $ <%#Eval("PerDays") %> %</h5>
                                                                            <%--<h5 class="fs-14">Maximum Daily Return : <%#Eval("MaxDailyReturn") %> %</h5>--%>
                                                                            

                                                                            <a href="Packages.aspx?Id=0" class="btn btn-secondary">Explore</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <a class="carousel-control-prev" href="#carouselwithIndicators" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>

                                <a class="carousel-control-next" href="#carouselwithIndicators" role=" button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <%--<div class="card-footer d-sm-flex justify-content-between align-items-center">
                            <div class="card-footer-link mb-4 mb-sm-0">
                                <div class="d-flex align-items-center mb-3">
                                    <img id="ref" src="../images/reffer.gif" style="margin-right: 10px; width: 60px !important; height: auto !important" alt="" />
                                    <h5 class="mr-5" style="margin-bottom: 0px !important;">
                                        <asp:Label ID="lbreffsidLeft" runat="server"></asp:Label>&nbsp&nbsp&nbsp<span class="badge light badge-secondary" onclick="script: myFunction();">Copy</span></h5>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                        <div class="row">
                          <div class="col-xl-12 col-lg-12 col-md-12">
                            <div class="card ">
                               <div class="card-body">
                            <div class="d-flex align-items-center flex-wrap income justify-content-evenly">
                              <div class="d-flex align-items-center mb-2 me-3 arrow">
                                            <div class="me-3">
                                                <svg class="theme-col" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="26" cy="26" r="26" fill="var(--bs-body-bg)" />
                                                    <g clip-path="url(#clip0)">
                                                        <path d="M34.9293 30.4004C34.9294 30.3966 34.9293 30.3927 34.9293 30.3889L34.9371 18.5152C34.9369 18.4212 34.9264 18.3275 34.906 18.2357L34.8284 17.9716L34.7507 17.8163L34.6653 17.7309C34.5585 17.5759 34.4243 17.4417 34.2693 17.3348L34.1916 17.2572L34.0984 17.164L33.8965 17.1019C33.783 17.0683 33.6654 17.0499 33.547 17.0475L21.6112 17.0708C20.8167 17.0676 20.17 17.7092 20.1668 18.5037C20.1668 18.5075 20.1668 18.5114 20.1668 18.5152C20.1853 19.3009 20.8178 19.9334 21.6035 19.9519L28.6935 19.9596C28.9967 19.9626 29.2402 20.2109 29.2372 20.5141C29.2358 20.6552 29.1802 20.7903 29.0818 20.8915L17.5187 32.4546C16.9568 33.0164 16.9568 33.9273 17.5186 34.4892C18.0804 35.0511 18.9913 35.0511 19.5532 34.4893C19.5533 34.4893 19.5533 34.4892 19.5534 34.4892L31.1164 22.9261C31.3338 22.7147 31.6815 22.7196 31.8929 22.937C31.9912 23.0382 32.0469 23.1733 32.0483 23.3144L32.0405 30.3889C32.0551 31.1805 32.6933 31.8188 33.4849 31.8333C34.2795 31.8365 34.9262 31.195 34.9293 30.4004Z" fill="white" />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="24" height="24" fill="white" transform="translate(26 9.02945) rotate(45)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>
                                            <div>
                                                <span class="fs-14">Total Deposit</span>
                                                <h4 class="fs-5 font-w600">$
                                        <asp:Label ID="lbdeposit" CssClass="text-success" runat="server" Text="0"></asp:Label></h4>
                                            </div>
                                        </div>
                                       
                                        <div class="d-flex align-items-center mb-2 me-3 arrow">
                                            <div class="me-3">
                                                <svg class="theme-col" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="26" cy="26" r="26" fill="var(--bs-body-bg)" />
                                                    <g clip-path="url(#clip0)">
                                                        <path d="M34.9293 30.4004C34.9294 30.3966 34.9293 30.3927 34.9293 30.3889L34.9371 18.5152C34.9369 18.4212 34.9264 18.3275 34.906 18.2357L34.8284 17.9716L34.7507 17.8163L34.6653 17.7309C34.5585 17.5759 34.4243 17.4417 34.2693 17.3348L34.1916 17.2572L34.0984 17.164L33.8965 17.1019C33.783 17.0683 33.6654 17.0499 33.547 17.0475L21.6112 17.0708C20.8167 17.0676 20.17 17.7092 20.1668 18.5037C20.1668 18.5075 20.1668 18.5114 20.1668 18.5152C20.1853 19.3009 20.8178 19.9334 21.6035 19.9519L28.6935 19.9596C28.9967 19.9626 29.2402 20.2109 29.2372 20.5141C29.2358 20.6552 29.1802 20.7903 29.0818 20.8915L17.5187 32.4546C16.9568 33.0164 16.9568 33.9273 17.5186 34.4892C18.0804 35.0511 18.9913 35.0511 19.5532 34.4893C19.5533 34.4893 19.5533 34.4892 19.5534 34.4892L31.1164 22.9261C31.3338 22.7147 31.6815 22.7196 31.8929 22.937C31.9912 23.0382 32.0469 23.1733 32.0483 23.3144L32.0405 30.3889C32.0551 31.1805 32.6933 31.8188 33.4849 31.8333C34.2795 31.8365 34.9262 31.195 34.9293 30.4004Z" fill="white" />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="24" height="24" fill="white" transform="translate(26 9.02945) rotate(45)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>
                                            <div>
                                                <span class="fs-14">Total Income</span>
                                                <h4 class="fs-5 font-w600">$
                        <asp:Label ID="lbTotalIncome" CssClass="text-success" runat="server" Text="0"></asp:Label></h4>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center ms-sm-2 mb-2 arrow">
                                            <div class="me-3">
                                                <svg class="" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="26" cy="26" r="26" transform="rotate(-180 26 26)" fill="#5E3ED0" />
                                                    <g clip-path="url(#clip0)">
                                                        <path d="M17.0707 21.5996C17.0706 21.6034 17.0707 21.6073 17.0707 21.6111L17.0629 33.4848C17.0631 33.5788 17.0736 33.6725 17.094 33.7643L17.1716 34.0284L17.2493 34.1837L17.3347 34.2691C17.4415 34.4241 17.5757 34.5583 17.7307 34.6652L17.8084 34.7428L17.9016 34.836L18.1035 34.8981C18.217 34.9317 18.3346 34.9501 18.453 34.9525L30.3888 34.9292C31.1833 34.9324 31.83 34.2908 31.8332 33.4963C31.8332 33.4925 31.8332 33.4886 31.8332 33.4848C31.8147 32.6991 31.1822 32.0666 30.3965 32.0481L23.3065 32.0404C23.0033 32.0374 22.7598 31.7891 22.7628 31.4859C22.7642 31.3448 22.8198 31.2097 22.9182 31.1085L34.4813 19.5454C35.0432 18.9836 35.0432 18.0727 34.4814 17.5108C33.9196 16.9489 33.0087 16.9489 32.4468 17.5107C32.4467 17.5107 32.4467 17.5108 32.4466 17.5108L20.8836 29.0739C20.6662 29.2853 20.3185 29.2804 20.1071 29.063C20.0088 28.9618 19.9531 28.8267 19.9517 28.6856L19.9595 21.6111C19.9449 20.8195 19.3067 20.1812 18.5151 20.1667C17.7205 20.1635 17.0738 20.805 17.0707 21.5996Z" fill="white" />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="24" height="24" fill="white" transform="translate(26 42.9706) rotate(-135)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>
                                            <div>
                                                <span class="fs-14">Withdraw Request</span>
                                                <h4 class="fs-5 font-w700">$
                        <asp:Label ID="lbWithdrawdeposit" CssClass="text-success" runat="server" Text="0"></asp:Label></h4>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                      
                        <div class="col-xl-6 col-lg-6 col-md-12">
                            <div class="card Expense overflow-hidden">
                                <div class="card-body p-4 p-lg-3 p-xl-4">
                                    <div class="students1 three d-flex align-items-center justify-content-between">
                                        <div class="content">
                                            <h4 class="mb-0">Royalty Income</h4>
                                            <h4 class="fs-16">$
                            <asp:Label ID="lbroyalty" CssClass="text-success d-inline-block" runat="server" Text="0"></asp:Label></h4>
                                        </div>
                                        <div class="newCustomers">
                                            <div class="d-inline-block position-relative donut-chart-sale mb-3">
                                                <svg width="60" height="58" viewBox="0 0 60 58" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M39.0469 2.3125C38.3437 3.76563 38.9648 5.52344 40.418 6.22657C44.4609 8.17188 47.8828 11.1953 50.3203 14.9805C52.8164 18.8594 54.1406 23.3594 54.1406 28C54.1406 41.3125 43.3125 52.1406 30 52.1406C16.6875 52.1406 5.85937 41.3125 5.85937 28C5.85937 23.3594 7.18359 18.8594 9.66797 14.9688C12.0937 11.1836 15.5273 8.16016 19.5703 6.21485C21.0234 5.51173 21.6445 3.76563 20.9414 2.30079C20.2383 0.847664 18.4922 0.226569 17.0273 0.929694C12 3.34376 7.74609 7.09375 4.73437 11.8047C1.64062 16.6328 -1.56336e-06 22.2344 -1.31134e-06 28C-9.60967e-07 36.0156 3.11719 43.5508 8.78906 49.2109C14.4492 54.8828 21.9844 58 30 58C38.0156 58 45.5508 54.8828 51.2109 49.2109C56.8828 43.5391 60 36.0156 60 28C60 22.2344 58.3594 16.6328 55.2539 11.8047C52.2305 7.10547 47.9766 3.34375 42.9609 0.929693C41.4961 0.238287 39.75 0.84766 39.0469 2.3125V2.3125Z" fill="#53CAFD" />
                                                    <path d="M41.4025 26.4414C41.9767 25.8671 42.258 25.1171 42.258 24.3671C42.258 23.6171 41.9767 22.8671 41.4025 22.2929L34.0314 14.9218C32.9533 13.8437 31.5236 13.2578 30.0119 13.2578C28.5002 13.2578 27.0587 13.8554 25.9923 14.9218L18.6212 22.2929C17.4728 23.4414 17.4728 25.2929 18.6212 26.4414C19.7697 27.5898 21.6212 27.5898 22.7697 26.4414L27.0939 22.1171L27.0939 38.7695C27.0939 40.3867 28.4064 41.6992 30.0236 41.6992C31.6408 41.6992 32.9533 40.3867 32.9533 38.7695L32.9533 22.1054L37.2775 26.4296C38.4025 27.5781 40.2541 27.5781 41.4025 26.4414Z" fill="#53CAFD" />
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                             <div class="col-xl-6 col-lg-6 col-md-6">

                    <div class="card Expense overflow-hidden">
                        <div class="card-body p-4 p-lg-3 p-xl-4">
                            <div class="students1 three d-flex align-items-center justify-content-between">
                                <div class="content">
                                    <h4 class="mb-0">Reward Income</h4>
                                    <h4 class="fs-16">$
                                        <asp:Label ID="lbrewardincome" CssClass="text-success d-inline-block" runat="server" Text="0"></asp:Label>
                                        </h4>
                                </div>
                                <div class="d-inline-block position-relative donut-chart-sale mb-3">
                                    <img src="../assets/images/logo.png" style="width: 75px" />
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                            
                             <div class="col-xl-6 col-lg-6 col-md-6">

                    <div class="card Expense overflow-hidden">
                        <div class="card-body p-4 p-lg-3 p-xl-4">
                            <div class="students1 three d-flex align-items-center justify-content-between">
                                <div class="content">
                                    <h4 class="mb-0">Club Income</h4>
                                    <h4 class="fs-16">$
                                        <asp:Label ID="lbclubincome" CssClass="text-success d-inline-block" runat="server" Text="0"></asp:Label>
                                   </h4>
                                </div>
                                <div class="d-inline-block position-relative donut-chart-sale mb-3">
                                    <img src="../assets/images/logo.png" style="width: 75px" />
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>

                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="card Expense overflow-hidden">
                        <div class="card-body p-4 p-lg-3 p-xl-4 ">
                            <div class="students1 one d-flex align-items-center justify-content-between ">
                                <div class="content">
                                    <h4 class="mb-0">Your Current Balance</h4>
                                    <h4 class="fs-16">$
                                        <asp:Label ID="lbbalance" CssClass="text-danger d-inline-block" runat="server" Text="0"></asp:Label>
                                        </h4>
                                </div>
                                <div>
                                    <div class="d-inline-block position-relative donut-chart-sale mb-3">
                                        <img src="../assets/images/logo.png" style="width: 75px" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                             <div class="col-xl-6 col-lg-6 col-md-6">
                                        <div class="card Expense overflow-hidden">
                        <div class="card-body p-4 p-lg-3 p-xl-4 ">
                            <div class="students1 one d-flex align-items-center justify-content-between ">
                                <div class="content">
                                    <h4 class="mb-0">Available Fund</h4>
                                    <h4 class="fs-16">$
                                        <asp:Label ID="lbAvailabledeposit" CssClass="text-danger d-inline-block" runat="server" Text="0"></asp:Label>
                                        </h4>
                                </div>
                                <div>
                                    <div class="d-inline-block position-relative donut-chart-sale mb-3">
                                        <img src="../assets/images/logo.png" style="width: 75px" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                 </div>
                             <div class="col-xl-6 col-lg-6 col-md-6">
                                   <div class="card Expense overflow-hidden">
                                <div class="card-body p-4 p-lg-3 p-xl-4 ">
                                    <div class="students1 one d-flex align-items-center justify-content-between ">
                                        <div class="content">
                                            <h4 class="mb-0">Rank :
                            <asp:Label ID="lbrank" CssClass="text-danger" runat="server" Text="0"></asp:Label></h4>
                                            <h5 class="mb-2 fs-14">Next Rank :
                            <asp:Label ID="lbrank2" CssClass="text-danger" runat="server" Text="0"></asp:Label></h5>
                                        </div>
                                        <div>
                                            <div class="d-inline-block position-relative donut-chart-sale mb-3">
                                                <img src="../assets/images/rank.png" style="width:75px"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       
                             </div>
                      
                    </div>
                </div>
            </div>

           
        </div>

        <hr />

        <div class="col-xl-12">
            <div class="card ">
                <div class="card-body">

                    <div class="d-flex align-items-center justify-content-around flex-wrap income">
                        <div class="d-flex align-items-center ms-sm-2 mb-2 arrow">
                            <div class="me-3">
                                <svg class="" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="26" cy="26" r="26" transform="rotate(-180 26 26)" fill="#5E3ED0" />
                                    <g clip-path="url(#clip0)">
                                        <path d="M17.0707 21.5996C17.0706 21.6034 17.0707 21.6073 17.0707 21.6111L17.0629 33.4848C17.0631 33.5788 17.0736 33.6725 17.094 33.7643L17.1716 34.0284L17.2493 34.1837L17.3347 34.2691C17.4415 34.4241 17.5757 34.5583 17.7307 34.6652L17.8084 34.7428L17.9016 34.836L18.1035 34.8981C18.217 34.9317 18.3346 34.9501 18.453 34.9525L30.3888 34.9292C31.1833 34.9324 31.83 34.2908 31.8332 33.4963C31.8332 33.4925 31.8332 33.4886 31.8332 33.4848C31.8147 32.6991 31.1822 32.0666 30.3965 32.0481L23.3065 32.0404C23.0033 32.0374 22.7598 31.7891 22.7628 31.4859C22.7642 31.3448 22.8198 31.2097 22.9182 31.1085L34.4813 19.5454C35.0432 18.9836 35.0432 18.0727 34.4814 17.5108C33.9196 16.9489 33.0087 16.9489 32.4468 17.5107C32.4467 17.5107 32.4467 17.5108 32.4466 17.5108L20.8836 29.0739C20.6662 29.2853 20.3185 29.2804 20.1071 29.063C20.0088 28.9618 19.9531 28.8267 19.9517 28.6856L19.9595 21.6111C19.9449 20.8195 19.3067 20.1812 18.5151 20.1667C17.7205 20.1635 17.0738 20.805 17.0707 21.5996Z" fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath>
                                            <rect width="24" height="24" fill="white" transform="translate(26 42.9706) rotate(-135)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </div>
                            <div>
                                <span class="fs-14">ROI Bonus</span>
                                <h4 class="fs-5 font-w700">$
                                    <asp:Label ID="lbRoi" CssClass="text-success" runat="server" Text="0"></asp:Label>
                                    
                                </h4>
                            </div>
                        </div>
                        <div class="d-flex align-items-center mb-2 me-3 arrow">
                            <div class="me-3">
                                <svg class="theme-col" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="26" cy="26" r="26" fill="var(--bs-body-bg)" />
                                    <g clip-path="url(#clip0)">
                                        <path d="M34.9293 30.4004C34.9294 30.3966 34.9293 30.3927 34.9293 30.3889L34.9371 18.5152C34.9369 18.4212 34.9264 18.3275 34.906 18.2357L34.8284 17.9716L34.7507 17.8163L34.6653 17.7309C34.5585 17.5759 34.4243 17.4417 34.2693 17.3348L34.1916 17.2572L34.0984 17.164L33.8965 17.1019C33.783 17.0683 33.6654 17.0499 33.547 17.0475L21.6112 17.0708C20.8167 17.0676 20.17 17.7092 20.1668 18.5037C20.1668 18.5075 20.1668 18.5114 20.1668 18.5152C20.1853 19.3009 20.8178 19.9334 21.6035 19.9519L28.6935 19.9596C28.9967 19.9626 29.2402 20.2109 29.2372 20.5141C29.2358 20.6552 29.1802 20.7903 29.0818 20.8915L17.5187 32.4546C16.9568 33.0164 16.9568 33.9273 17.5186 34.4892C18.0804 35.0511 18.9913 35.0511 19.5532 34.4893C19.5533 34.4893 19.5533 34.4892 19.5534 34.4892L31.1164 22.9261C31.3338 22.7147 31.6815 22.7196 31.8929 22.937C31.9912 23.0382 32.0469 23.1733 32.0483 23.3144L32.0405 30.3889C32.0551 31.1805 32.6933 31.8188 33.4849 31.8333C34.2795 31.8365 34.9262 31.195 34.9293 30.4004Z" fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath>
                                            <rect width="24" height="24" fill="white" transform="translate(26 9.02945) rotate(45)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </div>
                            <div>
                                <span class="fs-14">Direct Bonus</span>
                                <h4 class="fs-5 font-w600">$
                                    <asp:Label ID="lbDirectIncome" CssClass="text-success" runat="server" Text="0"></asp:Label>
                                 <%--   <i style="font-size: 10px">USDT</i>--%>
                                </h4>
                            </div>
                        </div>
                              <div class="d-flex align-items-center mb-2 me-3 arrow">
                            <div class="me-3">
                                <svg class="theme-col" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="26" cy="26" r="26" fill="var(--bs-body-bg)" />
                                    <g clip-path="url(#clip0)">
                                        <path d="M34.9293 30.4004C34.9294 30.3966 34.9293 30.3927 34.9293 30.3889L34.9371 18.5152C34.9369 18.4212 34.9264 18.3275 34.906 18.2357L34.8284 17.9716L34.7507 17.8163L34.6653 17.7309C34.5585 17.5759 34.4243 17.4417 34.2693 17.3348L34.1916 17.2572L34.0984 17.164L33.8965 17.1019C33.783 17.0683 33.6654 17.0499 33.547 17.0475L21.6112 17.0708C20.8167 17.0676 20.17 17.7092 20.1668 18.5037C20.1668 18.5075 20.1668 18.5114 20.1668 18.5152C20.1853 19.3009 20.8178 19.9334 21.6035 19.9519L28.6935 19.9596C28.9967 19.9626 29.2402 20.2109 29.2372 20.5141C29.2358 20.6552 29.1802 20.7903 29.0818 20.8915L17.5187 32.4546C16.9568 33.0164 16.9568 33.9273 17.5186 34.4892C18.0804 35.0511 18.9913 35.0511 19.5532 34.4893C19.5533 34.4893 19.5533 34.4892 19.5534 34.4892L31.1164 22.9261C31.3338 22.7147 31.6815 22.7196 31.8929 22.937C31.9912 23.0382 32.0469 23.1733 32.0483 23.3144L32.0405 30.3889C32.0551 31.1805 32.6933 31.8188 33.4849 31.8333C34.2795 31.8365 34.9262 31.195 34.9293 30.4004Z" fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath>
                                            <rect width="24" height="24" fill="white" transform="translate(26 9.02945) rotate(45)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </div>
                            <div>
                                <span class="fs-14">Network Bonus</span>
                                <h4 class="fs-5 font-w600">$
                                    <asp:Label ID="lbnetwork" CssClass="text-success" runat="server" Text="0"></asp:Label>
                                   <%-- <i style="font-size: 10px">USDT</i>--%>
                                </h4>
                            </div>
                        </div>
                        <div class="d-flex align-items-center ms-sm-2 mb-2 arrow">
                            <div class="me-3">
                                <svg class="" width="45" height="45" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="26" cy="26" r="26" transform="rotate(-180 26 26)" fill="#5E3ED0" />
                                    <g clip-path="url(#clip0)">
                                        <path d="M17.0707 21.5996C17.0706 21.6034 17.0707 21.6073 17.0707 21.6111L17.0629 33.4848C17.0631 33.5788 17.0736 33.6725 17.094 33.7643L17.1716 34.0284L17.2493 34.1837L17.3347 34.2691C17.4415 34.4241 17.5757 34.5583 17.7307 34.6652L17.8084 34.7428L17.9016 34.836L18.1035 34.8981C18.217 34.9317 18.3346 34.9501 18.453 34.9525L30.3888 34.9292C31.1833 34.9324 31.83 34.2908 31.8332 33.4963C31.8332 33.4925 31.8332 33.4886 31.8332 33.4848C31.8147 32.6991 31.1822 32.0666 30.3965 32.0481L23.3065 32.0404C23.0033 32.0374 22.7598 31.7891 22.7628 31.4859C22.7642 31.3448 22.8198 31.2097 22.9182 31.1085L34.4813 19.5454C35.0432 18.9836 35.0432 18.0727 34.4814 17.5108C33.9196 16.9489 33.0087 16.9489 32.4468 17.5107C32.4467 17.5107 32.4467 17.5108 32.4466 17.5108L20.8836 29.0739C20.6662 29.2853 20.3185 29.2804 20.1071 29.063C20.0088 28.9618 19.9531 28.8267 19.9517 28.6856L19.9595 21.6111C19.9449 20.8195 19.3067 20.1812 18.5151 20.1667C17.7205 20.1635 17.0738 20.805 17.0707 21.5996Z" fill="white" />
                                    </g>
                                    <defs>
                                        <clipPath>
                                            <rect width="24" height="24" fill="white" transform="translate(26 42.9706) rotate(-135)" />
                                        </clipPath>
                                    </defs>
                                </svg>
                            </div>
                            <div>
                                <span class="fs-14">Level Bonus</span>
                                <h4 class="fs-5 font-w700">$
                                    <asp:Label ID="lbLevelRoi" CssClass="text-success" runat="server" Text="0"></asp:Label>
                                 <%--   <i style="font-size: 10px">USDT</i>--%>
                                </h4>
                            </div>
                        </div>
                  
                    </div>
                </div>
            </div>
        </div>
      <div class="col-lg-12 col-md-12 col-xl-12">
            <div class="card card-block card-stretch card-height">

                <div class="card-header d-flex justify-content-between ">
                    <div class="header-title">
                        <h5 class="card-title">Total Capping : <span style="font-size:10px!important ;color:yellow"> 3X (including ROI + Level Income)</span></h5>
                    </div>
                    <div class="card-header-toolbar d-flex align-items-center">
                        <a href="PurchaseHistory.aspx"  class="btn  btn-sm bg-secondary">View Invest</a>
                    </div>
                </div>
              
                
                <div class="card-body ">
                    <div class="table-responsive" style="overflow:auto">
                        <table class="table table-striped mb-0 table-borderless">
                            <thead class="">
                                <tr>
                                    <th>Total Investment</th>
                                    <th>Total Income</th>
                                
                                     <th>Remaining Capping</th>

                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    

                                  
                                    <td>
                                        $ <asp:Label ID="lbInvestmentamt" CssClass="text-danger" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                   <td>
                                        $ <asp:Label ID="lbincome" CssClass="text-danger" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                 
                                    <td>
                                       $ <asp:Label ID="lbLeftinocme" CssClass="text-danger" runat="server" Text="0.0"></asp:Label>
                                    </td>
                                    
                                   
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
        <div class="col-xl-12 col-lg-12 col-md-12">
            <div class="card">
                <div class="card-body text-center">
                    <div class="mx-auto my-3">
                        <img src="<%=SessionData.Get<string>("Profilepic") %>" alt="Avatar Image" class="rounded-circle" width="100px" />
                    </div>
                    <h4 class="mb-1 card-title"><%=SessionData.Get<string>("newuser") %></h4>
                    <span class="pb-1"><%=SessionData.Get<string>("name") %></span>
                    <%--<div class="d-flex align-items-center justify-content-center my-3 gap-2">
                                <a href="javascript:;" class="me-1"><span class="badge bg-label-secondary">
                                    <asp:Label ID="lbstat" CssClass="mb-0" runat="server" Text="Not Active"></asp:Label></span></a>
                                <a href="javascript:;"><span class="badge bg-label-warning">
                                    <asp:Label ID="lbDOJ" CssClass="text-warning mb-0" runat="server" Text="XX/XX/XXXX"></asp:Label></span></a>
                            </div>--%>

                      <div class="d-flex  row align-items-center justify-content-around my-3 py-1">
                            <div class="col-lg-4">
                            <span>Sponsor ID</span>
                            <h5 class="mb-0 text-warning">
                                <asp:Label ID="lbSponsorId" CssClass="mb-0" runat="server" Text="Not Active"></asp:Label></h5>
                        </div>
                              <div class="col-lg-4">
                            <span>Phone No</span>
                            <h5 class="mb-0 text-warning">
                                <asp:Label ID="lbContact" CssClass="mb-0" runat="server" Text="Not Active"></asp:Label></h5>
                        </div>
                            <div class="col-lg-4">
                            <span>Email</span>
                            <h5 class="mb-0 text-warning">
                                <asp:Label ID="lbEmail" CssClass="mb-0" runat="server" Text="Not Active"></asp:Label></h5>
                        </div>
                    </div>

                    <div class="d-flex align-items-center mb-3">
                        <img id="ref" src="../images/reffer.gif" style="margin-right: 10px; width: 60px !important; height: auto !important" alt="" />
                        <h5 class="mr-5 text-info " style="margin-bottom: 0px !important;">
                            <asp:Label ID="lbreffsidLeft" runat="server"></asp:Label>&nbsp&nbsp&nbsp<span class="badge light badge-secondary" onclick="script: myFunction();">Copy</span></h5>
                    </div>
                </div>
           
            </div>
        </div>

        <div class="col-xl-12">
            <div class="card user-data-table">
                <div class="card-header pb-0 d-block d-sm-flex border-0">
                    <div class="me-3">
                        <h4 class="card-title mb-2">Latest Transactions</h4>
                    </div>
                    <div class="card-tabs mt-3 mt-sm-0">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link underline active" data-bs-toggle="tab" href="#trade" role="tab">Trade</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link underline" data-bs-toggle="tab" href="#Withdraw" role="tab">Withdraw</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-body tab-content p-0">

                    <div class="tab-pane fade " id="Withdraw" role="tabpanel">
                        <div id="accordion-two" class="accordion style-1">
                            <h4 class="mb-2 px-4 text-secondary">Withdraw History</h4>
                            <div class="accordion-item bg-transparent mb-0">
                                <div class="table-responsive p-3">
                                    <table class="table-responsive-lg table display mb-4 dataTablesCard order-table card-table text-black dataTable no-footer student-tbl">
                                        <thead>
                                            <tr>
                                                <th>Amount($)</th>
                                                <th>Request Date</th>
                                                <th>Status</th>
                                                <th>Approval Date</th>
                                            </tr>
                                        </thead>
                                        <asp:Repeater runat="server" ID="withdrawRepeater">
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td><%#Eval("Amount")%> $</td>
                                                        <td><%#DataBinder.Eval(Container.DataItem, "DOR", "{0:dd/MM/yyyy}")%></td>
                                                        <td><%#Eval("Status")%></td>
                                                        <td><%#DataBinder.Eval(Container.DataItem, "DOA", "{0:dd/MM/yyyy}")%></td>
                                                    </tr>
                                                </tbody>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ tab-pane -->

                    <!-- tab-pane -->
                    <div class="tab-pane fade active show" id="trade" role="tabpanel">
                        <div id="accordion-three" class="accordion style-1">
                            <h4 class="mb-2 px-4 text-secondary">Trading Hours <span class="text-primary">10:00AM-10:00PM (GMT +5:00)</span></h4>
                            <h4 class="mb-2 px-4 text-secondary">Trading History <span class="text-primary">(Updates Every 6-12 Hours)</span></h4>
                            <div class="accordion-item bg-transparent mb-0">
                                <div class="table-responsive p-3">
                                    <table class="table-responsive-lg table display mb-4 dataTablesCard order-table card-table text-black dataTable no-footer student-tbl" id="example5">
                                        <thead>
                                            <tr>
                                                <th>Package</th>
                                                <th>Credit</th>
                                                <th>Date</th>
                                                <th>Remark</th>
                                            </tr>
                                        </thead>
                                        <asp:Repeater runat="server" ID="TradeRepeater">
                                            <ItemTemplate>
                                                <tbody>
                                                    <tr>
                                                        <td><%#Eval("Plantype")%></td>
                                                        <td><%#Eval("credit")%> USDT</td>
                                                        <td><%#DataBinder.Eval(Container.DataItem, "date", "{0:dd/MM/yyyy}")%></td>
                                                        <td><%#Eval("Remark")%></td>
                                                    </tr>
                                                </tbody>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/ tab-pane -->
                </div>
            </div>
        </div>
            </div>

        <asp:HiddenField ID="hndside" ClientIDMode="Static" runat="server" />

    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript">
        function myFunction() {

            var copyText = document.getElementById('ContentPlaceHolder1_myInput');

            copyText.select();
            copyText.setSelectionRange(0, 99999); /*For mobile devices*/
            /* Copy the text inside the text field */
            document.execCommand("copy");
            /* Alert the copied text */

            Swal.fire(
                'Refferal Link :',
                copyText.value,
                'success'
            )

            //alert("Copied the text: " + copyText.value);

        }
    </script>


    <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
    <script>

        function Processclick() {
            swal({
                title: "Processing.......!",
                text: "Note: Do Not press back or close the app? It will close in few seconds.",
                imageUrl: "../SoftImg/refresh.gif",
                timer: 20000,
                showConfirmButton: false
            });
        }
        function Successclick(msg) {
            swal("Success!", msg, "success")
        }
        function Warningclick(msg) {
            swal("Warning!", msg, "warning")
        }
    </script>



</asp:Content>

