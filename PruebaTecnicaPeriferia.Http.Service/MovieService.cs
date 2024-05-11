using Newtonsoft.Json;
using PruebaTecnicaPeriferia.Entities.POCOEntities;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.Http.Service
{
    public class MovieService
    {
        protected string EndPointGetMovies { get; set; } = "https://api.themoviedb.org/3/movie/popular";

        public async Task<MovieModel> GetMovies()
        {
            var result = new MovieModel();

            var options = new RestClientOptions("https://api.themoviedb.org/3/movie/popular?language=en-US&page=1");
            var client = new RestClient(options);
            var request = new RestRequest("");
            request.AddHeader("accept", "application/json");
            request.AddHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0ZTE2MGM0YjQxZmYzYzMyMzNmNGYzMGZhYTk2MGU5MSIsInN1YiI6IjY2M2MwNzM2ODZlNTQ1NDY4MjAxMTg0MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.O-NuqFeBGgHzdbTG1F2zXlIyWdvDUizsBr93GhwjhV0");

            try
            {
                var response = await client.ExecuteAsync(request);                

                if (response.IsSuccessful)
                {
                    var json = response.Content;

                    if (!string.IsNullOrWhiteSpace(json))
                    {
                        result = JsonConvert.DeserializeObject<MovieModel>(json);
                    }
                }
                else
                {
                    // Manejar el caso en que la solicitud no sea exitosa
                    Console.WriteLine($"Error al obtener películas. Código de estado: {response.StatusCode}");
                }
            }
            catch (Exception ex)
            {
                // Manejar cualquier excepción que pueda ocurrir durante la solicitud
                Console.WriteLine($"Error al obtener películas: {ex.Message}");
            }

            return result;

        }        

    }
}
