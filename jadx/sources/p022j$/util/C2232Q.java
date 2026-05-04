package p022j$.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: renamed from: j$.util.Q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2232Q extends C2304p0 {

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ SortedSet f916f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2232Q(SortedSet sortedSet, Collection collection) {
        super(collection, 21);
        this.f916f = sortedSet;
    }

    @Override // p022j$.util.C2304p0, p022j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f916f.comparator();
    }
}
