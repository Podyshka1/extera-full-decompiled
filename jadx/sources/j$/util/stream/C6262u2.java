package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.u2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6262u2 extends AbstractC6222k2 {

    /* JADX INFO: renamed from: b */
    public long f1249b;

    /* JADX INFO: renamed from: c */
    public long f1250c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C6266v2 f1251d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6262u2(C6266v2 c6266v2, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1251d = c6266v2;
        this.f1249b = c6266v2.f1256s;
        long j = c6266v2.f1257t;
        this.f1250c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1173a.mo744m(A2.m748a(j, this.f1251d.f1256s, this.f1250c));
    }

    @Override // j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        long j2 = this.f1249b;
        if (j2 == 0) {
            long j3 = this.f1250c;
            if (j3 > 0) {
                this.f1250c = j3 - 1;
                this.f1173a.accept(j);
                return;
            }
            return;
        }
        this.f1249b = j2 - 1;
    }

    @Override // j$.util.stream.AbstractC6222k2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return this.f1250c == 0 || this.f1173a.mo745p();
    }
}
