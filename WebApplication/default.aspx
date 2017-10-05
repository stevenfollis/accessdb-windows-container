<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Access Sample</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body class="container-fluid">
    <form id="form1" runat="server">
        <h1>Access Sample</h1>
        <h3>This application is a .NET 2.0 web application that communicates with an AdventureWorks Access Database .mdb file, all within a Windows Container.</h3>
        
        <hr />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [HumanResources_Department]"></asp:SqlDataSource>

        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            AutoGenerateColumns="False" 
            DataKeyNames="DepartmentID"
            DataSourceID="SqlDataSource1" 
            EnableModelValidation="True" 
            CssClass="table table-hover table-striped" 
            GridLines="None">
            <Columns>
                <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" ReadOnly="True" SortExpression="DepartmentID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" />
                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
