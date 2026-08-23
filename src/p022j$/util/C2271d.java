package p022j$.util;

import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.d */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2271d implements Comparator, Serializable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1011a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Comparator f1012b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f1013c;

    public /* synthetic */ C2271d(Comparator comparator, Object obj, int i) {
        this.f1011a = i;
        this.f1012b = comparator;
        this.f1013c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f1011a) {
            case 0:
                Comparator comparator = this.f1012b;
                Comparator comparator2 = (Comparator) this.f1013c;
                int iCompare = comparator.compare(obj, obj2);
                return iCompare != 0 ? iCompare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f1012b;
                Function function = (Function) this.f1013c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
