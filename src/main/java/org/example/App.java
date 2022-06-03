package org.example;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashSet;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        JSONParser jsonParser = new JSONParser();
        JSONArray beersList = new JSONArray();
        for (int i = 1; i <= 5; i++) {
            try (FileReader reader = new App().getFileReader(i)) {
                Object obj = jsonParser.parse(reader);
                JSONArray partialList = (JSONArray) obj;
                beersList.addAll(partialList);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        }
        for(Object o : beersList){
            JSONObject beer = (JSONObject) o;
            System.out.println(beer.toJSONString());
        }
        //new Method(beersList).printAllMashTemp();
    }

    FileReader getFileReader(int i) {
        FileReader reader = null;

        try {
            ClassLoader classLoader = getClass().getClassLoader();
            URL resource = classLoader.getResource("beers" + i + ".json");
            if(resource != null){
                File file = new File(resource.toURI());
                reader = new FileReader(file);
            }
        } catch (URISyntaxException | FileNotFoundException | NullPointerException e) {
            e.printStackTrace();
        }
        return reader;
    }
}
