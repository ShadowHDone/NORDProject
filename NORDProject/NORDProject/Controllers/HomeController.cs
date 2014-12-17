using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GreatMazinger;
using NORDProject.DAO;
using NORDProject.Models;


namespace NORDProject.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        //private Calc calc = new Calc(); // Создаем объект от GreatMizenger
        static string nordp = "NORDP | ";

        public ActionResult Index()
        {
            ViewData["Message"] = "Все ленты новостей";
            ViewData["Title"] = nordp + "Все ленты новостей";

            return View(new NewsDAO().select());
        }
        

        public ActionResult About()
        {
            ViewData["Message"] = "Про NORD Project";
            ViewData["Title"] = nordp + "Про NORD Project";

            return View();
        }

        // Бесполезный метод, нужно будет удалить, когда убеждусь, что и само представление тоже можно удалить
        public ActionResult NewsList()
        {
            return View(new NewsDAO().select());
        }

        //
        // GET: /Home/News
        public ActionResult News(int id)
        {
            News news = new NewsDAO().selectbyId(id);
            string select = news.title;
            ViewData["Message"] = select;
            ViewData["Title"] = nordp + select;

            return View(news);
        }

        //
        // GET: /Home/Delete
        public ActionResult Delete(int id)
        {
            NewsDAO news = new NewsDAO();
            string select = news.selectbyId(id).title;
            ViewData["Message"] = "Удаление новости";
            ViewData["Title"] = "Удаление новости:" + select;

            return View(news.selectbyId(id));
        }

        //
        // POST: /Home/Delete
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(News news)
        {
            try
            {
                NewsDAO dao = new NewsDAO();
                dao.delete(news.ID);
            }
            catch
            {
                return View("Create");
            }
            return RedirectToAction("Index");
        }

        //
        // GET: /Home/Edit
        public ActionResult Edit(int id)
        {
            NewsDAO news = new NewsDAO();
            string select = news.selectbyId(id).title;
            ViewData["Message"] = select;
            ViewData["Title"] = nordp + select;

            return View(news.selectbyId(id));
        }

        //
        // POST: /Home/Edit
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(News news)
        {

                NewsDAO dao = new NewsDAO();
                dao.update(news);

            return RedirectToAction("Index");
        }

        //
        // GET: /Home/Create
        public ActionResult Create()
        {
            ViewData["Message"] = ViewData["Title"] = "Добавление новости";

            return View();
        }

        //
        // POST: /Home/Edit
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(News news)
        {
            try
            {
                NewsDAO dao = new NewsDAO();
                dao.insert(news);
            }
            catch
            {
                return View("Edit");
            }
            return RedirectToAction("Index");
        }

        public ActionResult Comment(int id)
        {
            return PartialView(new CommentsDAO().selectbyId(id));
        }

    }
}
