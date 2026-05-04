package p022j$.util.stream;

import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.j4 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2499j4 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1402a;

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f1403b;

    /* JADX INFO: renamed from: c */
    public boolean f1404c;

    /* JADX INFO: renamed from: d */
    public int f1405d;

    /* JADX INFO: renamed from: b */
    public abstract Spliterator mo1002b(Spliterator spliterator);

    @Override // p022j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    @Override // p022j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        while (tryAdvance(consumer)) {
        }
    }

    public AbstractC2499j4(Spliterator spliterator) {
        this.f1404c = true;
        this.f1402a = spliterator;
        this.f1403b = new AtomicBoolean();
    }

    public AbstractC2499j4(Spliterator spliterator, AbstractC2499j4 abstractC2499j4) {
        this.f1404c = true;
        this.f1402a = spliterator;
        abstractC2499j4.getClass();
        this.f1403b = abstractC2499j4.f1403b;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1402a.estimateSize();
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1402a.characteristics() & (-16449);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f1402a.getComparator();
    }

    @Override // p022j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f1402a.trySplit();
        if (spliteratorTrySplit != null) {
            return mo1002b(spliteratorTrySplit);
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1011a() {
        return (this.f1405d == 0 && this.f1403b.get()) ? false : true;
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2240Z trySplit() {
        return (InterfaceC2240Z) trySplit();
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2235U trySplit() {
        return (InterfaceC2235U) trySplit();
    }

    @Override // p022j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2246c0 trySplit() {
        return (InterfaceC2246c0) trySplit();
    }
}
