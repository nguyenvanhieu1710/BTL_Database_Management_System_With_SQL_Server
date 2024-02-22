using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using DTO;

namespace GUI
{
    public partial class DeMo : Form
    {
        public DeMo()
        {
            InitializeComponent();
        }
        public string MaHocSinh
        {
            get { return txtMaHocSinh.Text.Trim(); }
        }
        public string TenHocSinh
        {
            get { return txtTenHocSinh.Text.Trim();}
        }
        public string NgaySinh
        {
            get
            {
                string ngayThang = mtxtNgaySinh.Text.Trim();
                DateTime ngaySinh;
                if (DateTime.TryParseExact(ngayThang, "dd/MM/yyyy", null, System.Globalization.DateTimeStyles.None, out ngaySinh))
                {
                    return ngaySinh.ToString("yyyy-MM-dd");
                }
                else
                {
                    return string.Empty; // Hoặc giá trị mặc định khác khi chuỗi không hợp lệ
                }
            }
        }
        public string GioiTinh
        {
            get { return cbGioiTinh.Text.Trim(); }
        }
        public string NoiSinh
        {
            get { return txtNoiSinh.Text.Trim(); }
        }
        public string Lop
        {
            get { return txtLop.Text.Trim(); }
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            ThemHS.Them(MaHocSinh, TenHocSinh, NgaySinh, GioiTinh, NoiSinh, Lop);
            MessageBox.Show("Thêm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void DeMo_Load(object sender, EventArgs e)
        {
            datagridviewDSHS.DataSource = HienThiHS.HienThi();
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            datagridviewDSHS.DataSource = HienThiHS.HienThi();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            SuaHS.Sua(MaHocSinh, TenHocSinh, NgaySinh, GioiTinh, NoiSinh, Lop);
            MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            XoaHS.Xoa(MaHocSinh);
            MessageBox.Show("Xóa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            datagridviewDSHS.DataSource = TimKiemHS.TimKiem(TenHocSinh);
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            txtMaHocSinh.Text = "";
            txtTenHocSinh.Text = "";
            mtxtNgaySinh.Text = "";
            cbGioiTinh.Text = "";
            txtNoiSinh.Text = "";
            txtLop.Text = "";
        }
    }
}
