package org.telegram.tgnet.json;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes5.dex */
public class TLJsonBuilder {
    private final JSONObject result2 = new JSONObject();

    /* JADX INFO: loaded from: classes3.dex */
    public interface Serializable {
        void serializeToJson(TLJsonBuilder tLJsonBuilder);
    }

    private TLJsonBuilder() {
    }

    public void writeObject(String str, Serializable serializable) {
        write(str, serialize(serializable));
    }

    public void writeVector(String str, List list) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            JSONObject jSONObjectSerialize = serialize((Serializable) it.next());
            if (jSONObjectSerialize != null) {
                jSONArray.put(jSONObjectSerialize);
            }
        }
        write(str, jSONArray);
    }

    public void writeString(String str, String str2) {
        write(str, str2);
    }

    public void writeInt64(String str, long j) {
        writeString(str, Long.toString(j, 10));
    }

    public void writeInt32(String str, int i) {
        writeString(str, Integer.toString(i, 10));
    }

    public void writeBoolean(String str, boolean z) {
        write(str, Boolean.valueOf(z));
    }

    private void write(String str, Object obj) {
        try {
            this.result2.putOpt(str, obj);
        } catch (JSONException e) {
            FileLog.m1136e(e);
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                throw new RuntimeException(e);
            }
        }
    }

    public static JSONObject serialize(Serializable serializable) {
        if (serializable == null) {
            return null;
        }
        try {
            TLJsonBuilder tLJsonBuilder = new TLJsonBuilder();
            serializable.serializeToJson(tLJsonBuilder);
            return tLJsonBuilder.result2;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }
}
