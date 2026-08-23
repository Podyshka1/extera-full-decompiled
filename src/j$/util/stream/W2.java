package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.DesugarArrays;
import j$.util.InterfaceC2101Z;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class W2 extends Y2 implements InterfaceC2101Z {

    /* JADX INFO: renamed from: g */
    public final /* synthetic */ X2 f1041g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: a */
    public final void mo819a(int i, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i]);
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: b */
    public final j$.util.c0 mo820b(Object obj, int i, int i2) {
        return DesugarArrays.m687b((long[]) obj, i, i2 + i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W2(X2 x2, int i, int i2, int i3, int i4) {
        super(x2, i, i2, i3, i4);
        this.f1041g = x2;
    }

    @Override // j$.util.stream.Y2
    /* JADX INFO: renamed from: c */
    public final j$.util.c0 mo821c(int i, int i2, int i3, int i4) {
        return new W2(this.f1041g, i, i2, i3, i4);
    }
}
