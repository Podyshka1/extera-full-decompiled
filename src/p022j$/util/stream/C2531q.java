package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p022j$.util.function.BiFunction$CC;

/* JADX INFO: renamed from: j$.util.stream.q */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2531q implements BinaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1449a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ BiConsumer f1450b;

    public /* synthetic */ C2531q(BiConsumer biConsumer, int i) {
        this.f1449a = i;
        this.f1450b = biConsumer;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f1449a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f1449a) {
            case 0:
                this.f1450b.accept(obj, obj2);
                break;
            case 1:
                this.f1450b.accept(obj, obj2);
                break;
            default:
                this.f1450b.accept(obj, obj2);
                break;
        }
        return obj;
    }
}
