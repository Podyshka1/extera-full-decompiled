package p022j$.util.stream;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.stream.Collector;
import p022j$.util.C2285g;
import p022j$.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.b3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2450b3 {
    /* JADX INFO: renamed from: a */
    public static Set m989a(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof Collector.Characteristics) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    Collector.Characteristics characteristics = (Collector.Characteristics) it.next();
                    hashSet.add(characteristics == null ? null : characteristics == Collector.Characteristics.CONCURRENT ? Collector.Characteristics.CONCURRENT : characteristics == Collector.Characteristics.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH);
                } catch (ClassCastException e) {
                    C2285g.m868a(e, "java.util.stream.Collector.Characteristics");
                    throw null;
                }
            }
        } else {
            if (!(next instanceof Collector.Characteristics)) {
                C2285g.m868a(next.getClass(), "java.util.stream.Collector.Characteristics");
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    Collector.Characteristics characteristics2 = (Collector.Characteristics) it2.next();
                    hashSet.add(characteristics2 == null ? null : characteristics2 == Collector.Characteristics.CONCURRENT ? Collector.Characteristics.CONCURRENT : characteristics2 == Collector.Characteristics.UNORDERED ? Collector.Characteristics.UNORDERED : Collector.Characteristics.IDENTITY_FINISH);
                } catch (ClassCastException e2) {
                    C2285g.m868a(e2, "java.util.stream.Collector.Characteristics");
                    throw null;
                }
            }
        }
        return hashSet;
    }
}
