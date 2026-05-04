package com.google.firebase.installations.local;

import com.google.firebase.FirebaseApp;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PersistedInstallation {
    private File dataFile;
    private final FirebaseApp firebaseApp;

    /* JADX INFO: loaded from: classes5.dex */
    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(FirebaseApp firebaseApp) {
        this.firebaseApp = firebaseApp;
    }

    private File getDataFile() {
        if (this.dataFile == null) {
            synchronized (this) {
                try {
                    if (this.dataFile == null) {
                        this.dataFile = new File(this.firebaseApp.getApplicationContext().getFilesDir(), "PersistedInstallation." + this.firebaseApp.getPersistenceKey() + ".json");
                    }
                } finally {
                }
            }
        }
        return this.dataFile;
    }

    public PersistedInstallationEntry readPersistedInstallationEntryValue() {
        JSONObject jSONFromFile = readJSONFromFile();
        String strOptString = jSONFromFile.optString("Fid", null);
        int iOptInt = jSONFromFile.optInt("Status", RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String strOptString2 = jSONFromFile.optString("AuthToken", null);
        String strOptString3 = jSONFromFile.optString("RefreshToken", null);
        long jOptLong = jSONFromFile.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONFromFile.optLong("ExpiresInSecs", 0L);
        return PersistedInstallationEntry.builder().setFirebaseInstallationId(strOptString).setRegistrationStatus(RegistrationStatus.values()[iOptInt]).setAuthToken(strOptString2).setRefreshToken(strOptString3).setTokenCreationEpochInSecs(jOptLong).setExpiresInSecs(jOptLong2).setFisError(jSONFromFile.optString("FisError", null)).build();
    }

    private JSONObject readJSONFromFile() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(getDataFile());
            while (true) {
                try {
                    int i = fileInputStream.read(bArr, 0, 16384);
                    if (i >= 0) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        fileInputStream.close();
                        return jSONObject;
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    public PersistedInstallationEntry insertOrUpdatePersistedInstallationEntry(PersistedInstallationEntry persistedInstallationEntry) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", persistedInstallationEntry.getFirebaseInstallationId());
            jSONObject.put("Status", persistedInstallationEntry.getRegistrationStatus().ordinal());
            jSONObject.put("AuthToken", persistedInstallationEntry.getAuthToken());
            jSONObject.put("RefreshToken", persistedInstallationEntry.getRefreshToken());
            jSONObject.put("TokenCreationEpochInSecs", persistedInstallationEntry.getTokenCreationEpochInSecs());
            jSONObject.put("ExpiresInSecs", persistedInstallationEntry.getExpiresInSecs());
            jSONObject.put("FisError", persistedInstallationEntry.getFisError());
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", this.firebaseApp.getApplicationContext().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (!fileCreateTempFile.renameTo(getDataFile())) {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
        return persistedInstallationEntry;
    }
}
