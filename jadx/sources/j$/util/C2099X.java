package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.X */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2099X implements InterfaceC2101Z {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfLong f691a;

    public /* synthetic */ C2099X(Spliterator.OfLong ofLong) {
        this.f691a = ofLong;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ InterfaceC2101Z m694a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2100Y ? ((C2100Y) ofLong).f692a : new C2099X(ofLong);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f691a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfLong ofLong = this.f691a;
        if (obj instanceof C2099X) {
            obj = ((C2099X) obj).f691a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f691a.estimateSize();
    }

    @Override // j$.util.c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f691a.forEachRemaining(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f691a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.InterfaceC2101Z
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f691a.forEachRemaining(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f691a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f691a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f691a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f691a.hashCode();
    }

    @Override // j$.util.c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f691a.tryAdvance(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f691a.tryAdvance((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.InterfaceC2101Z
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f691a.tryAdvance(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return d0.m739a(this.f691a.trySplit());
    }

    @Override // j$.util.InterfaceC2101Z, j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ InterfaceC2101Z trySplit() {
        return m694a(this.f691a.trySplit());
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ c0 trySplit() {
        return a0.m697a(this.f691a.trySplit());
    }
}
