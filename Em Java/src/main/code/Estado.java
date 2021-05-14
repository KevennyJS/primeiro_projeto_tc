package main.code;

import java.util.ArrayList;
import java.util.List;

public class Estado {
    int id;
    String nome;
    boolean estadoFinal;
    boolean estadoInicial;
    public List<Transicao> lista_de_transicoes;

    public Estado(int id, String nome, boolean estadoFinal, boolean estadoInicial){
        this.id = id;
        this.nome = nome;
        this.estadoInicial = estadoInicial;
        this.estadoFinal = estadoFinal;
        this.lista_de_transicoes = new ArrayList<>();
    }

    @Override
    public String toString() {
        return "Estado{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", statusFinal=" + estadoFinal +
                ", statusInicial=" + estadoInicial +
                '}';
    }

    public Estado() {
        this.lista_de_transicoes = new ArrayList<>();
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public boolean isStatusFinal() {
        return estadoFinal;
    }

    public void setStatusFinal(boolean statusFinal) {
        this.estadoFinal = statusFinal;
    }

    public boolean isStatusInicial() {
        return estadoInicial;
    }

    public void setStatusInicial(boolean statusInicial) {
        this.estadoInicial = statusInicial;
    }

    public void sortTransicoes(){
        Transicao.sortArraList(this);
    }
}
