package main;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import main.code.*;

import java.io.File;
import java.util.List;


public class Controller {
    @FXML
    private AnchorPane anchorID;

    @FXML
    private Button btn_importar;

    @FXML
    private Button btn_selecionar;

    @FXML
    private Button btn_salvar;

    @FXML
    public TextField caminho_arquivo_importado;

    @FXML
    public TextField caminho_arquivo_salvo;

    @FXML
    private ChoiceBox tipo_operacao_box;

    @FXML
    ObservableList<String> tipo_operacao = FXCollections.observableArrayList("Complemento","Estrela");

    @FXML
    private void initialize(){
        tipo_operacao_box.setItems(tipo_operacao);
        tipo_operacao_box.setValue(tipo_operacao.get(0));
    }

    @FXML
    void onActionbtn_importar(ActionEvent event) {
        caminho_arquivo_importado.setText(selectFile());
    }

    @FXML
    void onActionbtn_selecionar(ActionEvent event) {
        caminho_arquivo_salvo.setText(selectPath());
    }

    @FXML
    void onActionbtn_salvar(ActionEvent event) {
        try {
            // carregando o xml
            ReadXML cxml = new ReadXML();
            List<Estado> estadosFromXml = cxml.extract(caminho_arquivo_importado.getText());

            // ordenando as transiões
            for (Estado e : estadosFromXml) {
                e.sortTransicoes();
            }

            if(tipo_operacao_box.getValue() == tipo_operacao.get(0)){
                System.out.println("sou 0");
            }else{
                System.out.println("sou 1");
            }
            estadosFromXml.forEach(estado -> {
                if (estado.isStatusFinal() == true) {
                    estado.setStatusFinal(false);
                } else {
                    estado.setStatusFinal(true);
                }
            });

            //gerando automato que vai ser exportado
            Automato automato = new Automato();


            automato.lista_de_estados = estadosFromXml;
            displayAutomato(automato);
            WriteXML.geraJff(automato, caminho_arquivo_salvo.getText() + "\\" + "saida.jff");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            caminho_arquivo_importado.setText("");
            caminho_arquivo_salvo.setText("");
        }
    }

    public static void displayAutomato(Automato automato) {
        for (Estado e : automato.lista_de_estados) {
            System.out.println("------------------------------------------------------------------------------------");
            System.out.println(e.toString());
            System.out.println("Lista de Transições:");
            for (Transicao t : e.lista_de_transicoes) {
                System.out.println(t.toString());
            }
            System.out.println("------------------------------------------------------------------------------------");
        }
    }

    public String selectFile() {
        FileChooser fileChooser = new FileChooser();
        fileChooser.getExtensionFilters().add(new FileChooser.ExtensionFilter("Jff Files", "*.jff"));
        Stage stage = (Stage) anchorID.getScene().getWindow();
        File selectedFile = fileChooser.showOpenDialog(stage);
        if (selectedFile != null) {
            return selectedFile.getAbsolutePath();
        }
        return null;
    }

    public String selectPath() {
        final DirectoryChooser directoryChooser = new DirectoryChooser();

        Stage stage = (Stage) anchorID.getScene().getWindow();
        File file = directoryChooser.showDialog(stage);

        if (file != null) {
            return file.getAbsolutePath();
        }
        return null;
    }
}
