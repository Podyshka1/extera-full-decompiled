package j$.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.a */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2101a extends AbstractC2102b implements Serializable {

    /* JADX INFO: renamed from: b */
    public static final C2101a f498b;
    private static final long serialVersionUID = 6740630888130243051L;

    /* JADX INFO: renamed from: a */
    public final ZoneId f499a;

    static {
        System.currentTimeMillis();
        f498b = new C2101a(ZoneOffset.UTC);
    }

    public C2101a(ZoneId zoneId) {
        this.f499a = zoneId;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2101a) {
            return this.f499a.equals(((C2101a) obj).f499a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f499a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.f499a + "]";
    }
}
