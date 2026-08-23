package j$.util;

import java.util.RandomAccess;

/* JADX INFO: renamed from: j$.util.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2205u extends C2149p implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    @Override // j$.util.C2149p, java.util.List
    public final java.util.List subList(int i, int i2) {
        return new C2205u(this.f839b.subList(i, i2));
    }

    private Object writeReplace() {
        return new C2149p(this.f839b);
    }
}
