using PruebaTecnicaPeriferia.Entities.POCOEntities;
using Microsoft.EntityFrameworkCore;
using PruebaTecnicaPeriferia.EFCore.Conexion;

namespace PruebaTecnicaPeriferia.EFCore.DataAccess
{
    public class PruebaTecnicaDBContext : DbContext
    {
        public DbSet<UserModel> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string conectionDB = $"Filename={ConexionDB.ReturnPath("pruebatecnica.db")}";
            optionsBuilder.UseSqlite(conectionDB);
        }
    }
}
