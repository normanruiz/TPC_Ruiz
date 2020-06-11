<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.Master" AutoEventWireup="true" CodeBehind="PanelAdministracion.aspx.cs" Inherits="Vista.PanelAdministracion" %>

<asp:Content ID="PanelAdministracion" ContentPlaceHolderID="AdministracionGeneral" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <asp:Button ID="btnABMUsuarios" runat="server" Text="Administrar usuarios" OnClick="btnABMUsuarios_Click" />
            </div>
            <div class="col-sm">
                <asp:Button ID="btnABMMedicos" runat="server" Text="Administrar medicos" OnClick="btnABMMedicos_Click" />
            </div>
            <div class="col-sm">
                <asp:Button ID="btnABMPacientes" runat="server" Text="Administrar pacientes" OnClick="btnABMPacientes_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <asp:Button ID="btnABMEspecialidades" runat="server" Text="Administrar especialidades" OnClick="btnABMEspecialidades_Click" />
            </div>
            <div class="col-sm">
                <asp:Button ID="btnABMTurnos" runat="server" Text="Administrar turnos" OnClick="btnABMTurnos_Click" />
            </div>
            <div class="col-sm">
                <asp:Button ID="btnSalir" runat="server" Text="Salir" OnClick="btnSalir_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
            <div class="col-sm">
            </div>
        </div>
    </div>

</asp:Content>
