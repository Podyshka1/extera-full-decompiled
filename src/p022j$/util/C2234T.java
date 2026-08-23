package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.T */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2234T implements Spliterator.OfDouble {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2235U f923a;

    public /* synthetic */ C2234T(InterfaceC2235U interfaceC2235U) {
        this.f923a = interfaceC2235U;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfDouble m817a(InterfaceC2235U interfaceC2235U) {
        if (interfaceC2235U == null) {
            return null;
        }
        return interfaceC2235U instanceof C2233S ? ((C2233S) interfaceC2235U).f917a : new C2234T(interfaceC2235U);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f923a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2235U interfaceC2235U = this.f923a;
        if (obj instanceof C2234T) {
            obj = ((C2234T) obj).f923a;
        }
        return interfaceC2235U.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f923a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f923a.forEachRemaining((Object) doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f923a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator.OfDouble
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f923a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f923a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f923a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f923a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f923a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f923a.tryAdvance((Object) doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f923a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfDouble
    /* JADX INFO: renamed from: tryAdvance, reason: avoid collision after fix types in other method */
    public final /* synthetic */ boolean tryAdvance2(DoubleConsumer doubleConsumer) {
        return this.f923a.tryAdvance(doubleConsumer);
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfDouble trySplit() {
        return m817a(this.f923a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C2244b0.m824a(this.f923a.trySplit());
    }

    @Override // java.util.Spliterator.OfDouble, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f923a.trySplit());
    }
}
