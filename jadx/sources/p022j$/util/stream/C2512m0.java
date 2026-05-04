package p022j$.util.stream;

import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.stream.LongStream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.C2217B;
import p022j$.util.C2218C;
import p022j$.util.C2228M;
import p022j$.util.C2229N;
import p022j$.util.C2238X;
import p022j$.util.C2272d0;
import p022j$.util.C2588z;
import p022j$.util.InterfaceC2230O;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.stream.m0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2512m0 implements LongStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ LongStream f1428a;

    public /* synthetic */ C2512m0(LongStream longStream) {
        this.f1428a = longStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ LongStream m1016f(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C2517n0 ? ((C2517n0) longStream).f1437a : new C2512m0(longStream);
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ InterfaceC2331E asDoubleStream() {
        return C2321C.m906f(this.f1428a.asDoubleStream());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ C2217B average() {
        return AbstractC2104a.m520F(this.f1428a.average());
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ LongStream mo945b() {
        return m1016f(this.f1428a.takeWhile(null));
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.f1428a.boxed());
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LongStream mo946c() {
        return m1016f(this.f1428a.filter(null));
    }

    @Override // p022j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1428a.close();
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1428a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f1428a.count();
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ LongStream mo947d() {
        return m1016f(this.f1428a.dropWhile(null));
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return m1016f(this.f1428a.distinct());
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ LongStream mo948e() {
        return m1016f(this.f1428a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        LongStream longStream = this.f1428a;
        if (obj instanceof C2512m0) {
            obj = ((C2512m0) obj).f1428a;
        }
        return longStream.equals(obj);
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ C2218C findAny() {
        return AbstractC2104a.m522H(this.f1428a.findAny());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ C2218C findFirst() {
        return AbstractC2104a.m522H(this.f1428a.findFirst());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1428a.forEach(longConsumer);
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1428a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1428a.hashCode();
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1428a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // p022j$.util.stream.LongStream, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ InterfaceC2230O iterator() {
        ?? it = this.f1428a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof C2229N ? ((C2229N) it).f910a : new C2228M(it);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ Iterator iterator() {
        return this.f1428a.iterator();
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: j */
    public final /* synthetic */ InterfaceC2331E mo949j() {
        return C2321C.m906f(this.f1428a.mapToDouble(null));
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return m1016f(this.f1428a.limit(j));
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ boolean mo950m() {
        return this.f1428a.allMatch(null);
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return Stream.VivifiedWrapper.convert(this.f1428a.mapToObj(longFunction));
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ C2218C max() {
        return AbstractC2104a.m522H(this.f1428a.max());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ C2218C min() {
        return AbstractC2104a.m522H(this.f1428a.min());
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2470f.m1005f(this.f1428a.onClose(runnable));
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo951p() {
        return this.f1428a.noneMatch(null);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ BaseStream parallel() {
        return C2470f.m1005f(this.f1428a.parallel());
    }

    @Override // p022j$.util.stream.LongStream, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ LongStream parallel() {
        return m1016f(this.f1428a.parallel());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return m1016f(this.f1428a.peek(longConsumer));
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1428a.reduce(j, longBinaryOperator);
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ C2218C reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC2104a.m522H(this.f1428a.reduce(longBinaryOperator));
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ BaseStream sequential() {
        return C2470f.m1005f(this.f1428a.sequential());
    }

    @Override // p022j$.util.stream.LongStream, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final /* synthetic */ LongStream sequential() {
        return m1016f(this.f1428a.sequential());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return m1016f(this.f1428a.skip(j));
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return m1016f(this.f1428a.sorted());
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return C2272d0.m865a(this.f1428a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // p022j$.util.stream.LongStream, p022j$.util.stream.BaseStream
    public final /* synthetic */ InterfaceC2240Z spliterator() {
        return C2238X.m820a(this.f1428a.spliterator());
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f1428a.sum();
    }

    @Override // p022j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f1428a.toArray();
    }

    @Override // p022j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2470f.m1005f(this.f1428a.unordered());
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ boolean mo952v() {
        return this.f1428a.anyMatch(null);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: x */
    public final /* synthetic */ IntStream mo953x() {
        return IntStream.VivifiedWrapper.convert(this.f1428a.mapToInt(null));
    }

    @Override // p022j$.util.stream.LongStream
    public final C2588z summaryStatistics() {
        this.f1428a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: a */
    public final LongStream mo944a(C2184s c2184s) {
        LongStream longStream = this.f1428a;
        C2184s c2184s2 = new C2184s(7);
        c2184s2.f821b = c2184s;
        return m1016f(longStream.flatMap(c2184s2));
    }
}
