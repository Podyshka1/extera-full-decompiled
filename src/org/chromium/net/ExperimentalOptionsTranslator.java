package org.chromium.net;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
abstract class ExperimentalOptionsTranslator {
    public static JSONObject applyJsonPatches(JSONObject jSONObject, List<Object> list) {
        if (jSONObject == null && list.isEmpty()) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        Iterator<Object> it = list.iterator();
        if (!it.hasNext()) {
            return jSONObject;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
        throw null;
    }
}
