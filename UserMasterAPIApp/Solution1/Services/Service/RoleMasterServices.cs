using Data;
using Services.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service
{
    public class RoleMasterServices : IRoleMasterServices
    {
        SampleDemoEntities db = new SampleDemoEntities();

        public bool delete(int? RoleId)
        {
            try
            {
                var isDelete = db.DeleteRoleMaster(RoleId);
                return true;

            }
            catch(Exception ex)
            {
                Console.WriteLine("no parameters", ex);
                return false;
            }
        }

        public List<GetRoleMaster_Result> getRoleMaster()
        {
            return db.GetRoleMaster().ToList();
        }

        public bool update(RoleMaster roleMaster)
        {
            try
            {
                var isupdate = db.updateRoleMaster(roleMaster.RoleId, roleMaster.RoleName, roleMaster.RoleDescription);
                return true;
            }
            catch(Exception ex)
            {
                Console.WriteLine("no parameters", ex);
                return false;
            }
        }
    }
}
