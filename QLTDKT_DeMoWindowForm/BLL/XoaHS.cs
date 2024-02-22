using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL // Bussiness Layer
{
    public class XoaHS
    {
        public static void Xoa(string MaHocSinh)
        {
            DatabaseAccess.ThucThiLenh($"proc_DeleteHocSinh '{MaHocSinh}'");
        }
    }
}
