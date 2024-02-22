using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAL //Data Layer
{
    public class DatabaseAccess
    {
        static string strconnect = @"Data Source=MSI;Initial Catalog=S13_NguyenVanHieu;Integrated Security=True";
        /// <summary>
        /// Phương thức thực thi câu lệnh SQL không trả về dữ liệu
        /// </summary>
        /// <param name="strSQL">Chuỗi câu lệnh SQL mà bạn muốn thực hiện</param>
        public static void ThucThiLenh(string strSQL)
        {
            using (SqlConnection connection = new SqlConnection(strconnect))
            {
                connection.Open();
                using(SqlCommand command = new SqlCommand(strSQL, connection))
                {
                    command.ExecuteNonQuery();//thực thi câu lệnh SQL
                }
            }
        }
        /// <summary>
        /// Phương thức thực thi câu lệnh SQL trả ra 1 bảng dữ liệu 
        /// </summary>
        /// <param name="strSQL">Chuỗi câu lệnh SQL mà bạn muốn thực hiện</param>
        /// <returns></returns>
        public static DataTable GetDataTable(string strSQL)
        {
            using (SqlDataAdapter adapter = new SqlDataAdapter(strSQL, strconnect))
            {
                DataTable dt = new DataTable();
                adapter.Fill(dt);//fill là lấy dữ liệu của sql điền vào dt và fill có thể tự động đóng mở kết nối
                return dt;
            }
        }
    }
}
