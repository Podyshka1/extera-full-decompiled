package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* JADX INFO: renamed from: j$.util.stream.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6252s0 extends AbstractC6260u0 implements InterfaceC6238o2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo747v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        AbstractC6277y1.m886E(this, l);
    }

    @Override // j$.util.stream.AbstractC6260u0, j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.f1247a) {
            return;
        }
        LongPredicate longPredicate = null;
        longPredicate.test(j);
        throw null;
    }
}
