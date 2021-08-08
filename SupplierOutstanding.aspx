<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="SupplierOutstanding.aspx.cs" Inherits="Flower_Shop.SupplierOutstanding" %>
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
                                                                     <h1>Supplier Outstanding</h1>                                                 
                                                                 </div>                                  
                                                     </div>                                                    
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_Error" runat="server"></asp:Label>
                                                            </div> 
                                                             <asp:GridView ID="gv_Outstanding" runat="server" CssClass="table table-bordered table-responsive" AllowPaging="true" OnPageIndexChanging="gv_Outstanding_PageIndexChanging" PageSize="10" AutoGenerateColumns="False"
                                                                   DataSourceID="SqlDataSource1" DataKeyName="SupplierId" >                                                          
                                                                    <Columns>
                                                                        <asp:BoundField DataField="SupplierId" HeaderText="SupplierId" SortExpression="SupplierId" > </asp:BoundField>
                                                                        <asp:BoundField DataField="Name" HeaderText="Name"  SortExpression="Name" />                                                                        
                                                                        <asp:BoundField DataField="City" HeaderText="City"  SortExpression="City" />                                                                       
                                                                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" SortExpression="Mobile No" /> 
                                                                        <asp:BoundField DataField="RemainingAmount" HeaderText="Remaining Amount" SortExpression="RemainingAmount" />                                                                  
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
