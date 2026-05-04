package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b0 implements Spliterator.OfPrimitive {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ c0 f697a;

    public /* synthetic */ b0(c0 c0Var) {
        this.f697a = c0Var;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ Spliterator.OfPrimitive m698a(c0 c0Var) {
        if (c0Var == null) {
            return null;
        }
        return c0Var instanceof a0 ? ((a0) c0Var).f696a : c0Var instanceof InterfaceC2096U ? C2095T.m691a((InterfaceC2096U) c0Var) : c0Var instanceof Spliterator.OfInt ? C2098W.m693a((Spliterator.OfInt) c0Var) : c0Var instanceof InterfaceC2101Z ? C2100Y.m695a((InterfaceC2101Z) c0Var) : new b0(c0Var);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f697a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        c0 c0Var = this.f697a;
        if (obj instanceof b0) {
            obj = ((b0) obj).f697a;
        }
        return c0Var.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f697a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f697a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f697a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f697a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f697a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f697a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f697a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f697a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f697a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return m698a(this.f697a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f697a.trySplit());
    }
}
