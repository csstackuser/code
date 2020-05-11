<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validate.aspx.cs" Inherits="validnumber.validate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validate number</title>
     <script type="text/javascript">

        function validnum(key) {
            //try to get press key
            var kcode = (key.which) ? key.which : key.keyCode;
            //checking press key which falls under the numeric Asci key

            if (kcode > 31 && (kcode < 48 || kcode > 57)) {
                alert("Please enter number 0 to 9 ");
                return false;
            }
            else return true;


        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>Mobile Number</td>
            <td><asp:TextBox ID="txtmobile" onkeypress="return validnum(event);" runat="server"></asp:TextBox>  </td>
        </tr>
        <tr>
            <td>
               <button>Submit</button>
            </td>
            

        </tr>
    </table>
    </div>
    </form>
</body>
</html>
