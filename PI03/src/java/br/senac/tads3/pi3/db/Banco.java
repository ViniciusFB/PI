/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads3.pi3.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 *
 * @author bruno.flima4
 */
public class Banco {
    public static Connection getConnection(){
        Connection connection = null;
        
        try {
            String dbURL = dadosBanco.DB_ADRESS;
            
            Properties properties = new Properties();
            properties.put("user", dadosBanco.DB_USER);
            properties.put("password", dadosBanco.DB_PASS);
            
            connection = DriverManager.getConnection(dbURL, properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
