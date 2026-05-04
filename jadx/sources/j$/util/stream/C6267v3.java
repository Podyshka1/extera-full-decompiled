package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.v3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6267v3 extends AbstractC6271w3 implements InterfaceC2101Z {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.util.stream.AbstractC6279y3
    /* JADX INFO: renamed from: a */
    public final Spliterator mo879a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C6267v3((InterfaceC2101Z) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC6271w3
    /* JADX INFO: renamed from: b */
    public final Object mo880b() {
        return new F0(1);
    }
}
