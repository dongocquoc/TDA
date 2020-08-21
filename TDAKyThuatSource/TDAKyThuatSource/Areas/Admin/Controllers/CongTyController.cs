using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TDAKyThuatSource.Models;

namespace TDAKyThuatSource.Areas.Admin.Controllers
{
    public class CongTyController : Controller
    {
        private TDAKTEntities _context = new TDAKTEntities();
        //
        // GET: /Admin/CongTy/
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public JsonResult ListCongty()
        {
            var ListCT = _context.DonVi.Select(s => new {s.iMaDonVi,s.sTenDonVi,s.sDiaChi }).ToList();
            var list = JsonConvert.SerializeObject(ListCT,
                       Formatting.None,
                       new JsonSerializerSettings()
            {
                ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore
            });
            return Json(list, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult AddCongty(DonVi model)
        {
            if (model == null)
            {
                return null;
            }
            else
            {
                _context.DonVi.Add(model);
                _context.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult EditCongty(DonVi model)
        {
            if (model == null)
            {
                return null;
            }
            else
            {
                _context.SaveChanges();
                return Json(true, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult DeleteCongty(int id)
        {
            var model = _context.DonVi.Find(id);
            if (model != null)
            {
                _context.DonVi.Remove(model);
                return Json(true, JsonRequestBehavior.AllowGet);
            }
            return null;
        }

    }
}