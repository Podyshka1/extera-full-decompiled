package p022j$.util;

import java.util.Set;

/* JADX INFO: renamed from: j$.util.v */
/* JADX INFO: loaded from: classes2.dex */
public class C2584v extends C2299n implements Set, Set {
    private static final long serialVersionUID = -9215047833775013803L;

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        return obj == this || this.f1068a.equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f1068a.hashCode();
    }
}
