﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="es.admin.Register" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">


    <!-- PAGE CONTAINER -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div id="root" class="root front-container">

        <!-- CONTENTS -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <section id="content" class="content">
            <div class="content__boxed w-100 min-vh-100 d-flex flex-column align-items-center justify-content-center">
                <div class="content__wrap">

                    <!-- Login card -->
                    <div class="card shadow-lg">
                        <div class="card-body">

                            <div class="text-center">
                                <h1 class="h3">Create a New Account</h1>
                                <br />
                            </div>

                            <div class="w-md-400px d-inline-flex row g-3 mb-4">
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="First name" aria-label="First name" autofocus>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" placeholder="Company Name" aria-label="Company Name">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" placeholder="Website" aria-label="Website">
                                </div>
                                <div class="col-12">
                                    <input type="email" class="form-control" placeholder="Email" aria-label="Email">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" placeholder="Phone" aria-label="Phone">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" placeholder="Address" aria-label="Address">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" placeholder="Password" aria-label="Password">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Confirm Password">
                                </div>
                            </div>

                            <div class="form-check">
                                <input id="_dm-registerCheck" class="form-check-input" type="checkbox">
                                <label for="_dm-registerCheck" class="form-check-label">
                                    I agree with the <a href="#" class="btn-link text-decoration-underline">Terms and Conditions</a>
                                </label>
                            </div>

                            <div class="d-grid mt-5">
                                <button class="btn btn-primary btn-lg" type="submit">Register</button>
                            </div>

                            <div class="d-flex justify-content-between mt-4">
                                Already have an account ?
                        <a href="Login.aspx" class="btn-link text-decoration-none">Sign In</a>
                            </div>

                            <div class="d-flex align-items-center justify-content-between border-top pt-3 mt-3">
                            </div>


                        </div>
                    </div>

                    <!-- END : Login card -->



                </div>
            </div>


        </section>

        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - CONTENTS -->
    </div>
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- END - PAGE CONTAINER -->


</asp:Content>