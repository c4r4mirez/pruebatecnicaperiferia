using Microsoft.Extensions.Logging;
using PruebaTecnicaPeriferia.EFCore.DataAccess;
using PruebaTecnicaPeriferia.Http.Service;
using PruebaTecnicaPeriferia.MAUI.ViewModels;
using PruebaTecnicaPeriferia.MAUI.Views;

namespace PruebaTecnicaPeriferia.MAUI
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            // Views
            builder.Services.AddTransient<LoginView>();
            builder.Services.AddTransient<MoviesView>();
            builder.Services.AddTransient<MovieDetailView>();

            // ViewModels
            builder.Services.AddTransient<LoginViewModel>();
            builder.Services.AddTransient<MoviesViewModel>();
            builder.Services.AddTransient<MovieDetailViewModel>();

            // Services
            builder.Services.AddSingleton<MovieService>();
            builder.Services.AddDbContext<PruebaTecnicaDBContext>();

            // Crea la base de datos sqlite
            var dbContext = new PruebaTecnicaDBContext();
            dbContext.Database.EnsureCreated();
            dbContext.Dispose();

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
