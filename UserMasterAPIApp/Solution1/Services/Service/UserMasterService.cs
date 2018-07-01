using Data;
using Services.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Service
{
    public class UserMasterService: IUserMasterService
    {
        SampleDemoEntities db = new SampleDemoEntities();

        public bool create(UserMaster userMaster)
        {
            try
            {
                var isSave = db.createUserMaster(userMaster.UserId, userMaster.Fullname, userMaster.EmailId, userMaster.password, userMaster.Active, userMaster.UpdatedBy, userMaster.UpdatedDate);
                return true;
            }
            catch(Exception ex)
            {
                Console.WriteLine("no parameters", ex);
                return false;
            }
           


        }

        public bool delete(int? UserId)
        {
            try
            {
                var isdelete = db.deleteUserMaster(UserId);
                return true;
            }catch(Exception ex)
            {
                Console.WriteLine("no parameters passed", ex);
                return false;
            }
        }

        public List<GetUsermaster_Result> GetUser()
        {
            return db.GetUsermaster().ToList();
        }

        public bool update(UserMaster userMaster)
        {
            try
            {
                var isupdate = db.updateUserMaster(userMaster.UserId, userMaster.Fullname, userMaster.EmailId, userMaster.password, userMaster.UpdatedBy, userMaster.UpdatedDate);
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine("no parameters", ex);
                return false;
            }
        }
        
        public List<ValidateUser_Result> ValidateUser(string EmailId, string password)
        {
            return db.ValidateUser(EmailId, password).ToList();
        }
    }
}
