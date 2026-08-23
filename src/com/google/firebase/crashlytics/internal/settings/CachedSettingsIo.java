package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CachedSettingsIo {
    private final File cachedSettingsFile;

    public CachedSettingsIo(FileStore fileStore) {
        this.cachedSettingsFile = fileStore.getCommonFile("com.crashlytics.settings.json");
    }

    private File getSettingsFile() {
        return this.cachedSettingsFile;
    }

    public JSONObject readCachedSettings() throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        Logger.getLogger().m501d("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File settingsFile = getSettingsFile();
                if (settingsFile.exists()) {
                    fileInputStream = new FileInputStream(settingsFile);
                    try {
                        jSONObject = new JSONObject(CommonUtils.streamToString(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        Logger.getLogger().m504e("Failed to fetch cached settings", e);
                        CommonUtils.closeOrLog(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    Logger.getLogger().m507v("Settings file does not exist.");
                    jSONObject = null;
                }
                CommonUtils.closeOrLog(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.closeOrLog(null, "Error while closing settings cache file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.closeOrLog(null, "Error while closing settings cache file.");
            throw th;
        }
    }

    public void writeCachedSettings(long j, JSONObject jSONObject) throws Throwable {
        FileWriter fileWriter;
        Logger.getLogger().m507v("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter2 = null;
            try {
                try {
                    jSONObject.put("expires_at", j);
                    fileWriter = new FileWriter(getSettingsFile());
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                fileWriter.write(jSONObject.toString());
                fileWriter.flush();
                CommonUtils.closeOrLog(fileWriter, "Failed to close settings writer.");
            } catch (Exception e2) {
                e = e2;
                fileWriter2 = fileWriter;
                Logger.getLogger().m504e("Failed to cache settings", e);
                CommonUtils.closeOrLog(fileWriter2, "Failed to close settings writer.");
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                CommonUtils.closeOrLog(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
        }
    }
}
