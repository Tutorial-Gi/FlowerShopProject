<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="ProductStock.aspx.cs" Inherits="Flower_Shop.ProductStock" %>
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
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">
                                                     <div class="row">
                                                                <div class="form-group col-lg-12">
                                                                    <h1>Product Stock</h1>                                                                                                                          
                                                                 </div>                                  
                                                      </div>                                                                                                                                                      
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_Error" runat="server"></asp:Label>
                                                            </div> 
                                                             <asp:GridView ID="gv_ProductStock" runat="server" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False" 
                                                                   DataSourceID="SqlDataSource1" DataKeyName="ProductId" OnPageIndexChanging="gv_ProductStock_PageIndexChanging" AllowPaging="true" PageSize="10">                                                                                                                                                                                                                                                                        
                                                                    <Columns>
                                                                        <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" >                                                                    
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Name" HeaderText="Name"  SortExpression="Name" />
                                                                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                                                        <asp:BoundField DataField="Color" HeaderText="Color"  SortExpression="Color" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Occassion" HeaderText="Occassion"  SortExpression="Occassion" />
                                                                        <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />  
                                                                        <asp:BoundField DataField="BalanceQuantity" HeaderText="Balance Quantity"  SortExpression="BalanceQuantity" />                                                                                                                                                                                                                    
                                                                        <asp:BoundField DataField="SaleRate" HeaderText="SaleRate"  SortExpression="SaleRate" />                                                                        
                                                                    </Columns>
                                                             </asp:GridView>                                                             
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
