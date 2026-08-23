package j$.util;

/* JADX INFO: renamed from: j$.util.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2145l extends C2141h implements java.util.Set, Set {
    private static final long serialVersionUID = 487447009682186044L;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f813b) {
            zEquals = this.f812a.equals(obj);
        }
        return zEquals;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int iHashCode;
        synchronized (this.f813b) {
            iHashCode = this.f812a.hashCode();
        }
        return iHashCode;
    }
}
