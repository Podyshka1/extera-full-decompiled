package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.C2078B;
import j$.util.C2081E;
import j$.util.C2082F;
import j$.util.C2094S;
import j$.util.C2207w;
import j$.util.InterfaceC2083G;
import j$.util.InterfaceC2096U;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* JADX INFO: renamed from: j$.util.stream.C */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2155C implements InterfaceC2157E {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DoubleStream f867a;

    public /* synthetic */ C2155C(DoubleStream doubleStream) {
        this.f867a = doubleStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ InterfaceC2157E m770f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C2156D ? ((C2156D) doubleStream).f876a : new C2155C(doubleStream);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ C2078B average() {
        return AbstractC1965a.m400F(this.f867a.average());
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2157E mo760b() {
        return m770f(this.f867a.takeWhile(null));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.f867a.boxed());
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2157E mo761c() {
        return m770f(this.f867a.filter(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f867a.close();
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f867a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ long count() {
        return this.f867a.count();
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ InterfaceC2157E mo762d() {
        return m770f(this.f867a.dropWhile(null));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E distinct() {
        return m770f(this.f867a.distinct());
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2157E mo763e() {
        return m770f(this.f867a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.f867a;
        if (obj instanceof C2155C) {
            obj = ((C2155C) obj).f867a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ C2078B findAny() {
        return AbstractC1965a.m400F(this.f867a.findAny());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ C2078B findFirst() {
        return AbstractC1965a.m400F(this.f867a.findFirst());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f867a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f867a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f867a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f867a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2083G iterator() {
        ?? it = this.f867a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof C2082F ? ((C2082F) it).f667a : new C2081E(it);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ Iterator iterator() {
        return this.f867a.iterator();
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: l */
    public final /* synthetic */ boolean mo764l() {
        return this.f867a.anyMatch(null);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E limit(long j) {
        return m770f(this.f867a.limit(j));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return Stream.VivifiedWrapper.convert(this.f867a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ C2078B max() {
        return AbstractC1965a.m400F(this.f867a.max());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ C2078B min() {
        return AbstractC1965a.m400F(this.f867a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2183f.m854f(this.f867a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ BaseStream parallel() {
        return C2183f.m854f(this.f867a.parallel());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E parallel() {
        return m770f(this.f867a.parallel());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E peek(DoubleConsumer doubleConsumer) {
        return m770f(this.f867a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: q */
    public final /* synthetic */ boolean mo765q() {
        return this.f867a.allMatch(null);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: r */
    public final /* synthetic */ LongStream mo766r() {
        return C6228m0.m864f(this.f867a.mapToLong(null));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f867a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ C2078B reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC1965a.m400F(this.f867a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ BaseStream sequential() {
        return C2183f.m854f(this.f867a.sequential());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E sequential() {
        return m770f(this.f867a.sequential());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E skip(long j) {
        return m770f(this.f867a.skip(j));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2157E sorted() {
        return m770f(this.f867a.sorted());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.d0.m739a(this.f867a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.InterfaceC2157E, j$.util.stream.BaseStream
    public final /* synthetic */ InterfaceC2096U spliterator() {
        return C2094S.m689a(this.f867a.spliterator());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ double sum() {
        return this.f867a.sum();
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final /* synthetic */ double[] toArray() {
        return this.f867a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2183f.m854f(this.f867a.unordered());
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ IntStream mo767w() {
        return IntStream.VivifiedWrapper.convert(this.f867a.mapToInt(null));
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: y */
    public final /* synthetic */ boolean mo768y() {
        return this.f867a.noneMatch(null);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2207w summaryStatistics() {
        this.f867a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: a */
    public final InterfaceC2157E mo759a(C2045s c2045s) {
        DoubleStream doubleStream = this.f867a;
        C2045s c2045s2 = new C2045s(5);
        c2045s2.f586b = c2045s;
        return m770f(doubleStream.flatMap(c2045s2));
    }
}
