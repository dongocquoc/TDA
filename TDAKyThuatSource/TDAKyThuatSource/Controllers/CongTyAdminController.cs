using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDAKyThuatSource.Models;

namespace TDAKyThuatSource.Controllers
{
    public class CongTyAdminController : Controller
    {
        private TDAKTEntities _context = new TDAKTEntities();
        //
        // GET: /CongTy/
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult ListCongty()
        {
            var ListCT = _context.DonVi.ToList();
            return Json(ListCT, JsonRequestBehavior.AllowGet);
        }
	}
}