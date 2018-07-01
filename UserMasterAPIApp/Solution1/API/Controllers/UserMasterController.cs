using Data;
using Services.IService;
using Services.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API.Controllers
{
    public class UserMasterController : ApiController
    {
        IUserMasterService objuserservice = new UserMasterService();

        public IHttpActionResult GetUserMaster()
        {
            return Ok(new { results = objuserservice.GetUser() });
        }
        [HttpPost]
        public IHttpActionResult CreateUserMaster(UserMaster userMaster)
        {
            var isSave = objuserservice.create(userMaster);
            if (isSave == true)
                return Ok(isSave);
            return BadRequest();
        }
        public IHttpActionResult DeleteUserMaster(int? UserId)
        {
            var isDelete = objuserservice.delete(UserId);
            if (isDelete == true)
                return Ok(isDelete);
            return BadRequest();
        }
        [HttpPut]
        public IHttpActionResult UpdateUserMaster(UserMaster userMaster)
        {
            var isUpdate = objuserservice.update(userMaster);
            if (isUpdate == true)
                return Ok(isUpdate);
            return BadRequest();
        }
        [HttpGet]
        public IHttpActionResult ValidateUser(string emailid,string password)
        {
            return Ok(new { results = objuserservice.ValidateUser(emailid, password) });

        }

    }
}
