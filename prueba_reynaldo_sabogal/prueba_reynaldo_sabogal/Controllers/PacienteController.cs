using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using prueba_reynaldo_sabogal.Models;

namespace prueba_reynaldo_sabogal.Controllers
{
    [Route("Paciente")]
    [ApiController]
    public class PacienteController : ControllerBase
    {
        PruebaReynaldoSabogalContext db = new PruebaReynaldoSabogalContext();

        [HttpGet]
        public IEnumerable<Paciente> obtener()
        {
            IEnumerable<Paciente> vistaPacientes;            
            vistaPacientes = db.Pacientes.ToList();
            

            return vistaPacientes;
        }

        [HttpPost]
        public IActionResult Guardar([FromBody] Paciente usu)
        {
            db.Pacientes.Add(usu);
            db.SaveChanges();
            string mensaje = $"Ingresado el usuario {usu.NumeroDocumento}";

            return Ok(mensaje);
        }

        [HttpPut("{id}")]
        public IActionResult Editar(int Id, [FromBody] Paciente usu)
        {
            var usuarioExiste = db.Pacientes.Count(c => c.Id == Id) > 0;

            if (usuarioExiste)
            {
                db.Entry(usu).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                db.SaveChanges();
                string mensaje = $"Modificado el usuario {usu.NumeroDocumento}";
                return Ok(mensaje);
            }
            else
            {
                var resultado = "no encontrado";
                return BadRequest(resultado);
            }
        }

        [HttpDelete("{id}")]
        public IActionResult Borrar(int Id)
        {
           var existeUsuario = db.Pacientes.Find(Id);

            if (existeUsuario == null)
            {
                return NotFound(); // no se ha encontrado el paciente
            }
            else
            {
                db.Pacientes.Remove(existeUsuario);
                db.SaveChanges();
                return NoContent();
            }

        }
        /*
        public IActionResult Index()
        {
            using PruebaReynaldoSabogalContext db = new PruebaReynaldoSabogalContext();
            var funcionarios = db.Pacientes.ToList();
            return View(funcionarios);
        }
        */
    }
}
