package com.wearehathway.braze.capacitor;

import android.util.Log;

public class BrazeCapacitor {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }

    public String initIt(String key) {
        Log.i("InitIt", key);
        return key;
    }

    public String sendJSON(String value) {
        Log.i("sendJSON", value);
        return value;
    }
}
