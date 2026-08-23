package p022j$.util.stream;

import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.C2217B;
import p022j$.util.C2220E;
import p022j$.util.C2221F;
import p022j$.util.C2233S;
import p022j$.util.C2272d0;
import p022j$.util.C2585w;
import p022j$.util.InterfaceC2222G;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.stream.C */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2321C implements InterfaceC2331E {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DoubleStream f1102a;

    public /* synthetic */ C2321C(DoubleStream doubleStream) {
        this.f1102a = doubleStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ InterfaceC2331E m906f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof C2326D ? ((C2326D) doubleStream).f1111a : new C2321C(doubleStream);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ C2217B average() {
        return AbstractC2104a.m520F(this.f1102a.average());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC2331E mo891b() {
        return m906f(this.f1102a.takeWhile(null));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.f1102a.boxed());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2331E mo892c() {
        return m906f(this.f1102a.filter(null));
    }

    @Override // p022j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1102a.close();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f1102a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ long count() {
        return this.f1102a.count();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ InterfaceC2331E mo893d() {
        return m906f(this.f1102a.dropWhile(null));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E distinct() {
        return m906f(this.f1102a.distinct());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2331E mo894e() {
        return m906f(this.f1102a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.f1102a;
        if (obj instanceof C2321C) {
            obj = ((C2321C) obj).f1102a;
        }
        return doubleStream.equals(obj);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ C2217B findAny() {
        return AbstractC2104a.m520F(this.f1102a.findAny());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ C2217B findFirst() {
        return AbstractC2104a.m520F(this.f1102a.findFirst());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f1102a.forEach(doubleConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f1102a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1102a.hashCode();
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1102a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2222G iterator() {
        ?? it = this.f1102a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof C2221F ? ((C2221F) it).f902a : new C2220E(it);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ Iterator iterator() {
        return this.f1102a.iterator();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: l */
    public final /* synthetic */ boolean mo895l() {
        return this.f1102a.anyMatch(null);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E limit(long j) {
        return m906f(this.f1102a.limit(j));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return Stream.VivifiedWrapper.convert(this.f1102a.mapToObj(doubleFunction));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ C2217B max() {
        return AbstractC2104a.m520F(this.f1102a.max());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ C2217B min() {
        return AbstractC2104a.m520F(this.f1102a.min());
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2470f.m1005f(this.f1102a.onClose(runnable));
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ BaseStream parallel() {
        return C2470f.m1005f(this.f1102a.parallel());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E parallel() {
        return m906f(this.f1102a.parallel());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E peek(DoubleConsumer doubleConsumer) {
        return m906f(this.f1102a.peek(doubleConsumer));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: q */
    public final /* synthetic */ boolean mo897q() {
        return this.f1102a.allMatch(null);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: r */
    public final /* synthetic */ LongStream mo898r() {
        return C2512m0.m1016f(this.f1102a.mapToLong(null));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f1102a.reduce(d, doubleBinaryOperator);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ C2217B reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC2104a.m520F(this.f1102a.reduce(doubleBinaryOperator));
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ BaseStream sequential() {
        return C2470f.m1005f(this.f1102a.sequential());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E sequential() {
        return m906f(this.f1102a.sequential());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E skip(long j) {
        return m906f(this.f1102a.skip(j));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2331E sorted() {
        return m906f(this.f1102a.sorted());
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return C2272d0.m865a(this.f1102a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // p022j$.util.stream.InterfaceC2331E, p022j$.util.stream.BaseStream
    public final /* synthetic */ InterfaceC2235U spliterator() {
        return C2233S.m815a(this.f1102a.spliterator());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ double sum() {
        return this.f1102a.sum();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ double[] toArray() {
        return this.f1102a.toArray();
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2470f.m1005f(this.f1102a.unordered());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ IntStream mo899w() {
        return IntStream.VivifiedWrapper.convert(this.f1102a.mapToInt(null));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: y */
    public final /* synthetic */ boolean mo901y() {
        return this.f1102a.noneMatch(null);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2585w summaryStatistics() {
        this.f1102a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: a */
    public final InterfaceC2331E mo890a(C2184s c2184s) {
        DoubleStream doubleStream = this.f1102a;
        C2184s c2184s2 = new C2184s(5);
        c2184s2.f821b = c2184s;
        return m906f(doubleStream.flatMap(c2184s2));
    }
}
