<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="px-5 navbar navbar-expand-md navbar-dark">
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
            <li class="nav-item ${action eq 'jicnovy-hlas' ? 'active' : ''}">
                <a class="nav-link" href="jicnovy-hlas">Jícnový hlas</a>
            </li>
            <li class="nav-item ${action eq 'layout' ? 'active' : ''}">
                <a class="nav-link" href="layout">Layout</a>
            </li>
            
            <li class="nav-item ${action eq 'dotazy' ? 'active' : ''}">
                <a class="nav-link" href="/dotazy">Dotazy</a>
            </li>
            <li class="nav-item ${action eq 'kontakt' ? 'active' : ''}">
                <a class="nav-link" href="/kontakt">Kontakt</a>
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
