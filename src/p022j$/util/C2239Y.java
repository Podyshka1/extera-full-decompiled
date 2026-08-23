package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.Y */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2239Y implements Spliterator.OfLong {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2240Z f927a;

    public /* synthetic */ C2239Y(InterfaceC2240Z interfaceC2240Z) {
        this.f927a = interfaceC2240Z;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfLong m821a(InterfaceC2240Z interfaceC2240Z) {
        if (interfaceC2240Z == null) {
            return null;
        }
        return interfaceC2240Z instanceof C2238X ? ((C2238X) interfaceC2240Z).f926a : new C2239Y(interfaceC2240Z);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f927a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2240Z interfaceC2240Z = this.f927a;
        if (obj instanceof C2239Y) {
            obj = ((C2239Y) obj).f927a;
        }
        return interfaceC2240Z.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f927a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f927a.forEachRemaining((Object) longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f927a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator.OfLong
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f927a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f927a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f927a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f927a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f927a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f927a.tryAdvance((Object) longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f927a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfLong
    /* JADX INFO: renamed from: tryAdvance, reason: avoid collision after fix types in other method */
    public final /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f927a.tryAdvance(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfLong trySplit() {
        return m821a(this.f927a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return C2244b0.m824a(this.f927a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f927a.trySplit());
    }
}
