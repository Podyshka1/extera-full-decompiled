package j$.util;

import java.io.Serializable;
import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.d */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2129d implements java.util.Comparator, Serializable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f776a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ java.util.Comparator f777b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f778c;

    public /* synthetic */ C2129d(java.util.Comparator comparator, Object obj, int i) {
        this.f776a = i;
        this.f777b = comparator;
        this.f778c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f776a) {
            case 0:
                java.util.Comparator comparator = this.f777b;
                java.util.Comparator comparator2 = (java.util.Comparator) this.f778c;
                int iCompare = comparator.compare(obj, obj2);
                return iCompare != 0 ? iCompare : comparator2.compare(obj, obj2);
            default:
                java.util.Comparator comparator3 = this.f777b;
                Function function = (Function) this.f778c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
