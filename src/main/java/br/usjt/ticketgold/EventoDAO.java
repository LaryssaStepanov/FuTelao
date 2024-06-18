/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.usjt.ticketgold;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author bthez
 */
public class EventoDAO {
    ConnectionFactory cf = new ConnectionFactory();
    
    public Evento[] obterEventos() throws SQLException {
        String sql = "select * from tb_eventos;";
        try (Connection conn = cf.obtemConexao();
                PreparedStatement ps = conn.prepareStatement(sql,
                        ResultSet.TYPE_SCROLL_SENSITIVE, /*Se houver uma alteração direta no banco de dados enquanto o programa estiver rodando, a alteração aparecerá no programa*/
                        ResultSet.CONCUR_READ_ONLY); /*Permite a leitura, mas não atualização pelo código*/
            ResultSet rs = ps.executeQuery();) {
                int totalDeEventos = rs.last() ? rs.getRow(): 0;
                Evento[] eventos = new Evento[totalDeEventos];
                rs.beforeFirst();
                int contador = 0;
                while (rs.next()) {
                    String nome = rs.getString("nome");
                    String dia = rs.getString("dia");
                    String horario = rs.getString("horario");
                    String descricao = rs.getString("descricao");
                    eventos[contador++] = new Evento(nome, dia, horario, descricao);
                }
                return eventos;
            }
    }
}
