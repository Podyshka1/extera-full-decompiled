package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.W */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2098W implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfInt f690a;

    public /* synthetic */ C2098W(Spliterator.OfInt ofInt) {
        this.f690a = ofInt;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m693a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2097V ? ((C2097V) ofInt).f689a : new C2098W(ofInt);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f690a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfInt ofInt = this.f690a;
        if (obj instanceof C2098W) {
            obj = ((C2098W) obj).f690a;
        }
        return ofInt.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f690a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f690a.forEachRemaining((Object) intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f690a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator.OfInt
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f690a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f690a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f690a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f690a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f690a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f690a.tryAdvance((Object) intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f690a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfInt
    /* JADX INFO: renamed from: tryAdvance, reason: avoid collision after fix types in other method */
    public final /* synthetic */ boolean tryAdvance2(IntConsumer intConsumer) {
        return this.f690a.tryAdvance(intConsumer);
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfInt trySplit() {
        return m693a(this.f690a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return b0.m698a(this.f690a.trySplit());
    }

    @Override // java.util.Spliterator.OfInt, java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f690a.trySplit());
    }
}
