package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.V */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2236V implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfInt f924a;

    public /* synthetic */ C2236V(Spliterator.OfInt ofInt) {
        this.f924a = ofInt;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfInt m818a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2237W ? ((C2237W) ofInt).f925a : new C2236V(ofInt);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f924a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfInt ofInt = this.f924a;
        if (obj instanceof C2236V) {
            obj = ((C2236V) obj).f924a;
        }
        return ofInt.equals(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f924a.estimateSize();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f924a.forEachRemaining(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f924a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.Spliterator.OfInt
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f924a.forEachRemaining(intConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f924a.getComparator();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f924a.getExactSizeIfKnown();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f924a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f924a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f924a.tryAdvance(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f924a.tryAdvance((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.Spliterator.OfInt
    public final /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f924a.tryAdvance(intConsumer);
    }

    @Override // j$.util.Spliterator.OfInt, p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ Spliterator.OfInt trySplit() {
        return m818a(this.f924a.trySplit());
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return C2272d0.m865a(this.f924a.trySplit());
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ InterfaceC2246c0 trySplit() {
        return C2242a0.m823a(this.f924a.trySplit());
    }
}
