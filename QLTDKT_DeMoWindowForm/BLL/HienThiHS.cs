using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
using System.Data;

namespace BLL // Bussiness Layer
{
    public class HienThiHS
    {
        public static DataTable HienThi()
        {
            return DatabaseAccess.GetDataTable("select * from HocSinh");
        }
    }
}
