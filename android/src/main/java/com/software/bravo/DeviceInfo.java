package com.software.bravo;

import com.getcapacitor.JSObject;
import com.getcapacitor.Logger;

import java.util.Currency;
import java.util.Locale;

public class DeviceInfo {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }

    public JSObject getLocaleInfo() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String identifier = locale.toString();
        String currencyCode = "USD";

        try {
            currencyCode = Currency.getInstance(locale).getCurrencyCode();
        } catch (IllegalArgumentException e) {
            Logger.warn("DeviceInfo", "Unable to resolve currency for locale: " + locale);
        }

        JSObject info = new JSObject();
        info.put("language", language == null || language.isEmpty() ? "en" : language);
        info.put("country", country == null || country.isEmpty() ? "US" : country);
        info.put("currency", currencyCode);
        info.put("identifier", identifier == null || identifier.isEmpty() ? "en_US" : identifier);

        return info;
    }
}
