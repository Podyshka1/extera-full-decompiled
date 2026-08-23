package j$.util.function;

import java.util.Comparator;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.function.a */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2132a implements BinaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f789a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Comparator f790b;

    public /* synthetic */ C2132a(Comparator comparator, int i) {
        this.f789a = i;
        this.f790b = comparator;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f789a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f789a) {
            case 0:
                if (this.f790b.compare(obj, obj2) < 0) {
                    break;
                }
                break;
            default:
                if (this.f790b.compare(obj, obj2) > 0) {
                    break;
                }
                break;
        }
        return obj2;
    }
}
