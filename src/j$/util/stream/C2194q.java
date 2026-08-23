package j$.util.stream;

import j$.util.function.BiFunction$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* JADX INFO: renamed from: j$.util.stream.q */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2194q implements BinaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1213a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ BiConsumer f1214b;

    public /* synthetic */ C2194q(BiConsumer biConsumer, int i) {
        this.f1213a = i;
        this.f1214b = biConsumer;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f1213a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f1213a) {
            case 0:
                this.f1214b.accept(obj, obj2);
                break;
            case 1:
                this.f1214b.accept(obj, obj2);
                break;
            default:
                this.f1214b.accept(obj, obj2);
                break;
        }
        return obj;
    }
}
