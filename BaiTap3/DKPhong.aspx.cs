using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DKPhong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        lblThongBao.Text = "Bạn "+txtHoTen.Text+" đã đăng ký thành công!";
    }
}