package j$.time;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: renamed from: j$.time.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2183a extends AbstractC2108g implements Serializable {

    /* JADX INFO: renamed from: b */
    public static final C2183a f654b;
    private static final long serialVersionUID = 6740630888130243051L;

    /* JADX INFO: renamed from: a */
    public final ZoneId f655a;

    static {
        System.currentTimeMillis();
        f654b = new C2183a(ZoneOffset.UTC);
    }

    public C2183a(ZoneId zoneId) {
        this.f655a = zoneId;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2183a) {
            return this.f655a.equals(((C2183a) obj).f655a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f655a.hashCode() + 1;
    }

    public final String toString() {
        return "SystemClock[" + this.f655a + "]";
    }
}
