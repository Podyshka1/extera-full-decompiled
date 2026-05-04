package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.T */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2095T implements Spliterator.OfDouble {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2096U f688a;

    public /* synthetic */ C2095T(InterfaceC2096U interfaceC2096U) {
        this.f688a = interfaceC2096U;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfDouble m691a(InterfaceC2096U interfaceC2096U) {
        if (interfaceC2096U == null) {
            return null;
        }
        return interfaceC2096U instanceof C2094S ? ((C2094S) interfaceC2096U).f682a : new C2095T(interfaceC2096U);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f688a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2096U interfaceC2096U = this.f688a;
        if (obj instanceof C2095T) {
            obj = ((C2095T) obj).f688a;
        }
        return interfaceC2096U.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f688a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f688a.forEachRemaining((Object) doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f688a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator.OfDouble
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f688a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f688a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f688a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f688a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f688a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f688a.tryAdvance((Object) doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f688a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfDouble
    /* JADX INFO: renamed from: tryAdvance, reason: avoid collision after fix types in other method */
    public final /* synthetic */ boolean tryAdvance2(DoubleConsumer doubleConsumer) {
        return this.f688a.tryAdvance(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfDouble trySplit() {
        return m691a(this.f688a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return b0.m698a(this.f688a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f688a.trySplit());
    }
}
