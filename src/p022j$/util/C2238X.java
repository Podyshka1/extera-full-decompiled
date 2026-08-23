package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.X */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2238X implements InterfaceC2240Z {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfLong f926a;

    public /* synthetic */ C2238X(Spliterator.OfLong ofLong) {
        this.f926a = ofLong;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ InterfaceC2240Z m820a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C2239Y ? ((C2239Y) ofLong).f927a : new C2238X(ofLong);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f926a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfLong ofLong = this.f926a;
        if (obj instanceof C2238X) {
            obj = ((C2238X) obj).f926a;
        }
        return ofLong.equals(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f926a.estimateSize();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f926a.forEachRemaining(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f926a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // p022j$.util.InterfaceC2240Z
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f926a.forEachRemaining(longConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f926a.getComparator();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f926a.getExactSizeIfKnown();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f926a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f926a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f926a.tryAdvance(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f926a.tryAdvance((Consumer<? super Long>) consumer);
    }

    @Override // p022j$.util.InterfaceC2240Z
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f926a.tryAdvance(longConsumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return C2272d0.m865a(this.f926a.trySplit());
    }

    @Override // p022j$.util.InterfaceC2240Z, p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ InterfaceC2240Z trySplit() {
        return m820a(this.f926a.trySplit());
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ InterfaceC2246c0 trySplit() {
        return C2242a0.m823a(this.f926a.trySplit());
    }
}
