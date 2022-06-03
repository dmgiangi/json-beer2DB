package org.example;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class Ingredients {
    JSONArray beersList;
    public Ingredients(JSONArray beersList){
        this.beersList = beersList;
    }

    public void printAllVolume(){
        for (Object o : beersList) {
            JSONObject beer = (JSONObject) o;
            JSONObject ingredients = (JSONObject) beer.get("ingredients");
            JSONObject ing = (JSONObject) beer.get("ingredients");
            String yeast = (String) ing.get("yeast");
            System.out.println(yeast);
            //System.out.println(volume.toJSONString());
        }
    }
}