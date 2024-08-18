using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Areas.PrivatePages.Controllers
{
    public class InboxController : Controller
    {
        // GET: PrivatePages/Inbox
        public ActionResult Index()
        {
            return View();
        }
    }
}