<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CandidateDetails.aspx.cs" Inherits="DemoTest.CandidateDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/roboto-font.css" />
	<link rel="stylesheet" type="text/css" href="fonts/line-awesome/css/line-awesome.min.css" />
	
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css" />
    <link href="css/styleC.css" rel="stylesheet" />
</head>
<body class="form-v2">
  <div class="page-content">
		<div class="form-v2-content">
			
			<form class="form-detail" id="myform" runat="server">
				<h2>Candidate Details</h2>
				<div class="form-row">
					<label>Candidate Name:</label>
					<%--<input type="text" name="full_name" id="full_name" class="input-text" placeholder="ex: Lindsey Wilson">--%>
					<asp:TextBox ID="txtcandidatename" runat="server" class="input-text"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ForeColor="Red"
				  ErrorMessage="Please Enter the Name" ControlToValidate="txtcandidatename"></asp:RequiredFieldValidator>
				</div>
				
				<div class="form-row">
					<label>Experience</label>
					<%--<input type="text" name="your_email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">--%>
					<asp:TextBox ID="txtexper" runat="server" class="input-text"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ForeColor="Red"
						ErrorMessage="Please Enter the Experience" ControlToValidate="txtexper"></asp:RequiredFieldValidator>
				</div>
				<div class="form-row">
					<label>Candidate CTC</label>
					<%--<input type="text" name="your_email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">--%>
					<asp:TextBox ID="txtctc" runat="server" class="input-text"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
						ErrorMessage="Please enter CTC" ControlToValidate="txtctc"></asp:RequiredFieldValidator>
				</div>
				<div class="form-row">
					<label>Applied For</label>
					<asp:DropDownList ID="ddApplied" runat="server" class="dd-text">
					 <asp:ListItem Text="SELECT" Value="-1"></asp:ListItem>
						<asp:ListItem Text="ASP.NET" Value="1"></asp:ListItem>
						<asp:ListItem Text="PYTHON" Value="2"></asp:ListItem>
						<asp:ListItem Text="JAVA" Value="3"></asp:ListItem>
						<asp:ListItem Text="PHP" Value="4"></asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="form-row">
					<label>Expected CTC</label>
					<%--<input type="password" name="confirm_password" id="confirm_password" class="input-text" required>--%>
					<asp:TextBox ID="txtexpectedctc" runat="server" class="input-text"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ForeColor="Red"
						ErrorMessage="please enter Expected CTC" ControlToValidate="txtexpectedctc">
					</asp:RequiredFieldValidator>
				</div>
				<div class="form-row">
					<label>Upload Resume</label>
					<%--<input type="password" name="confirm_password" id="confirm_password" class="input-text">--%>
					<asp:FileUpload ID="FileUpload1" runat="server" />
				</div>
				<div class="form-row-last">
					<div style="width:120px;width: 94px;height: 41px;">
						<asp:Button ID="btnsubmit" class="register" Text="Submit" runat="server" OnClick="btnsubmit_Click"  />
					</div>
					<div style="margin-left: 613px;width: 98px;height: 30px;">
						<asp:Button ID="btnlogout" class="register" Text="LOG OUT" runat="server" OnClick="btnlogout_Click" CausesValidation="false" />
					</div>
					<%--<input type="submit" class="register" value="Submit">--%>

				</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

</body>
</html>
