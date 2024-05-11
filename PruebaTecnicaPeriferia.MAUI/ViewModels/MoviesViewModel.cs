using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using PruebaTecnicaPeriferia.Entities.POCOEntities;
using PruebaTecnicaPeriferia.Http.Service;
using PruebaTecnicaPeriferia.MAUI.Views;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.MAUI.ViewModels
{
    public partial class MoviesViewModel : BaseViewModel
    {

        #region Properties
        public ObservableCollection<Movie> MoviesList { get; } = new();

        MovieService _movieService;        
        #endregion

        #region Constructor
        public MoviesViewModel(MovieService movieService)
        {
            _movieService = movieService;

            GetMovies();
        }
        #endregion

        #region Methods
        private async Task GetMovies()
        {
            try
            {                
                var result = await _movieService.GetMovies();

                if (result.total_results > 0)
                {
                    foreach (var movie in result.results)
                    {
                        MoviesList.Add(movie);
                    }                    
                }
            }
            catch (System.Net.WebException)
            {
                await Shell.Current.DisplayAlert("Error", "No se pudo establecer la conexión al servidor", "OK");
            }
            catch (Newtonsoft.Json.JsonReaderException)
            {
                await Shell.Current.DisplayAlert("Error", "Error en código del servidor", "OK");
            }
            catch (System.Exception ex)
            {
                await Shell.Current.DisplayAlert("Error", ex.Message, "OK");
            }
        }
        #endregion

        #region Commands
        [RelayCommand]
        public async Task GoToMovieDetail(Movie _movie)
        {
            var data = new Dictionary<string, object>
            {
                {"myMovie", _movie}
            };

            await Shell.Current.GoToAsync(nameof(MovieDetailView), false, data);
        }
        #endregion

    }
}
