package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.Y */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2100Y implements Spliterator.OfLong {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2101Z f692a;

    public /* synthetic */ C2100Y(InterfaceC2101Z interfaceC2101Z) {
        this.f692a = interfaceC2101Z;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfLong m695a(InterfaceC2101Z interfaceC2101Z) {
        if (interfaceC2101Z == null) {
            return null;
        }
        return interfaceC2101Z instanceof C2099X ? ((C2099X) interfaceC2101Z).f691a : new C2100Y(interfaceC2101Z);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f692a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2101Z interfaceC2101Z = this.f692a;
        if (obj instanceof C2100Y) {
            obj = ((C2100Y) obj).f692a;
        }
        return interfaceC2101Z.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f692a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f692a.forEachRemaining((Object) longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f692a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator.OfLong
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f692a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f692a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f692a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f692a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f692a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f692a.tryAdvance((Object) longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f692a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfLong
    /* JADX INFO: renamed from: tryAdvance, reason: avoid collision after fix types in other method */
    public final /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f692a.tryAdvance(longConsumer);
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfLong trySplit() {
        return m695a(this.f692a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return b0.m698a(this.f692a.trySplit());
    }

    @Override // java.util.Spliterator.OfLong, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f692a.trySplit());
    }
}
