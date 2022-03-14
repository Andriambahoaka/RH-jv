<%-- 
    Document   : Pointage
    Created on : 11 déc. 2016, 21:35:52
    Author     : Jo Max
--%><
<%//@page import="paie.Fonction"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Pointage</title>
        <%@include file="css.jsp"%>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <section id="main-content">
            <section class="wrapper">  
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Pointage
                            </header>
                            <div class="panel-body">
                                <form class="form-horizontal " method="get" action="redirectPointage.jsp"> 
                                    <div class="form-group" id="div">
                                        <label class="col-sm-2 control-label">N° Matricule ou CIN</label>
                                        <div class="col-sm-8">
                                            <input  id="idMatrCin" type="text" class="form-control" name="matrCin" value="">

                                        </div>
                                        <div class="col-sm-2">
                                            <button onclick="checkEmploye()" class="btn btn-success"><span class="fa fa-check"></span></button>

                                        </div>
                                    </div>
                                    <input type="text"  id="idEmploye" class="form-control" name="idEmploye" value="">
                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Type</label>
                                        <div class="col-lg-10">
                                            <select class="form-control m-bot15" name="type">
                                                <option>Entree</option>
                                                <option>Sortie</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Date</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="date">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Heure</label>
                                        <div class="col-sm-10">
                                            <input type="time" class="form-control" name="heure">
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="OK" >
                                </form>
                            </div>
                        </section>
                    </div>
                </div>
                <!-- page end-->
            </section>
        </section>
        <!--main content end-->
    </section>
    <!-- container section end -->
    <!-- javascripts -->
    <%@ include file="footer.jsp"%>
    <script>
        function showEmploye() {
            var MatrCin = $('#idMatrCin').val();
            var idDiv = $('#div');
            console.log(MatrCin);
            $.ajax({
                url: url + 'InfoEmploye.jsp',
                type: 'GET',
                dataType: 'html',
                data: 'MatrCin=' + MatrCin,
                success: function (code_json, statut) { // success est toujours en place, bien sûr !
                    var val = code_json;
                    console.log("val"+val);
                    if (val = 0) {
                        idDiv.append(val);
                    } else {
                        idDiv.append(val);
                    }
                },
                error: function (resultat, statut, erreur) {
                    console.log(resultat);

                },
                complete: function (resultat, statut) {
                }
            });
        }

    </script>