using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Areas.Admin.Controllers
{
    public class LoginAdminController : Controller
    {
        [HttpGet]
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]

        public ActionResult Index(string Acc, string Pass)
        {
            bool isAuthentic = (Acc != null && Pass != null && Acc.ToLower().Equals("admin") && Pass.Equals("123456"));

            if (isAuthentic)

                return RedirectToAction("Index", "Dashboard", new { Area = "PrivatePages" });

            return View();

        }
    }
}