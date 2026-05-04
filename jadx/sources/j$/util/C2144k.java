package j$.util;

import java.util.RandomAccess;

/* JADX INFO: renamed from: j$.util.k */
/* JADX INFO: loaded from: classes2.dex */
public final class C2144k extends C2142i implements RandomAccess {
    private static final long serialVersionUID = 1530674583602358482L;

    @Override // j$.util.C2142i, java.util.List
    public final java.util.List subList(int i, int i2) {
        C2144k c2144k;
        synchronized (this.f813b) {
            c2144k = new C2144k(this.f817c.subList(i, i2), this.f813b);
        }
        return c2144k;
    }

    private Object writeReplace() {
        return new C2142i(this.f817c);
    }
}
