package j$.util;

/* JADX INFO: renamed from: j$.util.v */
/* JADX INFO: loaded from: classes2.dex */
public class C2206v extends C2147n implements java.util.Set, Set {
    private static final long serialVersionUID = -9215047833775013803L;

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        return obj == this || this.f833a.equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f833a.hashCode();
    }
}
