<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/includes/head.jsp" %>

</head>
	
   <body>
   <%@include file="/WEB-INF/includes/header.jsp"%>
   <%@include file="/WEB-INF/includes/navbar.jsp"%>
   <div class="container-fluid">
      
      
	<div class="carousel-container">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner" style="margin: 0 auto; max-height: 70vh;" >
		    <div class="carousel-item active">
		      <img class="d-block" style="margin: 0 auto;" src="/static/images/slavik-obecny.jpg" alt="First slide">
		      <div class="carousel-caption d-none d-md-block">
		    	<h5>Text1</h5>
		    	<p>aBc</p>
		  	  </div>
		    </div>
		    <div class="carousel-item">
		      <img class="d-block" style="margin: 0 auto;" src="/static/images/slavik-obecny.jpg" alt="Second slide">
		      <div class="carousel-caption d-none d-md-block">
		    	<h5>Text1</h5>
		    	<p>aBc</p>
		  	  </div>
		    </div>
		    <div class="carousel-item">
		      <img class="d-block" style="margin: 0 auto;" src="/static/images/slavik-obecny.jpg" alt="Third slide">
		      <div class="carousel-caption d-none d-md-block">
		    	<h5>Text1</h5>
		    	<p>aBc</p>
		  	  </div>
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
	</div>
	
	<div class="container mt-3">
  	  <div class="row">
    	<div class="col-md bgcolor1 p-4">
	      <h3>Jícnový hlas</h3>
	      <p>Jícnový hlas je nejpřirozenější náhradní hlasový mechanismus po odstranění hrtanu. Je tvořen kmitáním slizniční řasy při horním jícnovém ústí. Nasávání a vytlačení vzduchu z jícnu pacient aktivně ovládá naučenými pohyby hltanu, kořene jazyka, dolní čelisti. </p>
	      <h3 class="flipBtn">Výhody</h3>
	      <p class="flip" style="display: none;">Zásadní výhodou jícnového hlasu je fakt, že pacient k jeho tvorbě nepotřebuje žádné pomůcky ani vlastní ruce a je mu kdykoli k dispozici. Pacient také není závislý na lékaři jako u hlasové protézy, kterou musí lékař vždy po několika měsících měnit. U jícnového hlasu na rozdíl od hlasové protézy nehrozí komplikace jako je aspirace slin a potravy, protože dýchací a polykací cesty jsou odděleny. Oproti elekrolarynxu působí jícnový hlas přirozenějším dojmem.</p>
	      <h3 class="flipBtn">Nevýhody</h3>
	      <p class="flip" style="display: none;">Nevýhodou je náročný nácvik. <br />Efektivita učení významně záleží na motivaci pacienta, na vynaloženém úsilí a na jeho trpělivosti.</p>
	    </div>
	    <div class="col-md bgcolor2 p-4">
	     	<h3>Hlasová protéza</h3>
	     	<p>Hlasová protéza je jednocestný ventil zavedený mezi průdušnící a jícnem. Pacient vytváří hlas tak, že uzavře ústí tracheostomické kanyly, vydechne vzduch z plic, který se skrz ventil dostane do jícnu a rozvibruje náhradní štěrbinu jícnového svěrače.</p>
	     	<h3 class="flipBtn">Výhody</h3>
	      <p class="flip" style="display: none;">Nácvik hlasu je jednoduchý, rehabilitace spočívá především v koordinaci nových pohybů - ruky uzavírající stoma, dýchání a artikulace.<br /> Zdrojem proudu vzduchu jsou plíce jako při normální fonaci a pacient je schopen velmi brzy po zákroku mluvit.</p>
	      <h3 class="flipBtn">Nevýhody</h3>
	      <p class="flip" style="display: none;">Nevýhodou je nutnost ucpání stomatu při mluvení, čímž je trvale blokována jedna ruka. <br />
	      Protézu je nutné měnit zhruba každé 3 až 6 měsíce z důvodu její biodegradace. Nutná je také pravidelná péče o protézu - měla by se čistit speciálním kartáčkem alespoň dvakrát denně.<br />
	      Další nevýhodou jsou možné zdravotní komplikace s fonační protézou spojené.</p>
	    </div>
	    <div class="col-md bgcolor3 p-4">
	      <h3>Elektrolarynx</h3>
	      <p>Elektrolarynx je generátor zvuku, který převádí zvukové vibrace přes krční stěnu do hypofaryngu. Zvuk je modulován artikulačními orgány do výsledného hlasu. Pacient pevně přikládá horní část elektrolarynxu nejčastěji do podčelistní oblasti nebo na měkké části krku.</p>
	      <h3 class="flipBtn">Výhody</h3>
	      <p class="flip" style="display: none;">Poměrně snadná manipulace a relativně rychlý zácvik pacienta. Uživatelé, kteří plně využijí potenciál elektrolarynxu, produkují srozumitelnou a plynulou mluvu.</p>
	      <h3 class="flipBtn">Nevýhody</h3>
	      <p class="flip" style="display: none;">Elektronický neosobní hlas, který působí monotónně a může být hůře srozumitelný. <br />
	      Nutnost neustálého nošení s sebou (evnt.i náhradních baterií), a pokud pacient elektrolarynx u sebe nemá, přijde o možnost domluvit se.  <br />
	      Jedna ruka je při mluvení neustále zaměstnána a pacient tím pádem nemůže mluvit při mnoha jiných činnostech.</p>
		</div>
	  </div>
	</div>
		<div class="row justify-content-center align-items-center mt-3">
		  <div class="col-md-3" style="background-color: #48bdc5;">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Special title treatment</h5>
		        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
		        <a href="#" class="btn btn-primary">Go somewhere</a>
		      </div>
		    </div>
		  </div>
		  <div class="col-md-3" style="background-color: #5bc4cb;">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Special title treatment</h5>
		        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
		        <a href="#" class="btn btn-primary">Go somewhere</a>
		      </div>
		    </div>
		  </div>
		  <div class="col-md-3" style="background-color: #6fcbd1;">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title">Special title treatment</h5>
		        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
		        <a href="#" class="btn btn-primary">Go somewhere</a>
		      </div>
		    </div>
		  </div>
		</div>




      <%@include file="/WEB-INF/includes/footer.jsp"%>
   </div>
   </body>
</html>