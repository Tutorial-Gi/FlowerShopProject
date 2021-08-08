﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="SuppilerForm.aspx.cs" Inherits="Flower_Shop.SuppilerForm"  %>
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
            <div class="container-fluid" >
                
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" >
                        <div class="product-payment-inner-st">

                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">
                                                    <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <h1>Supplier Form</h1>                                                              
                                                            </div>
                                                     </div>
                                                      <asp:Label ID="lbl_Error" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                                                      <asp:Label ID="lbl_Message" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>                                                                                                                                                         
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_SupplierName" runat="server" Text="Supplier Name" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_SupplierName" runat="server" Class="form-control"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="rf_SupplierName" runat="server" ErrorMessage="Enter name" 
                                                                    ControlToValidate="txt_SupplierName" ForeColor="Red" ValidationGroup="SupplierAddButton">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_SupplierAddress" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_SupplierAddress" runat="server" Class="form-control"></asp:TextBox>                                                                 
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_SupplierCity" runat="server" Text="City" Font-Bold="True" ></asp:Label>
                                                               <asp:TextBox ID="txt_SupplierCity" runat="server" Class="form-control"></asp:TextBox>                                                                 
                                                            </div>
                                                         </div>
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_SupplierPincode" runat="server" Text="Pincode" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_SupplierPincode" runat="server" Class="form-control"></asp:TextBox>                                                                 
                                                            </div>
                                                         </div>
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                                <asp:Label ID="lbl_SupplierState" runat="server" Text="State" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_SupplierState" runat="server" Class="form-control"></asp:TextBox>                                                                
                                                            </div>
                                                        </div>                                                       
                                                         <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_SupplierNumber" runat="server" Text="Mobile Number" Font-Bold="True"></asp:Label>
                                                               <asp:TextBox ID="txt_SupplierNumber" runat="server" Class="form-control"></asp:TextBox>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="SupplierAddButton" ErrorMessage="Enter Valid Number" ForeColor="Red"  ValidationExpression="[0-9]{10}" ControlToValidate="txt_SupplierNumber"></asp:RegularExpressionValidator>                                                     
                                                            </div>
                                                         </div>                                                                                                            
                                                                                                                              
                                                         <div class="row">
                                                            <div class="form-group col-lg-6">
                                                               <asp:Button ID="btn_SupplierSubmit" runat="server" Text="Submit" class="btn btn-success loginbtn" OnClick="btn_SupplierSubmit_Click1" ValidationGroup="SupplierAddButton" />
                                                                <asp:Button ID="btn_SupplierReset" runat="server" Text="Reset" class="btn btn-success loginbtn" OnClick="btn_SupplierReset_Click" />
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
