<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DKPhong.aspx.cs" Inherits="DKPhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }

        .auto-style2 {
            width: 22px;
        }
        td {
            background-color: #21b26b;
            color: white;
        }
        .auto-style3 {
            width: 284px;
        }
        .auto-style4 {
            width: 278px;
        }
        .validate{
            width:auto;
            color:#ff0000;
        }
        table{
            width: 800px;
            height: auto;
            border-collapse:collapse;
        }
        div{
            margin:auto;
            width:800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="3" style="text-align: center; background: #0094ff; color: white;">ĐĂNG KÝ PHÒNG</td>
                </tr>
                <tr>
                    <td class="auto-style3">Họ tên:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtHoTen" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator class="validate" ID="rfvHoTen" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txtHoTen"> </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Cơ quan:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCoQuan" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator class="validate" ID="rfvCoQuan" Width="250px" runat="server" ErrorMessage="Nhập cơ quan" ControlToValidate="txtCoQuan"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:</td>
                    <td class="auto-style4">
                        <asp:TextBox class="validate" ID="txtEmail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator class="validate" ID="rfvEmail" runat="server" ErrorMessage="Nhập địa chỉ email" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtMatKhau" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator class="validate" ID="rfvMatKhau" Width="250px" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập lại mật khẩu:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNLMatKhau" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator class="validate" ID="rfvNLMatKhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2" ControlToValidate="txtNLMatKhau"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator class="validate" ID="cmvNLMatKhau" runat="server" ControlToCompare="txtMatKhau" ControlToValidate="txtNLMatKhau" ErrorMessage="Mật khẩu không khớp"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ngày check in:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtCheckin" runat="server" TextMode="Date" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:CompareValidator class="validate" ID="cmvCheckin" runat="server" ControlToValidate="txtCheckin" ErrorMessage="Nhập ngày Checkin" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Số ngày ở:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtSoNgay" runat="server" TextMode="Number" Width="250px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:CompareValidator class="validate" ID="CompareValidator2" runat="server" ControlToValidate="txtSoNgay" ErrorMessage="Nhập con số ngày" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Loại phòng:</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="cbxLoaiPhong" runat="server">
                            <asp:ListItem>Phòng đơn</asp:ListItem>
                            <asp:ListItem>Phòng Vip đơn</asp:ListItem>
                            <asp:ListItem>Phòng vip đôi</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Label ID="lblThongBao" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary class="validate" ID="vsTomTatLoi" runat="server" align="center" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
