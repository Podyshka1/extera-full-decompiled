package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.S */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2233S implements InterfaceC2235U {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfDouble f917a;

    public /* synthetic */ C2233S(Spliterator.OfDouble ofDouble) {
        this.f917a = ofDouble;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ InterfaceC2235U m815a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2234T ? ((C2234T) ofDouble).f923a : new C2233S(ofDouble);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f917a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfDouble ofDouble = this.f917a;
        if (obj instanceof C2233S) {
            obj = ((C2233S) obj).f917a;
        }
        return ofDouble.equals(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f917a.estimateSize();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f917a.forEachRemaining(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f917a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // p022j$.util.InterfaceC2235U
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f917a.forEachRemaining(doubleConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f917a.getComparator();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f917a.getExactSizeIfKnown();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f917a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f917a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f917a.tryAdvance(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f917a.tryAdvance((Consumer<? super Double>) consumer);
    }

    @Override // p022j$.util.InterfaceC2235U
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f917a.tryAdvance(doubleConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return C2272d0.m865a(this.f917a.trySplit());
    }

    @Override // p022j$.util.InterfaceC2235U, p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ InterfaceC2235U trySplit() {
        return m815a(this.f917a.trySplit());
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ InterfaceC2246c0 trySplit() {
        return C2242a0.m823a(this.f917a.trySplit());
    }
}
