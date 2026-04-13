package com.software.bravo;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "DeviceInfo")
public class DeviceInfoPlugin extends Plugin {

    private DeviceInfo implementation = new DeviceInfo();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }

    @PluginMethod
    public void getLocaleInfo(PluginCall call) {
        JSObject ret = implementation.getLocaleInfo();
        call.resolve(ret);
    }

    @PluginMethod
    public void getInfo(PluginCall call) {
        JSObject ret = implementation.getLocaleInfo();
        call.resolve(ret);
    }
}
