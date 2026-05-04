package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.u3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6263u3 extends AbstractC6271w3 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }

    @Override // j$.util.stream.AbstractC6279y3
    /* JADX INFO: renamed from: a */
    public final Spliterator mo879a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C6263u3((Spliterator.OfInt) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.AbstractC6271w3
    /* JADX INFO: renamed from: b */
    public final Object mo880b() {
        return new D0(1);
    }
}
