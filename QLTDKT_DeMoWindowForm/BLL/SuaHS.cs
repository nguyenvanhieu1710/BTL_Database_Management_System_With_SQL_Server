using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL // Bussiness Layer
{
    public class SuaHS
    {
        public static void Sua(string MaHocSinh, string TenHocSinh, string NgaySinh, string GioiTinh, string NoiSinh, string Lop)
        {
            DatabaseAccess.ThucThiLenh($"SuaHocSinh '{MaHocSinh}', N'{TenHocSinh}', '{NgaySinh}', N'{GioiTinh}', N'{NoiSinh}', N'{Lop}'");
        }
    }
}
