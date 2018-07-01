using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.IService
{
   public interface IUserMasterService
    {
        List<GetUsermaster_Result> GetUser();
        bool create(UserMaster userMaster);
        bool update(UserMaster userMaster);
        bool delete(int? UserId);

       List< ValidateUser_Result> ValidateUser(String EmailId,String password);
    }
}
