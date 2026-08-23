package p022j$.util;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: j$.util.k */
/* JADX INFO: loaded from: classes2.dex */
public final class C2293k extends C2289i implements RandomAccess {
    private static final long serialVersionUID = 1530674583602358482L;

    @Override // p022j$.util.C2289i, java.util.List
    public final List subList(int i, int i2) {
        C2293k c2293k;
        synchronized (this.f1048b) {
            c2293k = new C2293k(this.f1052c.subList(i, i2), this.f1048b);
        }
        return c2293k;
    }

    private Object writeReplace() {
        return new C2289i(this.f1052c);
    }
}
