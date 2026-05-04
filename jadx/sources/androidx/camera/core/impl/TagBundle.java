package androidx.camera.core.impl;

import android.util.ArrayMap;
import android.util.Pair;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class TagBundle {
    private static final TagBundle EMPTY_TAGBUNDLE = new TagBundle(new ArrayMap());
    protected final Map mTagMap;

    protected TagBundle(Map map) {
        this.mTagMap = map;
    }

    public static TagBundle emptyBundle() {
        return EMPTY_TAGBUNDLE;
    }

    public static TagBundle create(Pair pair) {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put((String) pair.first, pair.second);
        return new TagBundle(arrayMap);
    }

    public static TagBundle from(TagBundle tagBundle) {
        ArrayMap arrayMap = new ArrayMap();
        for (String str : tagBundle.listKeys()) {
            arrayMap.put(str, tagBundle.getTag(str));
        }
        return new TagBundle(arrayMap);
    }

    public Object getTag(String str) {
        return this.mTagMap.get(str);
    }

    public Set listKeys() {
        return this.mTagMap.keySet();
    }

    public final String toString() {
        return "android.hardware.camera2.CaptureRequest.setTag.CX";
    }
}
