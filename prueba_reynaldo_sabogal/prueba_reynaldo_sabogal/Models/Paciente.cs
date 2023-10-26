using System;
using System.Collections.Generic;

namespace prueba_reynaldo_sabogal.Models;

public partial class Paciente
{
    public int Id { get; set; }

    public string? TipoDocumento { get; set; }

    public string? NumeroDocumento { get; set; }

    public string? Nombres { get; set; }

    public string? Apellidos { get; set; }

    public string? CorreoElectronico { get; set; }

    public string? Telefono { get; set; }

    public DateTime? FechaNacimiento { get; set; }

    public string? EstadoAfiliacion { get; set; }
}
