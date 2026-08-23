package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6254s2 extends AbstractC6218j2 {

    /* JADX INFO: renamed from: b */
    public long f1233b;

    /* JADX INFO: renamed from: c */
    public long f1234c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C6258t2 f1235d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6254s2(C6258t2 c6258t2, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1235d = c6258t2;
        this.f1233b = c6258t2.f1244s;
        long j = c6258t2.f1245t;
        this.f1234c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1164a.mo744m(A2.m748a(j, this.f1235d.f1244s, this.f1234c));
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        long j = this.f1233b;
        if (j == 0) {
            long j2 = this.f1234c;
            if (j2 > 0) {
                this.f1234c = j2 - 1;
                this.f1164a.accept(i);
                return;
            }
            return;
        }
        this.f1233b = j - 1;
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return this.f1234c == 0 || this.f1164a.mo745p();
    }
}
