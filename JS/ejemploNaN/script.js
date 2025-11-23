var ejemplo1 = 0;
var ejemplo2 = 0;

if(isNaN(ejemplo1/ejemplo2)) {
    alert("el resultado de la división es un valor indefinido"); //para lanzar un mensaje por pantalla
    console.log("el resultado de la división es un valor indefinido"); //para imprimir en consola
} else {
    alert("Mira la consola");
    for(var i=0; i < 10; i++) {
        console.log("Iteración " + i);
    }
}