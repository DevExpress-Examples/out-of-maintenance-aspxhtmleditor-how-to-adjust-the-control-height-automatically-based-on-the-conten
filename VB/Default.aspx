<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var toolbarSize;
        function OnInit(s, e) {
            var doc = htmlEditorClient.GetDesignViewDocument().getElementsByTagName("body")[0];
            var innerDocHeight = doc.scrollHeight;
            var controlHeight = s.GetHeight();
            toolbarSize = controlHeight - innerDocHeight;
        }
        function OnHtmlChanged(s, e) {
            var doc = htmlEditorClient.GetDesignViewDocument().getElementsByTagName("body")[0];
            var innerDocHeight = doc.scrollHeight;
            s.SetHeight(innerDocHeight + toolbarSize);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxHtmlEditor ID="ASPxHtmlEditor2" runat="server" ClientInstanceName="htmlEditorClient">
            <ClientSideEvents Init="OnInit" HtmlChanged="OnHtmlChanged" />
        </dx:ASPxHtmlEditor>
    </form>
</body>
</html>