﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Areas.PrivatePages.Controllers
{
    public class DashboardController : Controller
    {
        // GET: PrivatePages/Dashboard
        public ActionResult Index()
        {
            return View();
        }
    }
}