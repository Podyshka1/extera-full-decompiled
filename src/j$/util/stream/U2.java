package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class U2 extends Y2 implements Spliterator.OfInt {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ V2 f1034g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: a */
    public final void mo819a(int i, Object obj, Object obj2) {
        ((IntConsumer) obj2).accept(((int[]) obj)[i]);
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: b */
    public final j$.util.c0 mo820b(Object obj, int i, int i2) {
        return Spliterators.spliterator((int[]) obj, i, i2 + i, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U2(V2 v2, int i, int i2, int i3, int i4) {
        super(v2, i, i2, i3, i4);
        this.f1034g = v2;
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: c */
    public final j$.util.c0 mo821c(int i, int i2, int i3, int i4) {
        return new U2(this.f1034g, i, i2, i3, i4);
    }
}
