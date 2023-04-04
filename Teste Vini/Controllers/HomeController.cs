using DATA.DB;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Teste_Vini.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var db = new ProjetoviniEntities();

            List<Cliente> clientes = db.Set<Cliente>()
                .ToList();

            return View(clientes);
        }

        public ActionResult InserirEditar(int? id)
        {
            var db = new ProjetoviniEntities();
            if (id != null)
            {

                return View(db.Set<Cliente>().Where(cliente => cliente.Cliente_ID == id).FirstOrDefault());
            }

            else
            {
                Cliente cliente = new Cliente();
                return View(cliente);
            }




        }
        [HttpPost]
        public ActionResult InserirEditar(Cliente model)
        {
            if (ModelState.IsValid)
            {
                var db = new ProjetoviniEntities();
                if (model.Cliente_ID <= 0)
                {
                    db.Set<Cliente>().Add(model);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    var cliente = db.Set<Cliente>().Where(c => c.Cliente_ID == model.Cliente_ID).FirstOrDefault();


                    cliente.Nome = model.Nome;
                    cliente.Email = model.Email;
                    cliente.Telefone= model.Telefone;   
                    db.Entry(cliente).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            else
            {

                return RedirectToAction("Index");
            }
        }

        public ActionResult Excluir(int id)
        {
            var db = new ProjetoviniEntities();
            if (id > 0)
            {

                Cliente cliente = db.Set<Cliente>().Where(delete => delete.Cliente_ID == id).FirstOrDefault();
                db.Set<Cliente>().Remove(cliente);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else

            {
                return RedirectToAction("Index");

            }





        }



    }
}