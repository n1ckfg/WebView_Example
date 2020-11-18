// https://discourse.processing.org/t/embedded-browser-in-processing/19196
// https://github.com/micycle1/ProcessingFX/blob/master/ProcessingFX.pde

import javafx.application.Application;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.ScrollPane;
import javafx.scene.layout.VBox;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;

WebView browser;
WebEngine webEngine;
ScrollPane scrollPane;
VBox root;
Scene scene;
Stage stage;
boolean ready;
  
class WebViewer {
  
  WebViewer(int w, int h) {  
    stage = new Stage();
    stage.setTitle("HTML");
    stage.setWidth(w);
    stage.setHeight(h);     
    
    scene = new Scene(new Group());
    root = new VBox();     
    
    browser = new WebView();
    webEngine = browser.getEngine();
    
    scrollPane = new ScrollPane();
    scrollPane.setContent(browser);
    webEngine.loadContent("<b>asdf</b>");
    
    root.getChildren().addAll(scrollPane);
    scene.setRoot(root);
    
    stage.setScene(scene);
    stage.show();    
  }

}
