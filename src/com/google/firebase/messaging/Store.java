package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class Store {
    final SharedPreferences store;

    public Store(Context context) {
        this.store = context.getSharedPreferences("com.google.android.gms.appid", 0);
        checkForRestore(context, "com.google.android.gms.appid-no-backup");
    }

    private void checkForRestore(Context context, String str) {
        File file = new File(ContextCompat.getNoBackupFilesDir(context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("FirebaseMessaging", "App restored, clearing state");
            deleteAll();
        } catch (IOException e) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Error creating file in no backup dir: " + e.getMessage());
            }
        }
    }

    public synchronized boolean isEmpty() {
        return this.store.getAll().isEmpty();
    }

    private String createTokenKey(String str, String str2) {
        return str + "|T|" + str2 + "|*";
    }

    public synchronized void deleteAll() {
        this.store.edit().clear().commit();
    }

    public synchronized Token getToken(String str, String str2) {
        return Token.parse(this.store.getString(createTokenKey(str, str2), null));
    }

    public synchronized void saveToken(String str, String str2, String str3, String str4) {
        String strEncode = Token.encode(str3, str4, System.currentTimeMillis());
        if (strEncode == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.store.edit();
        editorEdit.putString(createTokenKey(str, str2), strEncode);
        editorEdit.commit();
    }

    public static class Token {
        private static final long REFRESH_PERIOD_MILLIS = 604800000;
        final String appVersion;
        final long timestamp;
        final String token;

        private Token(String str, String str2, long j) {
            this.token = str;
            this.appVersion = str2;
            this.timestamp = j;
        }

        public static Token parse(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (str.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    return new Token(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
                } catch (JSONException e) {
                    Log.w("FirebaseMessaging", "Failed to parse token: " + e);
                    return null;
                }
            }
            return new Token(str, null, 0L);
        }

        public static String encode(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j);
                return jSONObject.toString();
            } catch (JSONException e) {
                Log.w("FirebaseMessaging", "Failed to encode token: " + e);
                return null;
            }
        }

        public boolean needsRefresh(String str) {
            return System.currentTimeMillis() > this.timestamp + REFRESH_PERIOD_MILLIS || !str.equals(this.appVersion);
        }
    }
}
