package j$.time;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2323a extends AbstractC2248g implements Serializable {

    /* JADX INFO: renamed from: b */
    public static final C2323a f655b;
    private static final long serialVersionUID = 6740630888130243051L;

    /* JADX INFO: renamed from: a */
    public final ZoneId f656a;

    static {
        System.currentTimeMillis();
        f655b = new C2323a(ZoneOffset.UTC);
    }

    public C2323a(ZoneId zoneId) {
        this.f656a = zoneId;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2323a) {
            return this.f656a.equals(((C2323a) obj).f656a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f656a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.f656a + "]";
    }
}
