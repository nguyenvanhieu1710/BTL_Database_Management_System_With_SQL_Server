namespace GUI
{
    partial class DeMo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(DeMo));
            this.groupboxDSHS = new System.Windows.Forms.GroupBox();
            this.datagridviewDSHS = new System.Windows.Forms.DataGridView();
            this.btnThem = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.btnLoad = new System.Windows.Forms.Button();
            this.txtMaHocSinh = new System.Windows.Forms.TextBox();
            this.txtTenHocSinh = new System.Windows.Forms.TextBox();
            this.txtNoiSinh = new System.Windows.Forms.TextBox();
            this.txtLop = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.mtxtNgaySinh = new System.Windows.Forms.MaskedTextBox();
            this.cbGioiTinh = new System.Windows.Forms.ComboBox();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.btnRefresh = new System.Windows.Forms.Button();
            this.groupboxDSHS.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.datagridviewDSHS)).BeginInit();
            this.SuspendLayout();
            // 
            // groupboxDSHS
            // 
            this.groupboxDSHS.Controls.Add(this.datagridviewDSHS);
            this.groupboxDSHS.Location = new System.Drawing.Point(16, 18);
            this.groupboxDSHS.Margin = new System.Windows.Forms.Padding(4);
            this.groupboxDSHS.Name = "groupboxDSHS";
            this.groupboxDSHS.Padding = new System.Windows.Forms.Padding(4);
            this.groupboxDSHS.Size = new System.Drawing.Size(854, 274);
            this.groupboxDSHS.TabIndex = 0;
            this.groupboxDSHS.TabStop = false;
            this.groupboxDSHS.Text = "Danh sách học sinh";
            // 
            // datagridviewDSHS
            // 
            this.datagridviewDSHS.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.datagridviewDSHS.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.datagridviewDSHS.Location = new System.Drawing.Point(8, 33);
            this.datagridviewDSHS.Margin = new System.Windows.Forms.Padding(4);
            this.datagridviewDSHS.Name = "datagridviewDSHS";
            this.datagridviewDSHS.RowHeadersWidth = 51;
            this.datagridviewDSHS.RowTemplate.Height = 24;
            this.datagridviewDSHS.Size = new System.Drawing.Size(838, 233);
            this.datagridviewDSHS.TabIndex = 0;
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(24, 399);
            this.btnThem.Margin = new System.Windows.Forms.Padding(4);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(139, 50);
            this.btnThem.TabIndex = 1;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(184, 399);
            this.btnSua.Margin = new System.Windows.Forms.Padding(4);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(139, 50);
            this.btnSua.TabIndex = 1;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(346, 399);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(4);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(139, 50);
            this.btnXoa.TabIndex = 1;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Location = new System.Drawing.Point(514, 399);
            this.btnTimKiem.Margin = new System.Windows.Forms.Padding(4);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(139, 50);
            this.btnTimKiem.TabIndex = 1;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.toolTip1.SetToolTip(this.btnTimKiem, "Tìm kiếm theo tên");
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnLoad
            // 
            this.btnLoad.Location = new System.Drawing.Point(678, 399);
            this.btnLoad.Margin = new System.Windows.Forms.Padding(4);
            this.btnLoad.Name = "btnLoad";
            this.btnLoad.Size = new System.Drawing.Size(97, 50);
            this.btnLoad.TabIndex = 1;
            this.btnLoad.Text = "Load";
            this.btnLoad.UseVisualStyleBackColor = true;
            this.btnLoad.Click += new System.EventHandler(this.btnLoad_Click);
            // 
            // txtMaHocSinh
            // 
            this.txtMaHocSinh.Location = new System.Drawing.Point(24, 342);
            this.txtMaHocSinh.Name = "txtMaHocSinh";
            this.txtMaHocSinh.Size = new System.Drawing.Size(100, 32);
            this.txtMaHocSinh.TabIndex = 2;
            // 
            // txtTenHocSinh
            // 
            this.txtTenHocSinh.Location = new System.Drawing.Point(151, 342);
            this.txtTenHocSinh.Name = "txtTenHocSinh";
            this.txtTenHocSinh.Size = new System.Drawing.Size(172, 32);
            this.txtTenHocSinh.TabIndex = 2;
            // 
            // txtNoiSinh
            // 
            this.txtNoiSinh.Location = new System.Drawing.Point(591, 342);
            this.txtNoiSinh.Name = "txtNoiSinh";
            this.txtNoiSinh.Size = new System.Drawing.Size(141, 32);
            this.txtNoiSinh.TabIndex = 2;
            // 
            // txtLop
            // 
            this.txtLop.Location = new System.Drawing.Point(762, 342);
            this.txtLop.Name = "txtLop";
            this.txtLop.Size = new System.Drawing.Size(100, 32);
            this.txtLop.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 306);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(115, 24);
            this.label1.TabIndex = 3;
            this.label1.Text = "Mã học sinh";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(166, 306);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(123, 24);
            this.label2.TabIndex = 3;
            this.label2.Text = "Tên học sinh";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(359, 306);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(97, 24);
            this.label3.TabIndex = 3;
            this.label3.Text = "Ngày sinh";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(484, 306);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(84, 24);
            this.label4.TabIndex = 3;
            this.label4.Text = "Giới tính";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(612, 306);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(81, 24);
            this.label5.TabIndex = 3;
            this.label5.Text = "Nơi sinh";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(786, 306);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(42, 24);
            this.label6.TabIndex = 3;
            this.label6.Text = "Lớp";
            // 
            // mtxtNgaySinh
            // 
            this.mtxtNgaySinh.Location = new System.Drawing.Point(346, 342);
            this.mtxtNgaySinh.Mask = "00/00/0000";
            this.mtxtNgaySinh.Name = "mtxtNgaySinh";
            this.mtxtNgaySinh.Size = new System.Drawing.Size(110, 32);
            this.mtxtNgaySinh.TabIndex = 4;
            // 
            // cbGioiTinh
            // 
            this.cbGioiTinh.FormattingEnabled = true;
            this.cbGioiTinh.Items.AddRange(new object[] {
            "Nam",
            "Nữ"});
            this.cbGioiTinh.Location = new System.Drawing.Point(477, 342);
            this.cbGioiTinh.Name = "cbGioiTinh";
            this.cbGioiTinh.Size = new System.Drawing.Size(91, 32);
            this.cbGioiTinh.TabIndex = 5;
            // 
            // btnRefresh
            // 
            this.btnRefresh.Image = ((System.Drawing.Image)(resources.GetObject("btnRefresh.Image")));
            this.btnRefresh.Location = new System.Drawing.Point(799, 394);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(71, 55);
            this.btnRefresh.TabIndex = 6;
            this.btnRefresh.UseVisualStyleBackColor = true;
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // DeMo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(901, 511);
            this.Controls.Add(this.btnRefresh);
            this.Controls.Add(this.cbGioiTinh);
            this.Controls.Add(this.mtxtNgaySinh);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtLop);
            this.Controls.Add(this.txtNoiSinh);
            this.Controls.Add(this.txtTenHocSinh);
            this.Controls.Add(this.txtMaHocSinh);
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnSua);
            this.Controls.Add(this.btnLoad);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.groupboxDSHS);
            this.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "DeMo";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "DeMo";
            this.Load += new System.EventHandler(this.DeMo_Load);
            this.groupboxDSHS.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.datagridviewDSHS)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupboxDSHS;
        private System.Windows.Forms.DataGridView datagridviewDSHS;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnLoad;
        private System.Windows.Forms.TextBox txtMaHocSinh;
        private System.Windows.Forms.TextBox txtTenHocSinh;
        private System.Windows.Forms.TextBox txtNoiSinh;
        private System.Windows.Forms.TextBox txtLop;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.MaskedTextBox mtxtNgaySinh;
        private System.Windows.Forms.ComboBox cbGioiTinh;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Button btnRefresh;
    }
}

