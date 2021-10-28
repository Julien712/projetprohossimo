/* Repeat société */

var societe = document.getElementById("societe");
var giletsociete = document.getElementById("vestonsociete");
var pantalonsociete = document.getElementById("pantalonsociete");
var giletsociete = document.getElementById("giletsociete");

societe.oninput = function (repeatn) {
    vestonsociete.value = societe.value;
    pantalonsociete.value = societe.value;
    giletsociete.value = societe.value;
}

/* Repeat numéro */

var vestonnumero = document.getElementById("vestonnumero");
var mesurenumero = document.getElementById("mesurenumero");
var pantalonnumero = document.getElementById("pantalonnumero");
var giletnumero = document.getElementById("giletnumero");

mesurenumero.oninput = function (repeats) {
    vestonnumero.value = mesurenumero.value;
    pantalonnumero.value = mesurenumero.value;
    giletnumero.value = mesurenumero.value;
}

/* Je sais pas ce qu'il y aura dessous pour le moment */