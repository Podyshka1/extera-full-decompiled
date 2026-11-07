package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ConfigStorageClient {
    private static final Map<String, ConfigStorageClient> clientInstances = new HashMap();
    private final Context context;
    private final String fileName;

    private ConfigStorageClient(Context context, String str) {
        this.context = context;
        this.fileName = str;
    }

    public synchronized Void write(ConfigContainer configContainer) {
        FileOutputStream fileOutputStreamOpenFileOutput = this.context.openFileOutput(this.fileName, 0);
        try {
            fileOutputStreamOpenFileOutput.write(configContainer.toString().getBytes("UTF-8"));
        } finally {
            fileOutputStreamOpenFileOutput.close();
        }
        return null;
    }

    public synchronized ConfigContainer read() {
        FileInputStream fileInputStreamOpenFileInput;
        Throwable th;
        try {
            fileInputStreamOpenFileInput = this.context.openFileInput(this.fileName);
        } catch (FileNotFoundException | JSONException unused) {
            fileInputStreamOpenFileInput = null;
        } catch (Throwable th2) {
            fileInputStreamOpenFileInput = null;
            th = th2;
        }
        try {
            int iAvailable = fileInputStreamOpenFileInput.available();
            byte[] bArr = new byte[iAvailable];
            fileInputStreamOpenFileInput.read(bArr, 0, iAvailable);
            ConfigContainer configContainerCopyOf = ConfigContainer.copyOf(new JSONObject(new String(bArr, "UTF-8")));
            fileInputStreamOpenFileInput.close();
            return configContainerCopyOf;
        } catch (FileNotFoundException | JSONException unused2) {
            if (fileInputStreamOpenFileInput != null) {
                fileInputStreamOpenFileInput.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStreamOpenFileInput != null) {
                fileInputStreamOpenFileInput.close();
            }
            throw th;
        }
    }

    public static synchronized ConfigStorageClient getInstance(Context context, String str) {
        Map<String, ConfigStorageClient> map;
        try {
            map = clientInstances;
            if (!map.containsKey(str)) {
                map.put(str, new ConfigStorageClient(context, str));
            }
        } catch (Throwable th) {
            throw th;
        }
        return map.get(str);
    }

    public String getFileName() {
        return this.fileName;
    }
}
