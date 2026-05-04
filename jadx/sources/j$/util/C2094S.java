package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.S */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2094S implements InterfaceC2096U {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfDouble f682a;

    public /* synthetic */ C2094S(Spliterator.OfDouble ofDouble) {
        this.f682a = ofDouble;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ InterfaceC2096U m689a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2095T ? ((C2095T) ofDouble).f688a : new C2094S(ofDouble);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f682a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfDouble ofDouble = this.f682a;
        if (obj instanceof C2094S) {
            obj = ((C2094S) obj).f682a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f682a.estimateSize();
    }

    @Override // j$.util.c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f682a.forEachRemaining(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f682a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.InterfaceC2096U
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f682a.forEachRemaining(doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f682a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f682a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f682a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f682a.hashCode();
    }

    @Override // j$.util.c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f682a.tryAdvance(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f682a.tryAdvance((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.InterfaceC2096U
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f682a.tryAdvance(doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return d0.m739a(this.f682a.trySplit());
    }

    @Override // j$.util.InterfaceC2096U, j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ InterfaceC2096U trySplit() {
        return m689a(this.f682a.trySplit());
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ c0 trySplit() {
        return a0.m697a(this.f682a.trySplit());
    }
}
