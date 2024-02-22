using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL // Bussiness Layer
{
    public class TimKiemHS
    {
        public static DataTable TimKiem(string TenHocSinh)
        {
            return DatabaseAccess.GetDataTable($"proc_TimKiemHocSinhTheoTen N'{TenHocSinh}'");
        }
    }
}
