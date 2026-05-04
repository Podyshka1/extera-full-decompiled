package j$.util.stream;

import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;

/* JADX INFO: renamed from: j$.util.stream.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6192d0 implements LongBinaryOperator, Consumer, IntFunction, LongFunction, BinaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1094a;

    public /* synthetic */ C6192d0(int i) {
        this.f1094a = i;
    }

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    /* JADX INFO: renamed from: accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0 */
    private final void m844x10ce6cf0(Object obj) {
    }

    /* JADX INFO: renamed from: accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1 */
    private final void m845x10ce6cf1(Object obj) {
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public void m800v(Object obj) {
        int i = this.f1094a;
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f1094a) {
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1094a) {
            case 1:
                break;
            case 14:
                break;
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.f1094a) {
            case 3:
                return AbstractC6277y1.b0(j);
            case 4:
            default:
                return AbstractC6277y1.l0(j);
            case 5:
                return AbstractC6277y1.k0(j);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        return j + j2;
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f1094a) {
            case 2:
                return new Object[i];
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 14:
            case 15:
            default:
                return new Double[i];
            case 10:
                return new Object[i];
            case 11:
                return new Integer[i];
            case 12:
                return new Long[i];
            case 13:
                return new Double[i];
            case 16:
                return new Integer[i];
            case 17:
                return new Integer[i];
            case 18:
                return new Long[i];
            case 19:
                return new Long[i];
            case 20:
                return new Double[i];
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f1094a) {
            case 4:
                return new P0((C0) obj, (C0) obj2);
            case 5:
            case 7:
            default:
                return new T0((I0) obj, (I0) obj2);
            case 6:
                return new Q0((E0) obj, (E0) obj2);
            case 8:
                return new R0((G0) obj, (G0) obj2);
        }
    }
}
