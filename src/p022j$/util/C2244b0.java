package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.b0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2244b0 implements Spliterator.OfPrimitive {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2246c0 f932a;

    public /* synthetic */ C2244b0(InterfaceC2246c0 interfaceC2246c0) {
        this.f932a = interfaceC2246c0;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m824a(InterfaceC2246c0 interfaceC2246c0) {
        if (interfaceC2246c0 == null) {
            return null;
        }
        return interfaceC2246c0 instanceof C2242a0 ? ((C2242a0) interfaceC2246c0).f931a : interfaceC2246c0 instanceof InterfaceC2235U ? C2234T.m817a((InterfaceC2235U) interfaceC2246c0) : interfaceC2246c0 instanceof Spliterator.OfInt ? C2237W.m819a((Spliterator.OfInt) interfaceC2246c0) : interfaceC2246c0 instanceof InterfaceC2240Z ? C2239Y.m821a((InterfaceC2240Z) interfaceC2246c0) : new C2244b0(interfaceC2246c0);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f932a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2246c0 interfaceC2246c0 = this.f932a;
        if (obj instanceof C2244b0) {
            obj = ((C2244b0) obj).f932a;
        }
        return interfaceC2246c0.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f932a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f932a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f932a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f932a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f932a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f932a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f932a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f932a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f932a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m824a(this.f932a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f932a.trySplit());
    }
}
