package p022j$.util;

import java.io.Serializable;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: renamed from: j$.util.c */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2245c implements Comparator, Serializable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f933a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f934b;

    public /* synthetic */ C2245c(int i, Object obj) {
        this.f933a = i;
        this.f934b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f933a) {
            case 0:
                ToIntFunction toIntFunction = (ToIntFunction) this.f934b;
                return Integer.compare(toIntFunction.applyAsInt(obj), toIntFunction.applyAsInt(obj2));
            case 1:
                ToDoubleFunction toDoubleFunction = (ToDoubleFunction) this.f934b;
                return Double.compare(toDoubleFunction.applyAsDouble(obj), toDoubleFunction.applyAsDouble(obj2));
            case 2:
                Function function = (Function) this.f934b;
                return ((Comparable) function.apply(obj)).compareTo(function.apply(obj2));
            default:
                ToLongFunction toLongFunction = (ToLongFunction) this.f934b;
                return Long.compare(toLongFunction.applyAsLong(obj), toLongFunction.applyAsLong(obj2));
        }
    }
}
