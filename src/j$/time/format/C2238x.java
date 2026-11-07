package j$.time.format;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.format.x */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2238x {

    /* JADX INFO: renamed from: a */
    public static final C2238x f794a = new C2238x();

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof C2238x);
    }

    public final int hashCode() {
        return 182;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
