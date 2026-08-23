package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.V */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2097V implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfInt f689a;

    public /* synthetic */ C2097V(Spliterator.OfInt ofInt) {
        this.f689a = ofInt;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m692a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2098W ? ((C2098W) ofInt).f690a : new C2097V(ofInt);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f689a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfInt ofInt = this.f689a;
        if (obj instanceof C2097V) {
            obj = ((C2097V) obj).f689a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f689a.estimateSize();
    }

    @Override // j$.util.c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f689a.forEachRemaining(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f689a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.Spliterator.OfInt
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f689a.forEachRemaining(intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f689a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f689a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f689a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f689a.hashCode();
    }

    @Override // j$.util.c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f689a.tryAdvance(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f689a.tryAdvance((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.Spliterator.OfInt
    public final /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f689a.tryAdvance(intConsumer);
    }

    @Override // j$.util.Spliterator.OfInt, j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ Spliterator.OfInt trySplit() {
        return m692a(this.f689a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return d0.m739a(this.f689a.trySplit());
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ c0 trySplit() {
        return a0.m697a(this.f689a.trySplit());
    }
}
