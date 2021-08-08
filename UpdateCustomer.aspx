<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="Flower_Shop.UpdateCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="#"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
             <div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="product-payment-inner-st">

                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">
                                               
                                                    <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <h1>Customer Form</h1>
                                                                 <asp:Label ID="lbl_Error" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                                                                <asp:Label ID="lbl_Message" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>                                               
                                                              
                                                            </div>
                                                     </div>
                                                                                                   
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_CustomerID" runat="server"  Text="Customer Id" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerID" runat="server" readonly="true" Class="form-control"></asp:TextBox>
                                                              
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_CustomerName" runat="server" Text="Customer Name" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerName" runat="server" Class="form-control"></asp:TextBox>
                                                              
                                                            </div>
                                                        </div><div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_CustomerAddress" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerAddress" runat="server" Class="form-control"></asp:TextBox>
                                                               
                                                            </div>
                                                         </div>
                                                         
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_CustomerCity" runat="server" Text="City" Font-Bold="True" ></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerCity" runat="server" Class="form-control"></asp:TextBox>
                                                              
                                                            </div>
                                                         </div>
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_CustomerState" runat="server" Text="State" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerState" runat="server" Class="form-control"></asp:TextBox>
                                                                
                                                            </div>
                                                        </div>
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_CustomerPincode" runat="server" Text="Pincode" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerPincode" runat="server" Class="form-control"></asp:TextBox>
                                                                
                                                            </div>
                                                         </div> 
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_CustomerNumber" runat="server" Text="Mobile Number" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_CustomerNumber" runat="server" Class="form-control"></asp:TextBox>                                                             

                                                            </div>
                                                         </div>                                                          
                                                        <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <asp:Button ID="btn_CustomerUpdate" runat="server" Text="Update" class="btn btn-success loginbtn" OnClick="btn_CustomerUpdate_Click"/> 
                                                                
                                                            </div>                                                       
                                                        </div>
                                                        </div>                                                                                        
                                              </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>	
</asp:Content>
