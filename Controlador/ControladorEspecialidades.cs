using Modelo;
using Servicio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controlador
{
    public class ControladorEspecialidades
    {
        public List<Especialidad> Listar()
        {
            List<Especialidad> listadoEspecialidades;
            Especialidad especialidad;
            AccesoDatos conexion = null;
            try
            {
                listadoEspecialidades = new List<Especialidad>();
                conexion = new AccesoDatos();
                conexion.Conectar();
                conexion.EjecutarConsulta("");
                while (conexion.Lector.Read())
                {
                    especialidad = new Especialidad();

                    listadoEspecialidades.Add(especialidad);
                }

                return listadoEspecialidades;
            }
            catch (Exception excepcion)
            {
                throw excepcion;
            }
            finally
            {
                if (conexion != null)
                {
                    conexion.Desconectar();
                }
            }

        }
    }
}
