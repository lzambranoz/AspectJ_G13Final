
public aspect VerificarSesion {	
    // Definir el pointcut, es decir, el punto donde ocurrirá la llamada al inicio de sesión.
    pointcut validar(): call(* consultar(..));
    pointcut cambioSesionIniciada(): call(* *Sesion(..));
  //Advices. Se ejecutarán en el lugar indicado por el pointcut.
    before() : validar() {
    	if(!IniciarSesion.sesionIniciada) {
    		IniciarSesion.initialize();
    	}
        // MétodoInicioSesión
    } 
    after() : validar()  {
    	if(IniciarSesion.sesionIniciada) {
    		MuestraData.initialize();
    	}
    }
    
    after() : cambioSesionIniciada()  {
    	if(IniciarSesion.sesionIniciada) {
    		VentanaPrincipal.window.btnIniciarSesion.setVisible(false);
    		VentanaPrincipal.window.btnCerrarSesion.setVisible(true);
    	}else {
    		VentanaPrincipal.window.btnIniciarSesion.setVisible(true);
    		VentanaPrincipal.window.btnCerrarSesion.setVisible(false);
    	}
    }
}
