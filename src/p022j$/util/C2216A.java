package p022j$.util;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: renamed from: j$.util.A */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2216A implements Comparator, Serializable {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Comparable) ((Map.Entry) obj).getValue()).compareTo(((Map.Entry) obj2).getValue());
    }
}
