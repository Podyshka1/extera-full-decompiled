package p022j$.util;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: j$.util.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2583u extends C2303p implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    @Override // p022j$.util.C2303p, java.util.List
    public final List subList(int i, int i2) {
        return new C2583u(this.f1074b.subList(i, i2));
    }

    private Object writeReplace() {
        return new C2303p(this.f1074b);
    }
}
