package j$.util;

import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a0 implements c0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfPrimitive f696a;

    public /* synthetic */ a0(Spliterator.OfPrimitive ofPrimitive) {
        this.f696a = ofPrimitive;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ c0 m697a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof b0 ? ((b0) ofPrimitive).f697a : ofPrimitive instanceof Spliterator.OfDouble ? C2094S.m689a((Spliterator.OfDouble) ofPrimitive) : ofPrimitive instanceof Spliterator.OfInt ? C2097V.m692a((Spliterator.OfInt) ofPrimitive) : ofPrimitive instanceof Spliterator.OfLong ? C2099X.m694a((Spliterator.OfLong) ofPrimitive) : new a0(ofPrimitive);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f696a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfPrimitive ofPrimitive = this.f696a;
        if (obj instanceof a0) {
            obj = ((a0) obj).f696a;
        }
        return ofPrimitive.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f696a.estimateSize();
    }

    @Override // j$.util.c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f696a.forEachRemaining(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f696a.forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f696a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f696a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f696a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f696a.hashCode();
    }

    @Override // j$.util.c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f696a.tryAdvance(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f696a.tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return d0.m739a(this.f696a.trySplit());
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final /* synthetic */ c0 trySplit() {
        return m697a(this.f696a.trySplit());
    }
}
