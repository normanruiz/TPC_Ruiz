<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.Master" AutoEventWireup="true" CodeBehind="ManejoUsuarios.aspx.cs" Inherits="Vista.ManejoUsuarios" %>

<asp:Content ID="manejoMedicos" ContentPlaceHolderID="AdministracionGeneral" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                    <%--<a class="navbar-brand" href="#">Navbar</a>--%>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                </nav>
            </div>
            <div class="col-sm">
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Correo</th>
                            <th scope="col">IdPerfil</th>
                            <th scope="col">Perfil</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% foreach (var usuario in ListaUsuarios)
                            {%>

                        <tr>
                            <td><% = usuario.Id %></td>
                            <td><% = usuario.Nombre %></td>
                            <td><% = usuario.Apellido %></td>
                            <td><% = usuario.Correo %></td>
                            <td><% = usuario.Perfil.Id %></td>
                            <td><% = usuario.Perfil.Tipo %></td>
                            <td><% = usuario.Usr %></td>
                            <td><% = usuario.Pwd %></td>
                            <td><% = usuario.Estado %></td>
                        </tr>

                        <%} %>
                    </tbody>
                </table>

            </div>
            <div class="col-sm">
            </div>
        </div>
    </div>

</asp:Content>
