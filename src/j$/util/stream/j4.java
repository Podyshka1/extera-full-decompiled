package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j4 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1166a;

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f1167b;

    /* JADX INFO: renamed from: c */
    public boolean f1168c;

    /* JADX INFO: renamed from: d */
    public int f1169d;

    /* JADX INFO: renamed from: b */
    public abstract Spliterator mo851b(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        while (tryAdvance(consumer)) {
        }
    }

    public j4(Spliterator spliterator) {
        this.f1168c = true;
        this.f1166a = spliterator;
        this.f1167b = new AtomicBoolean();
    }

    public j4(Spliterator spliterator, j4 j4Var) {
        this.f1168c = true;
        this.f1166a = spliterator;
        j4Var.getClass();
        this.f1167b = j4Var.f1167b;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f1166a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f1166a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f1166a.getComparator();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f1166a.trySplit();
        if (spliteratorTrySplit != null) {
            return mo851b(spliteratorTrySplit);
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m860a() {
        return (this.f1169d == 0 && this.f1167b.get()) ? false : true;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2101Z trySplit() {
        return (InterfaceC2101Z) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ InterfaceC2096U trySplit() {
        return (InterfaceC2096U) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.c0 trySplit() {
        return (j$.util.c0) trySplit();
    }
}
