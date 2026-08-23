package j$.time.format;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: renamed from: j$.time.format.v */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2154v {

    /* JADX INFO: renamed from: a */
    public final Map f633a;

    /* JADX INFO: renamed from: b */
    public final Map f634b;

    public C2154v(Map map) {
        this.f633a = map;
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            HashMap map3 = new HashMap();
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                String str = (String) entry2.getValue();
                String str2 = (String) entry2.getValue();
                Long l = (Long) entry2.getKey();
                ConcurrentMap concurrentMap = C2155w.f635a;
                map3.put(str, new AbstractMap.SimpleImmutableEntry(str2, l));
            }
            ArrayList arrayList2 = new ArrayList(map3.values());
            Collections.sort(arrayList2, C2155w.f636b);
            map2.put((TextStyle) entry.getKey(), arrayList2);
            arrayList.addAll(arrayList2);
            map2.put(null, arrayList);
        }
        Collections.sort(arrayList, C2155w.f636b);
        this.f634b = map2;
    }

    /* JADX INFO: renamed from: a */
    public final String m674a(long j, TextStyle textStyle) {
        Map map = (Map) this.f633a.get(textStyle);
        if (map != null) {
            return (String) map.get(Long.valueOf(j));
        }
        return null;
    }
}
