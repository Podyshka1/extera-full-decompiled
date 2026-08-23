package j$.util.function;

import java.util.function.IntUnaryOperator;

/* JADX INFO: renamed from: j$.util.function.f */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2137f implements IntUnaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f801a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IntUnaryOperator f802b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IntUnaryOperator f803c;

    public /* synthetic */ C2137f(IntUnaryOperator intUnaryOperator, IntUnaryOperator intUnaryOperator2, int i) {
        this.f801a = i;
        this.f802b = intUnaryOperator;
        this.f803c = intUnaryOperator2;
    }

    public final /* synthetic */ IntUnaryOperator andThen(IntUnaryOperator intUnaryOperator) {
        switch (this.f801a) {
        }
        return IntUnaryOperator$CC.$default$andThen(this, intUnaryOperator);
    }

    public final /* synthetic */ IntUnaryOperator compose(IntUnaryOperator intUnaryOperator) {
        switch (this.f801a) {
        }
        return IntUnaryOperator$CC.$default$compose(this, intUnaryOperator);
    }

    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i) {
        switch (this.f801a) {
            case 0:
                return this.f803c.applyAsInt(this.f802b.applyAsInt(i));
            default:
                return this.f802b.applyAsInt(this.f803c.applyAsInt(i));
        }
    }
}
