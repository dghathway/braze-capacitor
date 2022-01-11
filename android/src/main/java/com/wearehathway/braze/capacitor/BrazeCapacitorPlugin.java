package com.wearehathway.braze.capacitor;

import android.content.Intent;

import androidx.localbroadcastmanager.content.LocalBroadcastManager;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "BrazeCapacitor")
public class BrazeCapacitorPlugin extends Plugin {

    private BrazeCapacitor implementation = new BrazeCapacitor();

    @PluginMethod
    public void sendJSON(PluginCall call) {
        String value = call.getString("value");
        JSObject ret = new JSObject();
        ret.put("value", implementation.sendJSON(value)); 

        // send back data to MainActivity
        Intent intent = new Intent("sendJSONEvent");
        intent.putExtra("value", value);
        LocalBroadcastManager.getInstance(getContext()).sendBroadcast(intent);

        call.resolve(ret);
    }
}
