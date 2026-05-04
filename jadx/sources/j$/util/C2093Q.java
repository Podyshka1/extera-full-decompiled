package j$.util;

/* JADX INFO: renamed from: j$.util.Q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2093Q extends p0 {

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ java.util.SortedSet f681f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2093Q(java.util.SortedSet sortedSet, java.util.Collection collection) {
        super(collection, 21);
        this.f681f = sortedSet;
    }

    @Override // j$.util.p0, j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        return this.f681f.comparator();
    }
}
