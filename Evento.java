/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.usjt.ticketgold;

/**
 *
 * @author bthez
 */
public class Evento {
    private String nome;
    private String dia;
    private String descricao;

    public Evento(String nome, String dia, String descricao) {
        this.nome = nome;
        this.dia = dia;
        this.descricao = descricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
        @Override
    public String toString() {
        return nome;
    }
}
