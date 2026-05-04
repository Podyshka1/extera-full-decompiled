package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.C2078B;
import j$.util.C2079C;
import j$.util.C2089M;
import j$.util.C2090N;
import j$.util.C2099X;
import j$.util.C2210z;
import j$.util.InterfaceC2091O;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6228m0 implements LongStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.util.stream.LongStream f1192a;

    public /* synthetic */ C6228m0(java.util.stream.LongStream longStream) {
        this.f1192a = longStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ LongStream m864f(java.util.stream.LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C6232n0 ? ((C6232n0) longStream).f1201a : new C6228m0(longStream);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ InterfaceC2157E asDoubleStream() {
        return C2155C.m770f(this.f1192a.asDoubleStream());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2078B average() {
        return AbstractC1965a.m400F(this.f1192a.average());
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ LongStream mo805b() {
        return m864f(this.f1192a.takeWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return Stream.VivifiedWrapper.convert(this.f1192a.boxed());
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LongStream mo806c() {
        return m864f(this.f1192a.filter(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1192a.close();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1192a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f1192a.count();
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ LongStream mo807d() {
        return m864f(this.f1192a.dropWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return m864f(this.f1192a.distinct());
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ LongStream mo808e() {
        return m864f(this.f1192a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.LongStream longStream = this.f1192a;
        if (obj instanceof C6228m0) {
            obj = ((C6228m0) obj).f1192a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2079C findAny() {
        return AbstractC1965a.m402H(this.f1192a.findAny());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2079C findFirst() {
        return AbstractC1965a.m402H(this.f1192a.findFirst());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1192a.forEach(longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1192a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1192a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1192a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ InterfaceC2091O iterator() {
        ?? it = this.f1192a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof C2090N ? ((C2090N) it).f675a : new C2089M(it);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ Iterator iterator() {
        return this.f1192a.iterator();
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: j */
    public final /* synthetic */ InterfaceC2157E mo809j() {
        return C2155C.m770f(this.f1192a.mapToDouble(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return m864f(this.f1192a.limit(j));
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: m */
    public final /* synthetic */ boolean mo810m() {
        return this.f1192a.allMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return Stream.VivifiedWrapper.convert(this.f1192a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2079C max() {
        return AbstractC1965a.m402H(this.f1192a.max());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2079C min() {
        return AbstractC1965a.m402H(this.f1192a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2183f.m854f(this.f1192a.onClose(runnable));
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo811p() {
        return this.f1192a.noneMatch(null);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ BaseStream parallel() {
        return C2183f.m854f(this.f1192a.parallel());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ LongStream parallel() {
        return m864f(this.f1192a.parallel());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return m864f(this.f1192a.peek(longConsumer));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1192a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ C2079C reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC1965a.m402H(this.f1192a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ BaseStream sequential() {
        return C2183f.m854f(this.f1192a.sequential());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final /* synthetic */ LongStream sequential() {
        return m864f(this.f1192a.sequential());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return m864f(this.f1192a.skip(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return m864f(this.f1192a.sorted());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.d0.m739a(this.f1192a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ InterfaceC2101Z spliterator() {
        return C2099X.m694a(this.f1192a.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f1192a.sum();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f1192a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2183f.m854f(this.f1192a.unordered());
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ boolean mo812v() {
        return this.f1192a.anyMatch(null);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: x */
    public final /* synthetic */ IntStream mo813x() {
        return IntStream.VivifiedWrapper.convert(this.f1192a.mapToInt(null));
    }

    @Override // j$.util.stream.LongStream
    public final C2210z summaryStatistics() {
        this.f1192a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: a */
    public final LongStream mo804a(C2045s c2045s) {
        java.util.stream.LongStream longStream = this.f1192a;
        C2045s c2045s2 = new C2045s(7);
        c2045s2.f586b = c2045s;
        return m864f(longStream.flatMap(c2045s2));
    }
}
