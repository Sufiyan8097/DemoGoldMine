<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HRLogin.aspx.cs" Inherits="DemoTest.HRLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
        <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Sign In</h3>
		      	
		      		<div class="form-group">
                    <asp:TextBox ID="txtlogin" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtlogin" 
				    runat="server" ErrorMessage="Please Enter Login" ForeColor="Red">
                    </asp:RequiredFieldValidator>
		      		</div>
	            <div class="form-group">
	              <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtpass" 
				    runat="server" ErrorMessage="Please Enter Password" ForeColor="Red">
                    </asp:RequiredFieldValidator>
	            </div>
	            <div class="form-group">
				 <div class="btn-login" style="width:120px">
	            	
				  <asp:Button ID="btnlogin" runat="server" class="form-control btn btn-primary rounded submit px-3" Text="HR LOGIN" OnClick="Button1_Click" />
				  </div>
					 <div class="btn-login" style="width:120px;margin-top: -49px;margin-left: 156px;padding: 9px;">
	            
				  <asp:Button ID="btntllogin" runat="server" class="form-control btn btn-primary rounded submit px-3" Text="TL LOGIN" OnClick="btntllogin_Click"/>
				  </div>

	            </div>
	           
	      
	          
		      </div>
				</div>
			</div>
		</div>
	</section>
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

    </form>
</body>
</html>
