using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Areas.PrivatePages.Controllers
{
    public class ProfileController : Controller
    {
        // GET: PrivatePages/Profile
        public ActionResult Index()
        {
            return View();
        }
    }
}