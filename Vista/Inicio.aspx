<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vista.Inicio" %>

<asp:Content ID="Inicio" ContentPlaceHolderID="ContenidoGeneral" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-sm">
                
            </div>
            <div class="col-sm">
                <div class="container">
                    <asp:Button ID="btnConectar" runat="server" Text="Conectar" OnClick="btnConectar_Click" />
                </div>
            </div>
            <div class="col-sm">
                
            </div>
        </div>

    </div>
</asp:Content>

