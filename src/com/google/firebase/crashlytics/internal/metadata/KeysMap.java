package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
class KeysMap {
    private final Map keys = new HashMap();
    private final int maxEntries;
    private final int maxEntryLength;

    public KeysMap(int i, int i2) {
        this.maxEntries = i;
        this.maxEntryLength = i2;
    }

    public synchronized Map getKeys() {
        return DesugarCollections.unmodifiableMap(new HashMap(this.keys));
    }

    public synchronized boolean setKey(String str, String str2) {
        String strSanitizeKey = sanitizeKey(str);
        if (this.keys.size() >= this.maxEntries && !this.keys.containsKey(strSanitizeKey)) {
            Logger.getLogger().m509w("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.maxEntries);
            return false;
        }
        String strSanitizeString = sanitizeString(str2, this.maxEntryLength);
        if (CommonUtils.nullSafeEquals((String) this.keys.get(strSanitizeKey), strSanitizeString)) {
            return false;
        }
        Map map = this.keys;
        if (str2 == null) {
            strSanitizeString = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        map.put(strSanitizeKey, strSanitizeString);
        return true;
    }

    public synchronized void setKeys(Map map) {
        try {
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                String strSanitizeKey = sanitizeKey((String) entry.getKey());
                if (this.keys.size() < this.maxEntries || this.keys.containsKey(strSanitizeKey)) {
                    String str = (String) entry.getValue();
                    this.keys.put(strSanitizeKey, str == null ? _UrlKt.FRAGMENT_ENCODE_SET : sanitizeString(str, this.maxEntryLength));
                } else {
                    i++;
                }
            }
            if (i > 0) {
                Logger.getLogger().m509w("Ignored " + i + " entries when adding custom keys. Maximum allowable: " + this.maxEntries);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private String sanitizeKey(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        return sanitizeString(str, this.maxEntryLength);
    }

    public static String sanitizeString(String str, int i) {
        if (str == null) {
            return str;
        }
        String strTrim = str.trim();
        return strTrim.length() > i ? strTrim.substring(0, i) : strTrim;
    }
}
