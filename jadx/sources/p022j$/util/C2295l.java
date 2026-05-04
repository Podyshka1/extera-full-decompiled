package p022j$.util;

import java.util.Set;

/* JADX INFO: renamed from: j$.util.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2295l extends C2287h implements Set, Set {
    private static final long serialVersionUID = 487447009682186044L;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f1048b) {
            zEquals = this.f1047a.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f1048b) {
            iHashCode = this.f1047a.hashCode();
        }
        return iHashCode;
    }
}
