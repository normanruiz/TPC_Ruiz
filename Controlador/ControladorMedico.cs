using Modelo;
using Servicio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controlador
{
    public class ControladorMedico
    {

        public List<Medico> Listar()
        {
            List<Medico> listadoMedicos;
            Medico medico;
            AccesoDatos conexion = null;
            try
            {
                listadoMedicos = new List<Medico>();
                conexion = new AccesoDatos();
                conexion.Conectar();
                conexion.EjecutarConsulta("select m.Id, m.Nombre, m.Apellido, m.Correo from medicos as m");
                while (conexion.Lector.Read())
                {
                    medico = new Medico();
                    medico.Id = (int)conexion.Lector["Id"];
                    medico.Nombre = (string)conexion.Lector["Nombre"];
                    medico.Apellido = (string)conexion.Lector["Apellido"];
                    medico.Correo = (string)conexion.Lector["Correo"];

                    listadoMedicos.Add(medico);
                }

                return listadoMedicos;
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
