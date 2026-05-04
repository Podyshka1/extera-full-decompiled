package p022j$.time;

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
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.util.C2285g;
import p022j$.util.C2305q;
import p022j$.util.Map;
import p022j$.util.function.BiFunction$CC;
import p022j$.util.function.Consumer$CC;
import p022j$.util.function.Function$CC;
import p022j$.util.function.IntPredicate$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.C2321C;
import p022j$.util.stream.C2326D;
import p022j$.util.stream.C2350H3;
import p022j$.util.stream.C2512m0;
import p022j$.util.stream.C2517n0;
import p022j$.util.stream.C2525o3;
import p022j$.util.stream.C2535q3;
import p022j$.util.stream.C2545s3;
import p022j$.util.stream.Collectors;
import p022j$.util.stream.EnumC2456c3;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.InterfaceC2331E;
import p022j$.util.stream.InterfaceC2529p2;
import p022j$.util.stream.LongStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.time.s */
/* JADX INFO: loaded from: classes2.dex */
public final class C2184s implements InterfaceC2199n, Consumer, IntPredicate, Predicate, BinaryOperator, DoubleFunction, Function, LongFunction, BooleanSupplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f820a;

    /* JADX INFO: renamed from: b */
    public Object f821b;

    public /* synthetic */ C2184s(int i) {
        this.f820a = i;
    }

    public /* synthetic */ C2184s(int i, Object obj) {
        this.f820a = i;
        this.f821b = obj;
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
        switch (this.f820a) {
            case 1:
                break;
            case 8:
                break;
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    /* JADX INFO: renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m3593andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return false;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public /* synthetic */ int mo576h(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public /* synthetic */ C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    public /* synthetic */ IntPredicate negate() {
        return IntPredicate$CC.$default$negate(this);
    }

    /* JADX INFO: renamed from: negate, reason: collision with other method in class */
    public /* synthetic */ Predicate m3594negate() {
        return Predicate$CC.$default$negate(this);
    }

    /* JADX INFO: renamed from: or */
    public /* synthetic */ IntPredicate m766or(IntPredicate intPredicate) {
        return IntPredicate$CC.$default$or(this, intPredicate);
    }

    /* JADX INFO: renamed from: or */
    public /* synthetic */ Predicate m767or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        return !((Predicate) this.f821b).test(obj);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object objApply = ((Function) this.f821b).apply(obj);
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
        if (objApply instanceof InterfaceC2331E) {
            return C2326D.m910f((InterfaceC2331E) objApply);
        }
        if (objApply instanceof DoubleStream) {
            return C2321C.m906f((DoubleStream) objApply);
        }
        if (objApply instanceof LongStream) {
            return C2517n0.m1017f((LongStream) objApply);
        }
        if (objApply instanceof java.util.stream.LongStream) {
            return C2512m0.m1016f((java.util.stream.LongStream) objApply);
        }
        C2285g.m868a(objApply.getClass(), "java.util.stream.*Stream");
        throw null;
    }

    @Override // java.util.function.IntPredicate
    public boolean test(int i) {
        return !((IntPredicate) this.f821b).test(i);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object objApply = ((DoubleFunction) this.f821b).apply(d);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof InterfaceC2331E) {
            return C2326D.m910f((InterfaceC2331E) objApply);
        }
        if (objApply instanceof DoubleStream) {
            return C2321C.m906f((DoubleStream) objApply);
        }
        C2285g.m868a(objApply.getClass(), "java.util.stream.DoubleStream");
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object objApply = ((LongFunction) this.f821b).apply(j);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof LongStream) {
            return C2517n0.m1017f((LongStream) objApply);
        }
        if (objApply instanceof java.util.stream.LongStream) {
            return C2512m0.m1016f((java.util.stream.LongStream) objApply);
        }
        C2285g.m868a(objApply.getClass(), "java.util.stream.LongStream");
        throw null;
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f820a) {
            case 11:
                C2525o3 c2525o3 = (C2525o3) this.f821b;
                return c2525o3.f1374d.tryAdvance(c2525o3.f1375e);
            case 12:
                C2535q3 c2535q3 = (C2535q3) this.f821b;
                return c2535q3.f1374d.tryAdvance(c2535q3.f1375e);
            case 13:
                C2545s3 c2545s3 = (C2545s3) this.f821b;
                return c2545s3.f1374d.tryAdvance(c2545s3.f1375e);
            default:
                C2350H3 c2350h3 = (C2350H3) this.f821b;
                return c2350h3.f1374d.tryAdvance(c2350h3.f1375e);
        }
    }

    /* JADX INFO: renamed from: D */
    public void m765D(EnumC2456c3 enumC2456c3) {
        ((EnumMap) ((Map) this.f821b)).put(enumC2456c3, 1);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        BinaryOperator binaryOperator = (BinaryOperator) this.f821b;
        Map map = (Map) obj;
        Set set = Collectors.f1108a;
        for (Map.Entry entry : ((Map) obj2).entrySet()) {
            Map.EL.m813a(map, entry.getKey(), entry.getValue(), binaryOperator);
        }
        return map;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public long mo580w(InterfaceC2202q interfaceC2202q) {
        throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f845a) {
            return (ZoneId) this.f821b;
        }
        return AbstractC2203r.m782c(this, c2148a);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f820a) {
            case 1:
                ((Consumer) this.f821b).accept(new C2305q((Map.Entry) obj));
                break;
            case 8:
                ((InterfaceC2529p2) this.f821b).accept(obj);
                break;
            default:
                ((List) this.f821b).add(obj);
                break;
        }
    }
}
