using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.MAUI.Converters
{
    public class ImageUrlConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string imagePath)
            {
                // URL base de las imágenes de TMDb
                string baseUrl = "https://image.tmdb.org/t/p/w500";
                // Tamaño de imagen deseado
                string imageSize = "w500"; // Puedes ajustar el tamaño según tus necesidades
                                           // Combinar la URL base con el tamaño y el nombre del archivo de imagen
                return $"{baseUrl}{imagePath}";
            }

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
