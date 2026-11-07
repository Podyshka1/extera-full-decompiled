package com.neovisionaries.ws.client;

import java.util.LinkedHashMap;
import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketExtension {
    private final String mName;
    private final Map<String, String> mParameters;

    public void validate() {
    }

    public WebSocketExtension(String str) {
        if (!Token.isValid(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("'name' is not a valid token.");
            throw null;
        }
        this.mName = str;
        this.mParameters = new LinkedHashMap();
    }

    public String getName() {
        return this.mName;
    }

    public Map<String, String> getParameters() {
        return this.mParameters;
    }

    public WebSocketExtension setParameter(String str, String str2) {
        if (!Token.isValid(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("'key' is not a valid token.");
            return null;
        }
        if (str2 != null && !Token.isValid(str2)) {
            f$$ExternalSyntheticBUOutline1.m215m("'value' is not a valid token.");
            return null;
        }
        this.mParameters.put(str, str2);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.mName);
        for (Map.Entry<String, String> entry : this.mParameters.entrySet()) {
            sb.append("; ");
            sb.append(entry.getKey());
            String value = entry.getValue();
            if (value != null && value.length() != 0) {
                sb.append("=");
                sb.append(value);
            }
        }
        return sb.toString();
    }

    public static WebSocketExtension parse(String str) {
        String strExtractValue;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.trim().split("\\s*;\\s*");
        if (strArrSplit.length == 0) {
            return null;
        }
        String str2 = strArrSplit[0];
        if (!Token.isValid(str2)) {
            return null;
        }
        WebSocketExtension webSocketExtensionCreateInstance = createInstance(str2);
        for (int i = 1; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split("\\s*=\\s*", 2);
            if (strArrSplit2.length != 0 && strArrSplit2[0].length() != 0) {
                String str3 = strArrSplit2[0];
                if (Token.isValid(str3) && ((strExtractValue = extractValue(strArrSplit2)) == null || Token.isValid(strExtractValue))) {
                    webSocketExtensionCreateInstance.setParameter(str3, strExtractValue);
                }
            }
        }
        return webSocketExtensionCreateInstance;
    }

    private static String extractValue(String[] strArr) {
        if (strArr.length != 2) {
            return null;
        }
        return Token.unquote(strArr[1]);
    }

    private static WebSocketExtension createInstance(String str) {
        if ("permessage-deflate".equals(str)) {
            return new PerMessageDeflateExtension(str);
        }
        return new WebSocketExtension(str);
    }
}
