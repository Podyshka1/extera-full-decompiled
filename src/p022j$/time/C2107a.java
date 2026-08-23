package p022j$.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.time.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C2107a extends AbstractC2104a implements Serializable {

    /* JADX INFO: renamed from: b */
    public static final C2107a f667b;
    private static final long serialVersionUID = 6740630888130243051L;

    /* JADX INFO: renamed from: a */
    public final ZoneId f668a;

    public C2107a(ZoneId zoneId) {
        this.f668a = zoneId;
    }

    static {
        System.currentTimeMillis();
        f667b = new C2107a(ZoneOffset.UTC);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2107a) {
            return this.f668a.equals(((C2107a) obj).f668a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f668a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.f668a + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }
}
