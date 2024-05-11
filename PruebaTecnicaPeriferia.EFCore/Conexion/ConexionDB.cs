using Microsoft.Maui.Devices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.EFCore.Conexion
{
    public static class ConexionDB
    {
        public static string ReturnPath(string nameBD)
        {
            string pathBD = string.Empty;
            
            if (DeviceInfo.Platform == DevicePlatform.Android) 
            { 
                pathBD = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
                pathBD = Path.Combine(pathBD, nameBD);
            }
            else if(DeviceInfo.Platform == DevicePlatform.iOS)
            {
                pathBD = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                pathBD = Path.Combine(pathBD,"..","Library",nameBD);
            }
            
            return pathBD;
        }
    }
}
