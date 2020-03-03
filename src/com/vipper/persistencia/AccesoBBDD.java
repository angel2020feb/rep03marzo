package com.vipper.persistencia;

import java.sql.*;

public class AccesoBBDD extends Conexion {
	
	public String verificarPassword(String usuario) throws ClassNotFoundException, SQLException  {
	String SQL = "call abogados.verificarPassword(?)";
	CallableStatement st;
	ResultSet rs;
	String password = null;
	
	//Abrir conexion
	abrirConexion();
	
	//Obtener el comando
	st = miConexion.prepareCall(SQL);
	
	//Asignar valores
	st.setString(1,usuario);
	
	//Ejecutar el comando
	rs=st.executeQuery();
	if(rs.next()) {
		password= rs.getString("password");
	}
	
	cerrarConexion();
	return password;
	}

}
