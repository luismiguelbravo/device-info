package com.software.bravo;

import com.getcapacitor.Logger;

public class DeviceInfo {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
