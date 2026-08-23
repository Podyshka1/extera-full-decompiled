package j$.time;

import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2063q;
import j$.util.C2140g;
import j$.util.C2150q;
import j$.util.Map;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.function.IntPredicate$CC;
import j$.util.function.Predicate$CC;
import j$.util.stream.C2155C;
import j$.util.stream.C2156D;
import j$.util.stream.C6228m0;
import j$.util.stream.C6232n0;
import j$.util.stream.C6239o3;
import j$.util.stream.C6247q3;
import j$.util.stream.C6255s3;
import j$.util.stream.Collectors;
import j$.util.stream.EnumC6191c3;
import j$.util.stream.H3;
import j$.util.stream.IntStream;
import j$.util.stream.InterfaceC2157E;
import j$.util.stream.InterfaceC6242p2;
import j$.util.stream.LongStream;
import j$.util.stream.Stream;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.IntPredicate;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.stream.DoubleStream;

/* JADX INFO: renamed from: j$.time.s */
/* JADX INFO: loaded from: classes2.dex */
public final class C2045s implements InterfaceC2060n, Consumer, IntPredicate, Predicate, BinaryOperator, DoubleFunction, Function, LongFunction, BooleanSupplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f585a;

    /* JADX INFO: renamed from: b */
    public Object f586b;

    public /* synthetic */ C2045s(int i) {
        this.f585a = i;
    }

    public /* synthetic */ C2045s(int i, Object obj) {
        this.f585a = i;
        this.f586b = obj;
    }

    public /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
        return IntPredicate$CC.$default$and(this, intPredicate);
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f585a) {
            case 1:
                break;
            case 8:
                break;
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    /* JADX INFO: renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m3271andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public /* synthetic */ C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    public /* synthetic */ IntPredicate negate() {
        return IntPredicate$CC.$default$negate(this);
    }

    /* JADX INFO: renamed from: negate, reason: collision with other method in class */
    public /* synthetic */ Predicate m3272negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ IntPredicate or(IntPredicate intPredicate) {
        return IntPredicate$CC.$default$or(this, intPredicate);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.f586b).test(obj);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object objApply = ((Function) this.f586b).apply(obj);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) objApply);
        }
        if (objApply instanceof java.util.stream.Stream) {
            return Stream.VivifiedWrapper.convert((java.util.stream.Stream) objApply);
        }
        if (objApply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) objApply);
        }
        if (objApply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) objApply);
        }
        if (objApply instanceof InterfaceC2157E) {
            return C2156D.m773f((InterfaceC2157E) objApply);
        }
        if (objApply instanceof DoubleStream) {
            return C2155C.m770f((DoubleStream) objApply);
        }
        if (objApply instanceof LongStream) {
            return C6232n0.m865f((LongStream) objApply);
        }
        if (objApply instanceof java.util.stream.LongStream) {
            return C6228m0.m864f((java.util.stream.LongStream) objApply);
        }
        C2140g.m740a(objApply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    @Override // java.util.function.IntPredicate
    public boolean test(int i) {
        return !((IntPredicate) this.f586b).test(i);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object objApply = ((DoubleFunction) this.f586b).apply(d);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof InterfaceC2157E) {
            return C2156D.m773f((InterfaceC2157E) objApply);
        }
        if (objApply instanceof DoubleStream) {
            return C2155C.m770f((DoubleStream) objApply);
        }
        C2140g.m740a(objApply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object objApply = ((LongFunction) this.f586b).apply(j);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof LongStream) {
            return C6232n0.m865f((LongStream) objApply);
        }
        if (objApply instanceof java.util.stream.LongStream) {
            return C6228m0.m864f((java.util.stream.LongStream) objApply);
        }
        C2140g.m740a(objApply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f585a) {
            case 11:
                C6239o3 c6239o3 = (C6239o3) this.f586b;
                return c6239o3.f1138d.tryAdvance(c6239o3.f1139e);
            case 12:
                C6247q3 c6247q3 = (C6247q3) this.f586b;
                return c6247q3.f1138d.tryAdvance(c6247q3.f1139e);
            case 13:
                C6255s3 c6255s3 = (C6255s3) this.f586b;
                return c6255s3.f1138d.tryAdvance(c6255s3.f1139e);
            default:
                H3 h3 = (H3) this.f586b;
                return h3.f1138d.tryAdvance(h3.f1139e);
        }
    }

    /* JADX INFO: renamed from: D */
    public void m642D(EnumC6191c3 enumC6191c3) {
        ((EnumMap) ((Map) this.f586b)).put(enumC6191c3, 1);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        BinaryOperator binaryOperator = (BinaryOperator) this.f586b;
        Map map = (Map) obj;
        Set set = Collectors.f873a;
        for (Map.Entry entry : ((Map) obj2).entrySet()) {
            Map.EL.m688a(map, entry.getKey(), entry.getValue(), binaryOperator);
        }
        return map;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public long mo460w(InterfaceC2063q interfaceC2063q) {
        throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f610a) {
            return (ZoneId) this.f586b;
        }
        return AbstractC2064r.m657c(this, c2009a);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f585a) {
            case 1:
                ((Consumer) this.f586b).accept(new C2150q((Map.Entry) obj));
                break;
            case 8:
                ((InterfaceC6242p2) this.f586b).accept(obj);
                break;
            default:
                ((List) this.f586b).add(obj);
                break;
        }
    }
}
