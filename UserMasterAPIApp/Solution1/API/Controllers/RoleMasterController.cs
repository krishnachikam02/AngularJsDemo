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
    public class RoleMasterController : ApiController
    {
        IRoleMasterServices robj = new RoleMasterServices();

        public IHttpActionResult getRoleMaster()
        {
            return Ok(new { results = robj.getRoleMaster() });
        }
        public IHttpActionResult updateRoleMaster(RoleMaster roleMaster)
        {
            var isUpdate = robj.update(roleMaster);
            if (isUpdate == true)
                return Ok(isUpdate);
            return BadRequest();
        }
        public IHttpActionResult deleteRoleMaster(int? roleId)
        {
            var isDelete = robj.delete(roleId);
            if (isDelete == true)
                return Ok(isDelete);
            return BadRequest();
        }
    }
}
