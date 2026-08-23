package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.a0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2242a0 implements InterfaceC2246c0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator.OfPrimitive f931a;

    public /* synthetic */ C2242a0(Spliterator.OfPrimitive ofPrimitive) {
        this.f931a = ofPrimitive;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ InterfaceC2246c0 m823a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C2244b0 ? ((C2244b0) ofPrimitive).f932a : ofPrimitive instanceof Spliterator.OfDouble ? C2233S.m815a((Spliterator.OfDouble) ofPrimitive) : ofPrimitive instanceof Spliterator.OfInt ? C2236V.m818a((Spliterator.OfInt) ofPrimitive) : ofPrimitive instanceof Spliterator.OfLong ? C2238X.m820a((Spliterator.OfLong) ofPrimitive) : new C2242a0(ofPrimitive);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f931a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfPrimitive ofPrimitive = this.f931a;
        if (obj instanceof C2242a0) {
            obj = ((C2242a0) obj).f931a;
        }
        return ofPrimitive.equals(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f931a.estimateSize();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f931a.forEachRemaining(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f931a.forEachRemaining(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f931a.getComparator();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f931a.getExactSizeIfKnown();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f931a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f931a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f931a.tryAdvance(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f931a.tryAdvance(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return C2272d0.m865a(this.f931a.trySplit());
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* synthetic */ InterfaceC2246c0 trySplit() {
        return m823a(this.f931a.trySplit());
    }
}
