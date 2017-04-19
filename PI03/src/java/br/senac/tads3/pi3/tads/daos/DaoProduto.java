/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads3.pi3.tads.daos;

import br.senac.tads3.pi3.db.Banco;
import br.senac.tads3.pi3.modelos.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author bruno.flima4
 */
public class DaoProduto {
    private Produto produto;
    private Connection conn;
    private String sql;
    private PreparedStatement prepareStmt;
    private ResultSet resultSet;
    //JAWD
  
   public static void inserir(Produto produto) throws SQLException, Exception {
        String sql = "INSERT INTO Produto (Nome, Codigo, Tipo, Quantidade, Descricao, Valor)"
                + " VALUES (?, ?, ?, ?, ?,?)";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = Banco.getConnection();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, produto.getNome());
            preparedStatement.setInt(2, produto.getCodigo());
            preparedStatement.setString(3, produto.getTipo());
            preparedStatement.setInt(4, produto.getQuantidade());
            preparedStatement.setString(5, produto.getDescricao());
            preparedStatement.setDouble(6, produto.getValor());
            preparedStatement.execute();
        } finally {
            if (preparedStatement != null && !preparedStatement.isClosed()) {
                preparedStatement.close();
            }
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        }

    }
   public int getCodOperacaoDisp() throws SQLException {
        int id = 0;
        try {
            this.conn = Banco.getConnection();
            this.sql = "SELECT MAX(ID_PRODUTO) from PRODUTO";
            this.prepareStmt = this.conn.prepareStatement(this.sql);
            this.resultSet = this.prepareStmt.executeQuery();
            id = this.resultSet.getInt(1) + 1;
        } catch (SQLException | NumberFormatException e) {
            System.out.println("Erro: " + e);
        } finally {
            this.prepareStmt.close();
        }
        return id;
    }
}
