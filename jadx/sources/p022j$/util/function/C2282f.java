package p022j$.util.function;

import java.util.function.IntUnaryOperator;

/* JADX INFO: renamed from: j$.util.function.f */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2282f implements IntUnaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1036a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IntUnaryOperator f1037b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IntUnaryOperator f1038c;

    public /* synthetic */ C2282f(IntUnaryOperator intUnaryOperator, IntUnaryOperator intUnaryOperator2, int i) {
        this.f1036a = i;
        this.f1037b = intUnaryOperator;
        this.f1038c = intUnaryOperator2;
    }

    public final /* synthetic */ IntUnaryOperator andThen(IntUnaryOperator intUnaryOperator) {
        switch (this.f1036a) {
        }
        return IntUnaryOperator$CC.$default$andThen(this, intUnaryOperator);
    }

    public final /* synthetic */ IntUnaryOperator compose(IntUnaryOperator intUnaryOperator) {
        switch (this.f1036a) {
        }
        return IntUnaryOperator$CC.$default$compose(this, intUnaryOperator);
    }

    @Override // java.util.function.IntUnaryOperator
    public final int applyAsInt(int i) {
        switch (this.f1036a) {
            case 0:
                return this.f1038c.applyAsInt(this.f1037b.applyAsInt(i));
            default:
                return this.f1037b.applyAsInt(this.f1038c.applyAsInt(i));
        }
    }
}
