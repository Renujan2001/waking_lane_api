<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HelpAPI.aspx.cs" Inherits="waking_lane_api.HelpAPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        function TestAPIMethod1() {
            alert('dsds');

            var reqdata = {
                UserName: "0773901192",
                LocationID: "R2FtcGFoYVBTLzE="
            }
            var stringReqdata = JSON.stringify(reqdata);
            $.ajax({
                url: "api/BoutiqueList",
                data: stringReqdata,
                contentType: "application/json; charset=utf-8",
                type: "POST",
                dataType: "json",
                crossDomain: true,
                success: onSuccess,
                failure: function (AjaxResponse) {
                    alert("Failed: " + AjaxResponse.d);
                }
            });
            function onSuccess(AjaxResponse) {
                $("#Result").html("The time is: " + AjaxResponse.d);
                alert(AjaxResponse["ListBoutiqueInfo"]);
                $.ajax({
                    url: "HelpAPI.aspx/Get_API_Response",
                    data: JSON.stringify({ listinfo: AjaxResponse["ListBoutiqueInfo"] }),
                    contentType: "application/json; charset=utf-8",
                    type: "POST",
                    dataType: "json",
                    crossDomain: true,
                    success: function (data) {
                        var returnMsg = data.d;
                        $('#gridView').html(returnMsg);
                    },
                    error: function (a)
                    { alert(a.responseText); }
                });
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" id="post1" value="Get Boutique List" onclick="TestAPIMethod1()" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
        <div class="row" id="gridPanel">
            <div class="form-horizontal">
                <div class="row n-row-margin-bottom">
                    <div class="col-sm-12 ">
                        <div class="col-sm-12 n-style" id="Printcont">
                            <span id="gridView"></span>
                        </div>
                    </div>
                </div>
            </div>
            Server <asp:TextBox ID="txtServwe" runat="server" Text="smtp.gmail.com"></asp:TextBox><br />
            for godaddy : relay-hosting.secureserver.net <br /> <br />
             Port <asp:TextBox ID="txtPort" runat="server" Text="587"></asp:TextBox><br />
              for godaddy : 25 <br /><br />
             From Email <asp:TextBox ID="txtSendEmail" runat="server" Text="nekfahrm@gmail.com"></asp:TextBox><br />
             To Email <asp:TextBox ID="txtTomail" runat="server" Text="dolani@nekfa.com"></asp:TextBox><br />
             Email PWD <asp:TextBox ID="txtPwd" runat="server" Text="Nekfa@2020"></asp:TextBox><br />
            <asp:CheckBox ID="chSSL" runat="server" />Enable SSL
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
