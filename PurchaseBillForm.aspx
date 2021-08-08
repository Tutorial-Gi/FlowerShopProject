<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="PurchaseBillForm.aspx.cs" Inherits="Flower_Shop.PurchaseBillForm" %>
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-payment-inner-st">

                            <div id="myTabContents" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description1">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone2" class="pro-ad addcoursepro">
                                                    <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <h1>Purchase Bill</h1>
                                                            </div>
                                                     </div>
                                                     <asp:Label ID="lbl_Error" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                                                    <div class="row">
                                                        <div class="form-group col-lg-3">
                                                            <asp:Label ID="lbl_BillId" Text="Bill Id" Font-Bold="true" runat="server"></asp:Label>
                                                            <asp:TextBox ID="txt_BillId" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                        </div>
                                                    </div>                                                           
                                                        <div class="row">
                                                            <div class="form-group col-lg-3">
                                                                <asp:Label ID="lbl_PurchaseBillNo" Text="Bill No" Font-Bold="true" runat="server"></asp:Label>
                                                                <asp:TextBox ID="txt_PurchaseBillNo" class="form-control" runat="server"></asp:TextBox>                                                              
                                                            </div>                                                              
                                                           <div class="form-group col-lg-3">
                                                                <asp:Label ID="lbl_PurchaseBillDate" runat="server" Text="Bill Date" Font-Bold="true"></asp:Label>
                                                                <asp:TextBox ID="txt_PurchaseBillDate" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>
                                                           </div>
                                                        </div>                                                        
                                                         <div class="row">                                                             
                                                            <div class="form-group col-lg-3">
                                                                 <asp:Label ID="lbl_SupplierName" runat="server"  Text="Supplier Id" Font-Bold="True"></asp:Label>
                                                                 <asp:TextBox ID="txt_SupplierName" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>  
                                                             </div>                                                                                                                                                                  
                                                             <div class="form-group col-lg-3">
                                                                 <asp:Label ID="lbl_BillMode" Text="Bill Mode" Font-Bold="true" runat="server"></asp:Label> 
                                                                  <asp:TextBox ID="txt_BillMode" runat="server"  class="form-control" ReadOnly="true" ></asp:TextBox>                                                                                                                             
                                                             </div>                                                      
                                                         </div>
                                                        <hr />                                                                                                                                                                           
                                                        <div class="row">
                                                           <asp:GridView ID="gv_PurchaseBill" runat="server"  AutoGenerateColumns="False" CssClass="table table-bordered table-responsive">                                                                                     
                                                                    <Columns>                                                                       
                                                                        <asp:BoundField DataField="ProductId" HeaderText="Product Id" SortExpression="ProductId " />                                                                      
                                                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                                                        <asp:BoundField DataField="Rate" HeaderText="Rate"  SortExpression="Rate" >
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Discount" HeaderText="Discount"  SortExpression="Discount" />
                                                                        <asp:BoundField DataField="TotalAmount" HeaderText="Total "  SortExpression="Total" />                                                                                                                                              
                                                                    </Columns>                                                                 
                                                             </asp:GridView>                                       
                                                                                                                  
                                                        </div>
                                                        <div class="row">                                                                
                                                                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                        <asp:Label ID="lbl_BillAmount" Text="Bill Amount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_BillAmount" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                        <asp:Label ID="lbl_RoundUp" Text="RoundUp Amount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_RoundUp" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                        <asp:Label ID="lbl_FinalAmount" Text="Final Amount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_FinalAmount" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>                                                                  
                                                                  </div>
                                                        </div><br />
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                                                     
                                                               <asp:Button ID="btn_Back" Text="Back" Class="btn btn-success loginbtn" runat="server" OnClick="btn_Back_Click"/>
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
