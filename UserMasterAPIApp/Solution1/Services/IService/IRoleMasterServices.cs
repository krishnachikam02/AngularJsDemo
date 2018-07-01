using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.IService
{
    public interface IRoleMasterServices
    {
        List<GetRoleMaster_Result> getRoleMaster();
        bool update(RoleMaster roleMaster);

        bool delete(int? RoleId);
    }
}
