package j$.util;

import java.io.Serializable;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: renamed from: j$.util.c */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2104c implements java.util.Comparator, Serializable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f698a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f699b;

    public /* synthetic */ C2104c(int i, Object obj) {
        this.f698a = i;
        this.f699b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f698a) {
            case 0:
                ToIntFunction toIntFunction = (ToIntFunction) this.f699b;
                return Integer.compare(toIntFunction.applyAsInt(obj), toIntFunction.applyAsInt(obj2));
            case 1:
                ToDoubleFunction toDoubleFunction = (ToDoubleFunction) this.f699b;
                return Double.compare(toDoubleFunction.applyAsDouble(obj), toDoubleFunction.applyAsDouble(obj2));
            case 2:
                Function function = (Function) this.f699b;
                return ((Comparable) function.apply(obj)).compareTo(function.apply(obj2));
            default:
                ToLongFunction toLongFunction = (ToLongFunction) this.f699b;
                return Long.compare(toLongFunction.applyAsLong(obj), toLongFunction.applyAsLong(obj2));
        }
    }
}
