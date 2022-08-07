<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailCandidate.aspx.cs" Inherits="DemoTest.DetailCandidate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style type="text/css">  
.style1  
{  
width: 298px;  
}  
.style2  
{  
text-decoration: underline;  
text-align: left;  
font-size: x-large;  
}  
.style3  
{  
font-size: xx-large;  
text-decoration: underline;  
}  
.style4  
{  
text-align: left;  
}  
</style> 
</head>
<body>
    <form id="form1" runat="server">
      <div class="style4">  
                <br />  
                <br />  
                <strong>  
                    <span class="style3">Select Candidate Name</span>  
                </strong>  
                <br />  
                <br />  
            </div>  
            <table style="width:100%;">  
                <tr>  
                    <td class="style1">  
 </td>  
                    <td class="style2"></td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style1">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style1">  
 </td>  
                    <td>  
                  <asp:DropDownList ID="ddcan" runat="server" AutoPostBack="True"   
 BackColor="#FFCCCC" Height="32px" Width="145px">  
                        </asp:DropDownList>  
                    </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style1">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style1">  
 </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server"   
Text="Show Data" OnClick="Button1_Click" />  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnlogout" runat="server" Text="LogOut" OnClick="btnlogout_Click" />
                    </td>  
              
                </tr> 
                
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                            CellSpacing="2" ForeColor="Black" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="Id"
                            OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing">
                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="CandidateName" HeaderText="Candidate Name" />
                                <asp:BoundField DataField="Experience" HeaderText="Experience" />
                                <asp:BoundField DataField="CTC" HeaderText="CTC" />
                                <asp:BoundField DataField="Applied" HeaderText="Applied" />
                                <asp:BoundField DataField="Expected" HeaderText="Expected" />
                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Button">
                                    <ItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" Text="Update Status" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>  
    </form>
</body>
</html>
