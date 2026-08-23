package p022j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2272d0 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Spliterator f1014a;

    public /* synthetic */ C2272d0(Spliterator spliterator) {
        this.f1014a = spliterator;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator m865a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof Spliterator.Wrapper ? Spliterator.this : spliterator instanceof Spliterator.OfPrimitive ? C2242a0.m823a((Spliterator.OfPrimitive) spliterator) : new C2272d0(spliterator);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f1014a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.Spliterator spliterator = this.f1014a;
        if (obj instanceof C2272d0) {
            obj = ((C2272d0) obj).f1014a;
        }
        return spliterator.equals(obj);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f1014a.estimateSize();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1014a.forEachRemaining(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f1014a.getComparator();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f1014a.getExactSizeIfKnown();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1014a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1014a.hashCode();
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1014a.tryAdvance(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return m865a(this.f1014a.trySplit());
    }
}
