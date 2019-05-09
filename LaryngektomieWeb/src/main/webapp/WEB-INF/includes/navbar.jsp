<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="px-5 navbar navbar-expand-md navbar-dark bgcolor1" role="navigation">
	<div class="container">
	<div class="mx-auto order-0">
        <a class="navbar-brand mx-auto" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse w-100 order-1 order-md-1 dual-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item ${action eq 'index' ? 'active' : ''}">
                <a class="nav-link " href="/">Úvod</a>
            </li>
            <%-- <li class="nav-item ${action eq 'jicnovy-hlas' ? 'active' : ''}">
                <a class="nav-link" href="/jicnovy-hlas">Jícnový hlas</a>
            </li> --%>
            <li class="nav-item dropdown ${action eq 'o-nas' ? 'active' : ''}">
		       <a class="nav-link dropdown-toggle" href="#" id="oNasDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          O&nbsp;nás
		        </a>
		        <div class="dropdown-menu" aria-labelledby="oNasDropdown">
		          <a class="dropdown-item" href="/o-nas/clenstvi">Členství</a>
		          <!--CARA MEZI  <div class="dropdown-divider"></div> -->
		          <a class="dropdown-item" href="/o-nas/stanovy">Stanovy???</a>
		        </div>
		    </li>
            
            <li class="nav-item dropdown ${action eq 'nase-cinnost' ? 'active' : ''}">
		       <a class="nav-link dropdown-toggle" href="#" id="naseCinnostDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Naše&nbsp;činnost
		        </a>
		        <div class="dropdown-menu" aria-labelledby="naseCinnostDropdown">
		          <a class="dropdown-item" href="/nase-cinnost/setkavani-pacientu">Setkávání pacientů</a>
		          <a class="dropdown-item" href="/nase-cinnost/poradenstvi">Poradenství</a>
		          <a class="dropdown-item" href="/nase-cinnost/zpravodaj">Zpravodaj</a>
		          <a class="dropdown-item" href="/nase-cinnost/rehabilitacni-pobyt">Rehabilitační pobyt</a>
		        </div>
		    </li>
		       
            
            
            <%-- <li class="nav-item ${action eq 'poradna' ? 'active' : ''}">
                <a class="nav-link" href="/poradna">Poradna</a>
            </li>
             --%>
            
            <li class="nav-item ${action eq 'ke-stazeni' ? 'active' : ''}">
                <a class="nav-link" href="/ke-stazeni">Ke&nbsp;stažení</a>
            </li>
            <li class="nav-item ${action eq 'kontakt' ? 'active' : ''}">
                <a class="nav-link" href="/kontakt">Kontakt</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="https://www.laryngektomie.cz/" target="_blank">Jícnový&nbsp;hlas</a>
            </li>
        </ul>
    </div>
    
    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#"></a>
            </li>
        </ul>
    </div>
    </div>
</nav>
