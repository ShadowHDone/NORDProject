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
        //Хотя нет, хорошо, что не удалил -- он сослужил мне добрую службу :)
        public ActionResult NewsList()
        {
            return View(new NewsDAO().selectForAuthor(User.Identity.Name));
        }
        public ActionResult FullNewsList()
        {
            return View(new NewsDAO().selectAll());
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

        public ActionResult SetTemp(int id)
        {
            new NewsDAO().SetStatusTemp(id);
            return RedirectToAction("Index");
        }

        public ActionResult SetPublic(int id)
        {
            new NewsDAO().SetStatusPublic(id);
            return RedirectToAction("Index");
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
            NewsDAO dao = new NewsDAO();
            dao.insert(news);

            return RedirectToAction("Index");
        }

        public ActionResult Comment(int id)
        {
            return PartialView(new CommentsDAO().selectbyId(id));
        }

        //
        // GET: /Home/CommentCreate
        public ActionResult CommentCreate(int id)
        {
            return PartialView(new Comment() { NewsID = id });
        }

        //
        // POST: /Home/CommentCreate
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult CommentCreate(Comment comment)
        {
            comment.author = User.Identity.Name;
            new CommentsDAO().insert(comment);
            return View();
        }

        //REPORTS
        public ActionResult Reports()
        {
            return View(new ReportDAO().select());
        }
        public ActionResult SetNewsReport(int id)
        {
            new ReportDAO().SetNewsReport(id, User.Identity.Name);
            return RedirectToAction("Index");
        }
        public ActionResult SetCommentReport(int id)
        {
            new ReportDAO().SetCommentReport(id, User.Identity.Name);
            return RedirectToAction("Index");
        }
    }
}
