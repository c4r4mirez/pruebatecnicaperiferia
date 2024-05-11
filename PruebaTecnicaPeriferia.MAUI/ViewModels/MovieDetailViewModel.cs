using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using PruebaTecnicaPeriferia.Entities.POCOEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.MAUI.ViewModels
{
    [QueryProperty(nameof(Movie), "myMovie")]

    public partial class MovieDetailViewModel : BaseViewModel
    {
        #region Properties
        [ObservableProperty]
        Movie movie;
        #endregion

        #region Constructor
        public MovieDetailViewModel()
        {            
        }
        #endregion

        #region MyRegion
        [RelayCommand]
        public void ShowMessage()
        {
            Shell.Current.DisplayAlert("Info", "Available soon", "Ok");
        }
        #endregion
    }
}
