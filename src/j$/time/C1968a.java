package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C1968a extends AbstractC1965a implements Serializable {

    /* JADX INFO: renamed from: b */
    public static final C1968a f435b;
    private static final long serialVersionUID = 6740630888130243051L;

    /* JADX INFO: renamed from: a */
    public final ZoneId f436a;

    public C1968a(ZoneId zoneId) {
        this.f436a = zoneId;
    }

    static {
        System.currentTimeMillis();
        f435b = new C1968a(ZoneOffset.UTC);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1968a) {
            return this.f436a.equals(((C1968a) obj).f436a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f436a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.f436a + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }
}
