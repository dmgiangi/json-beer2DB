package org.example;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class Method {
    JSONArray beersList;
    public Method(JSONArray beersList){
        this.beersList = beersList;
    }

    public void printAllMethods(){
        for (Object o : beersList) {
            JSONObject beer = (JSONObject) o;
            JSONObject volume = (JSONObject) beer.get("method");
            System.out.println(volume.toJSONString());
        }
    }

    public void printAllMashTemp(){
        for (Object o : beersList) {
            JSONObject beer = (JSONObject) o;
            JSONObject method = (JSONObject) beer.get("method");
            JSONArray mashTemp = (JSONArray) method.get("mash_temp");
            System.out.println(mashTemp.toJSONString());
        }
    }

    public void printAllFermentation(){
        for (Object o : beersList) {
            JSONObject beer = (JSONObject) o;
            JSONObject method = (JSONObject) beer.get("method");
            JSONObject fermentation = (JSONObject) method.get("fermentation");
            System.out.println(fermentation.toJSONString());
        }
    }
    public void printAllTwist(){
        for (Object o : beersList) {
            JSONObject beer = (JSONObject) o;
            JSONObject method = (JSONObject) beer.get("method");
            String twist = (String) method.get("twist");
            System.out.println(twist);
        }
    }
}