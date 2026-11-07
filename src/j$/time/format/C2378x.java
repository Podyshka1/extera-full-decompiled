package j$.time.format;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.format.x */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2378x {

    /* JADX INFO: renamed from: a */
    public static final C2378x f798a = new C2378x();

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof C2378x);
    }

    public final int hashCode() {
        return 182;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
