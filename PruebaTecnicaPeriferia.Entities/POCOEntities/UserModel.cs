using System.ComponentModel.DataAnnotations;

namespace PruebaTecnicaPeriferia.Entities.POCOEntities
{
    public class UserModel
    {
        [Key]
        public string Id { get; set; }
        public string User { get; set; }
        public string Password { get; set; }
    }
}
