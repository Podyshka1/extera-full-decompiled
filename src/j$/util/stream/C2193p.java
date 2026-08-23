package j$.util.stream;

import j$.util.C2078B;
import j$.util.C2079C;
import j$.util.C2207w;
import j$.util.C2208x;
import j$.util.C2210z;
import j$.util.Optional;
import j$.util.OptionalInt;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Predicate$CC;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* JADX INFO: renamed from: j$.util.stream.p */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2193p implements BiConsumer, DoubleFunction, ToDoubleFunction, IntFunction, DoubleBinaryOperator, ObjDoubleConsumer, Predicate, ToIntFunction, IntBinaryOperator, ObjIntConsumer, ObjLongConsumer, LongBinaryOperator, ToLongFunction, LongFunction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1206a;

    public /* synthetic */ C2193p(int i) {
        this.f1206a = i;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f1206a) {
        }
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f1206a) {
            case 0:
                break;
            case 16:
                break;
            case 20:
                break;
            case 24:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return Long.valueOf(j);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.max(d, d2);
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i, int i2) {
        switch (this.f1206a) {
            case 14:
                return Math.min(i, i2);
            case 17:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.f1206a) {
            case 22:
                return Math.min(j, j2);
            default:
                return Math.max(j, j2);
        }
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f1206a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f1206a) {
        }
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.f1206a) {
            case 6:
                return ((C2078B) obj).f657a;
            case 7:
                return ((OptionalInt) obj).f679a;
            case 8:
                return ((C2079C) obj).f662a;
            default:
                return ((Optional) obj).isPresent();
        }
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        Collectors.m772a(dArr, d);
        dArr[2] = dArr[2] + d;
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        switch (this.f1206a) {
            case 21:
                ((C2210z) obj).accept(j);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + j;
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f1206a) {
            case 0:
                ((C2207w) obj).m910a((C2207w) obj2);
                break;
            case 16:
                ((C2208x) obj).m912a((C2208x) obj2);
                break;
            case 20:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
            case 24:
                ((C2210z) obj).m913a((C2210z) obj2);
                break;
            default:
                long[] jArr3 = (long[]) obj;
                long[] jArr4 = (long[]) obj2;
                jArr3[0] = jArr3[0] + jArr4[0];
                jArr3[1] = jArr3[1] + jArr4[1];
                break;
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i) {
        switch (this.f1206a) {
            case 15:
                ((C2208x) obj).accept(i);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + ((long) i);
                break;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.f1206a) {
            case 3:
                return new Double[i];
            case 10:
                return new Object[i];
            case 11:
                return new Integer[i];
            case 13:
                return Integer.valueOf(i);
            default:
                return new Long[i];
        }
    }
}
