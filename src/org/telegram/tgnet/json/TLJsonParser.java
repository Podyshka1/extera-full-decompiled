package org.telegram.tgnet.json;

import java.util.ArrayList;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Components.TranscribeButton;

/* JADX INFO: loaded from: classes6.dex */
public class TLJsonParser {
    private final JSONObject jsonObject;

    /* JADX INFO: loaded from: classes.dex */
    public interface Deserializable {
        void deserializeFromJson(TLJsonParser tLJsonParser);
    }

    public TLJsonParser(JSONObject jSONObject) {
        this.jsonObject = jSONObject;
    }

    public <T extends Deserializable> T readObject(String str, Utilities.CallbackReturn<TLJsonParser, T> callbackReturn) {
        JSONObject jSONObjectOptJSONObject = this.jsonObject.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            return (T) parse(new TLJsonParser(jSONObjectOptJSONObject), callbackReturn);
        }
        return null;
    }

    public <T extends Deserializable> ArrayList<T> readVector(String str, Utilities.CallbackReturn<TLJsonParser, T> callbackReturn) {
        TranscribeButton.C47351 c47351 = (ArrayList<T>) new ArrayList();
        JSONArray jSONArrayOptJSONArray = this.jsonObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    Deserializable deserializable = parse(new TLJsonParser(jSONArrayOptJSONArray.getJSONObject(i)), callbackReturn);
                    if (deserializable != null) {
                        c47351.add(deserializable);
                    }
                } catch (JSONException e) {
                    FileLog.m1040e(e);
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        HttpUrl$$ExternalSyntheticBUOutline0.m947m(e);
                        return null;
                    }
                }
            }
        }
        return c47351;
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
            FileLog.m1040e(e);
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
            FileLog.m1040e(e);
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
            FileLog.m1040e(e);
            return i;
        }
    }

    private static <T extends Deserializable> T parse(TLJsonParser tLJsonParser, Utilities.CallbackReturn<TLJsonParser, T> callbackReturn) {
        try {
            return callbackReturn.run(tLJsonParser);
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }
}
