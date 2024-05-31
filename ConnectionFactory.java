package br.usjt.ticketgold;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author 82411888
 */
public class ConnectionFactory {
    private String usuario = "root";
    private String senha = "bruno";
    private String host = "localhost";
    private String porta = "3306";
    private String bd = "db_ticketgold";
    Connection c = null;
 
    public Connection obtemConexao (){
        try{
            Connection c = DriverManager.getConnection(
                "jdbc:mysql://" + host + ":" + porta + "/" + bd,
                usuario,
                senha
            );
            return c;
        }
        catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public void desconectar(){
        c = null;
    }
}
