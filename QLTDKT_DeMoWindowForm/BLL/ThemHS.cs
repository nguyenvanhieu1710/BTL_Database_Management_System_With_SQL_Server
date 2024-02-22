using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;

namespace BLL // Bussiness Layer
{
    public class ThemHS
    {   
        public static void Them(string MaHocSinh, string TenHocSinh, string NgaySinh, string GioiTinh, string NoiSinh, string Lop)
        {
            DatabaseAccess.ThucThiLenh($"Proc_ThemHocSinh '{MaHocSinh}', N'{TenHocSinh}', '{NgaySinh}', N'{GioiTinh}', N'{NoiSinh}', N'{Lop}'");
        }
    }
}
