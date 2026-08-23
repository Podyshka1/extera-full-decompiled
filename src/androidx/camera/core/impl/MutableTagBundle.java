package androidx.camera.core.impl;

import android.util.ArrayMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class MutableTagBundle extends TagBundle {
    private MutableTagBundle(Map map) {
        super(map);
    }

    public static MutableTagBundle create() {
        return new MutableTagBundle(new ArrayMap());
    }

    public void putTag(String str, Object obj) {
        this.mTagMap.put(str, obj);
    }

    public void addTagBundle(TagBundle tagBundle) {
        Map map;
        Map map2 = this.mTagMap;
        if (map2 == null || (map = tagBundle.mTagMap) == null) {
            return;
        }
        map2.putAll(map);
    }
}
