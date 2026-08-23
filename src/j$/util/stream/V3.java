package j$.util.stream;

import java.util.function.LongPredicate;

/* JADX INFO: loaded from: classes2.dex */
public final class V3 extends AbstractC6222k2 {

    /* JADX INFO: renamed from: b */
    public final boolean f1038b;

    public V3(K2 k2, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1038b = true;
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1173a.mo744m(-1L);
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.f1038b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return !this.f1038b || this.f1173a.mo745p();
    }
}
