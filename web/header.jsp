<%-- 
    Document   : header.jsp
    Created on : 6 d�c. 2016, 12:25:55
    Author     : Jo Max
--%>



<!-- container section start -->
<section id="container" class="">
    <!--header start-->
    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
        </div>
        <a class="logo">Gestion de <span class="lite">Paie</span></a>
    </header>      
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">                
                <li>                     
                    <a class="" href="AllEmploye.jsp">
                        <span>Liste des Employes</span>
                    </a>                
                </li>
                <li>                     
                    <a class="" href="AjoutEmploye.jsp">
                        <span>Ajouter un Employe</span>
                    </a>                 
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <span>Cong�</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><a class="" href="./DonnerConge.jsp">Donner un cong�</a></li>                          
                        <li><a class="" href="./RetourConge.jsp">Retour de cong�</a></li>
                        <li><a class="" href="./SituationConge.jsp">Situation de cong�</a></li>
                        <li><a class="" href="./validationConge.jsp">Validation de cong�</a></li>
                    </ul>
                </li> 
                <li>
                    <a class="" href="./index.jsp">
                        <span>Pointage</span>
                    </a>
                </li>
                <li>
                    <a class="" href="./PointageMultiple.jsp">
                        <span>Pointage Multiple</span>
                    </a>
                </li>
                <li>                     
                    <a class="" href="./DemandeAvance.jsp">
                        <span>Demande d'avance</span>
                    </a>                  
                </li>
                <li>                     
                    <a class="" href="./balCompte.jsp">
                        <span>Balance des Comptes</span>
                    </a>                  
                </li>
                <li>                     
                    <a class="" href="./FichedePaie.jsp">
                        <span>Fiche de Paie</span>
                    </a>             
                </li>   
                <li>                     
                    <a class="" href="Debaucher.jsp">
                        <span>D�baucher</span>
                    </a>                
                </li>
            </ul>
        </div>
    </aside>



