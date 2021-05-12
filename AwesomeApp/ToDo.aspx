<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToDo.aspx.cs"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

   <head runat="server">
      <title>
         Untitled Page
      </title>
   </head>
   
   <body>
      <form id="form1" runat="server">
         <div>
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString= "<%$   ConnectionStrings:ToDoDB%>" 
               ProviderName= "<%$ ConnectionStrings:
                  ToDoDB.ProviderName %>" 
               SelectCommand="SELECT [title], [activity], 
                  [assigned_to], [created], [deadline] FROM [todo]">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView1" runat="server" 
               AutoGenerateColumns="False" CellPadding="4" 
               DataSourceID="SqlDataSource1" ForeColor="#333333" 
               GridLines="None">
               <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            
               <Columns>
                  <asp:BoundField DataField="title" HeaderText="Title" 
                     SortExpression="Title" />
                  <asp:BoundField DataField="deadline" 
                     HeaderText="Deadline" SortExpression="AuthorLastName" />
                  <asp:BoundField DataField="activity" 
                     HeaderText="Assigned to" SortExpression="activity" />
                  <asp:BoundField DataField="assigned_to" 
                     HeaderText="Assigned to" SortExpression="assigned_to" />
               </Columns>
               <FooterStyle BackColor="#5D7B9D" 
                  Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#284775" 
                  ForeColor="White" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#E2DED6" 
                  Font-Bold="True" ForeColor="#333333" />
               <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  
                  ForeColor="White" />
               <EditRowStyle BackColor="#999999" />
               <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
         </div>
      </form>
   </body>
</html>