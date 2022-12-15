<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReactForm.aspx.cs" Inherits="ReactWebForm.ReactForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/react-webpack/dist/bundle.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Repeater runat="server" ID="rep1">
                <ItemTemplate>
                    <div id='root<%#Eval("id") %>'></div>
                    <script>
                        var prop<%#Eval("id") %> = { id:<%#Eval("id")%>, fio:'<%#Eval("fio")%>' };
                        MyLibrary.EvComp.RenderEvComp('root<%#Eval("id") %>', prop<%#Eval("id") %>);                        
                    </script>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
