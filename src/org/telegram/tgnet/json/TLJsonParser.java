package org.telegram.tgnet.json;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes5.dex */
public class TLJsonParser {
    private final JSONObject jsonObject;

    /* JADX INFO: loaded from: classes3.dex */
    public interface Deserializable {
        void deserializeFromJson(TLJsonParser tLJsonParser);
    }

    public TLJsonParser(JSONObject jSONObject) {
        this.jsonObject = jSONObject;
    }

    public Deserializable readObject(String str, Utilities.CallbackReturn callbackReturn) {
        JSONObject jSONObjectOptJSONObject = this.jsonObject.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            return parse(new TLJsonParser(jSONObjectOptJSONObject), callbackReturn);
        }
        return null;
    }

    public ArrayList readVector(String str, Utilities.CallbackReturn callbackReturn) {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = this.jsonObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    Deserializable deserializable = parse(new TLJsonParser(jSONArrayOptJSONArray.getJSONObject(i)), callbackReturn);
                    if (deserializable != null) {
                        arrayList.add(deserializable);
                    }
                } catch (JSONException e) {
                    FileLog.m1136e(e);
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return arrayList;
    }

    public int readInt32(String str, int i) {
        return parseInt32(this.jsonObject.opt(str), i);
    }

    public long readInt64(String str, int i) {
        return parseInt64(this.jsonObject.opt(str), i);
    }

    public String readString(String str) {
        return readString(str, null);
    }

    public String readString(String str, String str2) {
        return parseString(this.jsonObject.opt(str), str2);
    }

    public boolean readBoolean(String str, boolean z) {
        return parseBoolean(this.jsonObject.opt(str), z);
    }

    private String parseString(Object obj, String str) {
        return obj instanceof String ? (String) obj : str;
    }

    private boolean parseBoolean(Object obj, boolean z) {
        try {
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return obj instanceof String ? Boolean.parseBoolean((String) obj) : z;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return z;
        }
    }

    private long parseInt64(Object obj, long j) {
        try {
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            return obj instanceof String ? Long.parseLong((String) obj, 10) : j;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return j;
        }
    }

    private int parseInt32(Object obj, int i) {
        try {
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            return obj instanceof String ? Integer.parseInt((String) obj, 10) : i;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return i;
        }
    }

    private static Deserializable parse(TLJsonParser tLJsonParser, Utilities.CallbackReturn callbackReturn) {
        try {
            return (Deserializable) callbackReturn.run(tLJsonParser);
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }
}
