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
    public partial class SinhVien : Form
    {
        public SinhVien()
        {
            InitializeComponent();
        }
        DataTable dt = new DataTable();
        private void SinhVien_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            
        }
        public void LoadData()
        {
            dt = DataAccess.GetDataTable("select * from SinhVien");
            dataGridViewSinhVien.DataSource = dt;
        }
        private void btnLoad_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMSV.Text = "";
            txtHoTen.Text = "";
            txtEmail.Text = "";
            txtDienThoai.Text = "";
            txtDiaChi.Text = "";
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            DataAccess.ThucThiLenh($"CapNhatSinhVien {txtMSV.Text}, N'{txtHoTen.Text}', N'{txtEmail.Text}', '{txtDienThoai.Text}', N'{txtDiaChi.Text}'");
            MessageBox.Show("Sửa thành công.");
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {

        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            dt = DataAccess.GetDataTable($"TimKiemSinhVien N'{txtHoTen.Text}'");
            dataGridViewSinhVien.DataSource= dt;
        }
    }
}
