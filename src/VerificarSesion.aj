
public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut nombrePointcut(): call(* consultar(..)); 
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    before() : nombrePointcut() {
    	if(!IniciarSesion.sesionIniciada) {
    		IniciarSesion.initialize();
    	}
        // MétodoInicioSesión
    } 
    after() : nombrePointcut()  {
    	if(IniciarSesion.sesionIniciada) {
    		MuestraData.initialize();
    	}
    	
        //Ya se inició sesión. (Puede imprimir un mensaje)
    }
}
