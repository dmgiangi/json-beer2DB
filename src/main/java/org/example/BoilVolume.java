package org.example;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class BoilVolume {
    JSONArray beersList;
    public BoilVolume(JSONArray beersList){
        this.beersList = beersList;
    }

    public void printAllVolume(){
        for (Object o : beersList) {
            JSONObject beer = (JSONObject) o;
            JSONObject volume = (JSONObject) beer.get("boil_volume");
            System.out.println(volume.toJSONString());
        }
    }
}