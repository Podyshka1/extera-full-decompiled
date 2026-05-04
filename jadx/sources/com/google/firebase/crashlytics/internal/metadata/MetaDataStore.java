package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class MetaDataStore {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final FileStore fileStore;

    public MetaDataStore(FileStore fileStore) {
        this.fileStore = fileStore;
    }

    public void writeUserData(String str, String str2) throws Throwable {
        String strUserIdToJson;
        BufferedWriter bufferedWriter;
        File userDataFileForSession = getUserDataFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                strUserIdToJson = userIdToJson(str2);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(userDataFileForSession), UTF_8));
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedWriter.write(strUserIdToJson);
            bufferedWriter.flush();
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close user metadata file.");
        } catch (Exception e2) {
            e = e2;
            bufferedWriter2 = bufferedWriter;
            Logger.getLogger().m510w("Error serializing user metadata.", e);
            CommonUtils.closeOrLog(bufferedWriter2, "Failed to close user metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            CommonUtils.closeOrLog(bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public String readUserId(String str) throws Throwable {
        FileInputStream fileInputStream;
        File userDataFileForSession = getUserDataFileForSession(str);
        FileInputStream fileInputStream2 = null;
        if (!userDataFileForSession.exists() || userDataFileForSession.length() == 0) {
            Logger.getLogger().m501d("No userId set for session " + str);
            safeDeleteCorruptFile(userDataFileForSession);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(userDataFileForSession);
            try {
                try {
                    String strJsonToUserId = jsonToUserId(CommonUtils.streamToString(fileInputStream));
                    Logger.getLogger().m501d("Loaded userId " + strJsonToUserId + " for session " + str);
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return strJsonToUserId;
                } catch (Exception e) {
                    e = e;
                    Logger.getLogger().m510w("Error deserializing user metadata.", e);
                    safeDeleteCorruptFile(userDataFileForSession);
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void writeKeyData(String str, Map map) throws Throwable {
        writeKeyData(str, map, false);
    }

    public void writeKeyData(String str, Map map, boolean z) throws Throwable {
        String strKeysDataToJson;
        BufferedWriter bufferedWriter;
        File internalKeysFileForSession = z ? getInternalKeysFileForSession(str) : getKeysFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                strKeysDataToJson = keysDataToJson(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(internalKeysFileForSession), UTF_8));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            bufferedWriter.write(strKeysDataToJson);
            bufferedWriter.flush();
            CommonUtils.closeOrLog(bufferedWriter, "Failed to close key/value metadata file.");
        } catch (Exception e2) {
            e = e2;
            bufferedWriter2 = bufferedWriter;
            Logger.getLogger().m510w("Error serializing key/value metadata.", e);
            safeDeleteCorruptFile(internalKeysFileForSession);
            CommonUtils.closeOrLog(bufferedWriter2, "Failed to close key/value metadata file.");
        } catch (Throwable th2) {
            th = th2;
            bufferedWriter2 = bufferedWriter;
            CommonUtils.closeOrLog(bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    Map readKeyData(String str, boolean z) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        File internalKeysFileForSession = z ? getInternalKeysFileForSession(str) : getKeysFileForSession(str);
        if (!internalKeysFileForSession.exists() || internalKeysFileForSession.length() == 0) {
            safeDeleteCorruptFile(internalKeysFileForSession, "The file has a length of zero for session: " + str);
            return Collections.EMPTY_MAP;
        }
        try {
            try {
                fileInputStream = new FileInputStream(internalKeysFileForSession);
                try {
                    Map mapJsonToKeysData = jsonToKeysData(CommonUtils.streamToString(fileInputStream));
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return mapJsonToKeysData;
                } catch (Exception e2) {
                    e = e2;
                    Logger.getLogger().m510w("Error deserializing user metadata.", e);
                    safeDeleteCorruptFile(internalKeysFileForSession);
                    CommonUtils.closeOrLog(fileInputStream, "Failed to close user metadata file.");
                    return Collections.EMPTY_MAP;
                }
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.closeOrLog(, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e3) {
            fileInputStream = null;
            e = e3;
        } catch (Throwable th3) {
            ?? r1 = 0;
            th = th3;
            CommonUtils.closeOrLog(r1, "Failed to close user metadata file.");
            throw th;
        }
    }

    public List readRolloutsState(String str) throws Throwable {
        FileInputStream fileInputStream;
        File rolloutsStateForSession = getRolloutsStateForSession(str);
        if (!rolloutsStateForSession.exists() || rolloutsStateForSession.length() == 0) {
            safeDeleteCorruptFile(rolloutsStateForSession, "The file has a length of zero for session: " + str);
            return Collections.EMPTY_LIST;
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(rolloutsStateForSession);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            List listJsonToRolloutsState = jsonToRolloutsState(CommonUtils.streamToString(fileInputStream));
            Logger.getLogger().m501d("Loaded rollouts state:\n" + listJsonToRolloutsState + "\nfor session " + str);
            CommonUtils.closeOrLog(fileInputStream, "Failed to close rollouts state file.");
            return listJsonToRolloutsState;
        } catch (Exception e2) {
            e = e2;
            fileInputStream2 = fileInputStream;
            Logger.getLogger().m510w("Error deserializing rollouts state.", e);
            safeDeleteCorruptFile(rolloutsStateForSession);
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close rollouts state file.");
            return Collections.EMPTY_LIST;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            CommonUtils.closeOrLog(fileInputStream2, "Failed to close rollouts state file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    public void writeRolloutState(String str, List list) throws Throwable {
        Throwable th;
        BufferedWriter bufferedWriter;
        Exception e;
        File rolloutsStateForSession = getRolloutsStateForSession(str);
        ?? IsEmpty = list.isEmpty();
        if (IsEmpty != 0) {
            safeDeleteCorruptFile(rolloutsStateForSession, "Rollout state is empty for session: " + str);
            return;
        }
        try {
            try {
                String strRolloutsStateToJson = rolloutsStateToJson(list);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(rolloutsStateForSession), UTF_8));
                try {
                    bufferedWriter.write(strRolloutsStateToJson);
                    bufferedWriter.flush();
                    CommonUtils.closeOrLog(bufferedWriter, "Failed to close rollouts state file.");
                } catch (Exception e2) {
                    e = e2;
                    Logger.getLogger().m510w("Error serializing rollouts state.", e);
                    safeDeleteCorruptFile(rolloutsStateForSession);
                    CommonUtils.closeOrLog(bufferedWriter, "Failed to close rollouts state file.");
                }
            } catch (Throwable th2) {
                th = th2;
                CommonUtils.closeOrLog(IsEmpty, "Failed to close rollouts state file.");
                throw th;
            }
        } catch (Exception e3) {
            bufferedWriter = null;
            e = e3;
        } catch (Throwable th3) {
            IsEmpty = 0;
            th = th3;
            CommonUtils.closeOrLog(IsEmpty, "Failed to close rollouts state file.");
            throw th;
        }
    }

    public File getUserDataFileForSession(String str) {
        return this.fileStore.getSessionFile(str, "user-data");
    }

    public File getKeysFileForSession(String str) {
        return this.fileStore.getSessionFile(str, "keys");
    }

    public File getInternalKeysFileForSession(String str) {
        return this.fileStore.getSessionFile(str, "internal-keys");
    }

    public File getRolloutsStateForSession(String str) {
        return this.fileStore.getSessionFile(str, "rollouts-state");
    }

    private String jsonToUserId(String str) {
        return valueOrNull(new JSONObject(str), "userId");
    }

    private static String userIdToJson(String str) {
        return new JSONObject(str) { // from class: com.google.firebase.crashlytics.internal.metadata.MetaDataStore.1
            final /* synthetic */ String val$userId;

            {
                this.val$userId = str;
                put("userId", str);
            }
        }.toString();
    }

    private static Map jsonToKeysData(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, valueOrNull(jSONObject, next));
        }
        return map;
    }

    private static String keysDataToJson(Map map) {
        return new JSONObject(map).toString();
    }

    private static List jsonToRolloutsState(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String string = jSONArray.getString(i);
            try {
                arrayList.add(RolloutAssignment.create(string));
            } catch (Exception e) {
                Logger.getLogger().m510w("Failed de-serializing rollouts state. " + string, e);
            }
        }
        return arrayList;
    }

    private static String rolloutsStateToJson(List list) {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            try {
                jSONArray.put(new JSONObject(RolloutAssignment.ROLLOUT_ASSIGNMENT_JSON_ENCODER.encode(list.get(i))));
            } catch (JSONException e) {
                Logger.getLogger().m510w("Exception parsing rollout assignment!", e);
            }
        }
        map.put("rolloutsState", jSONArray);
        return new JSONObject(map).toString();
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    private static void safeDeleteCorruptFile(File file) {
        if (file.exists() && file.delete()) {
            Logger.getLogger().m505i("Deleted corrupt file: " + file.getAbsolutePath());
        }
    }

    private static void safeDeleteCorruptFile(File file, String str) {
        if (file.exists() && file.delete()) {
            Logger.getLogger().m505i(String.format("Deleted corrupt file: %s\nReason: %s", file.getAbsolutePath(), str));
        }
    }
}
