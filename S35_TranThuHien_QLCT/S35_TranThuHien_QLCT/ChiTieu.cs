using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace S35_TranThuHien_QLCT
{
    public partial class ChiTieu : Form
    {
        public ChiTieu()
        {
            InitializeComponent();
        }
        DataTable dt = new DataTable();
        public string NgayChiTieu
        {
            get
            {
                string ngayThang = mtxtNgayChiTieu.Text.Trim();
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
        private void btnThem_Click(object sender, EventArgs e)
        {
            DataAccess.ThucThiLenh($"ChenChiTieu '{txtMCT.Text}', '{txtMSV.Text}', '{txtMLCT.Text}', '{txtSoTien.Text}', N'{txtMoTa.Text}', '{NgayChiTieu}'");
            MessageBox.Show("Thêm thành công.");
        }
        public void LoadData()
        {
            dt = DataAccess.GetDataTable("select * from ChiTieu");
            dataGridViewChiTieu.DataSource = dt;
        }
        private void ChiTieu_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMCT.Text = "";
            txtMSV.Text = "";
            txtMLCT.Text = "";
            txtSoTien.Text = "";
            txtMoTa.Text = "";
            mtxtNgayChiTieu.Text = "";
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DataAccess.ThucThiLenh($"XoaChiTieu '{txtMCT.Text}'");
            MessageBox.Show("Xóa thành công.");
        }

        private void txtNgayChitieu_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
