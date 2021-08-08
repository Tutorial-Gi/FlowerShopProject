﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Flower_Shop.LoginPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">   
    <title>Flower Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.icon">
     
		
    <!-- Google Fonts-->
     <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
	
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
      <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS-->

    <link rel="stylesheet" type="text/css" href="css/style.css" />

	
 <!--   <link rel="stylesheet" href="style.css">-->
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="error-pagewrap" style="background-image:url('img/FlowerShop2.jpg'); background-size:cover;">
		<div class="error-page-int">			
			<div class="content-error">
				<div class="hpanel">
                    <div class="panel-body"  style="border:outset 7px green">
                        <div class="text-center m-b-md custom-login">
				                    <h1>PLEASE LOGIN</h1>				
			            </div>
                        <asp:Label ID="lbl_ErrorLogin" runat="server"></asp:Label>
                        <form  id="loginForm" >
                            <div class="form-group">
                                <asp:Label ID="lbl_UserName" runat="server" Text="Username" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="txt_UserName" runat="server" Class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rf_UserName" runat="server" ErrorMessage="Enter Name" ControlToValidate="txt_UserName" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                    <asp:Label ID="lbl_UserPassword" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                                    <asp:TextBox ID="txt_UserPassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:label ID="Label1" runat="server" ForeColor="red"></asp:label>
                                    <asp:RequiredFieldValidator ID="rf_Userpassword" runat="server" ErrorMessage="Please enter password" 
                                        ControlToValidate="txt_UserPassword" ForeColor="Red"></asp:RequiredFieldValidator>                                    
                            </div>
                            <div class="checkbox login-checkbox" style="margin-left:20px;">
                               <asp:CheckBox ID="chk_Remember" runat="server" Text="Remember Me" />                                
                            </div>
                           <asp:Button ID="btn_Login" runat="server" Text="Login" class="btn btn-success loginbtn" OnClick="btn_Login_Click" /> 
                        </form>
                    </div>
                </div>
			</div>			
		</div>   
    </div>    
    </form>
<!-- jquery
		============================================ -->
   <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>

    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>  
    
    <!-- morrisjs JS
		============================================ -->
   <script src="js/morrisjs/raphael-min.js"></script>
    <script src="js/morrisjs/morris.js"></script>
    <script src="js/morrisjs/morris-active.js"></script>         
     <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
    
     <!-- morrisjs JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
   
    <!-- calendar JS
		============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    
    <!-- tawk chat JS
		============================================ -->
    <script src="js/tawk-chat.js"></script>
</body>
</html>
