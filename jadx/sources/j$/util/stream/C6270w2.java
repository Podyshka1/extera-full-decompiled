package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.w2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6270w2 extends AbstractC6214i2 {

    /* JADX INFO: renamed from: b */
    public long f1262b;

    /* JADX INFO: renamed from: c */
    public long f1263c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C6274x2 f1264d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6270w2(C6274x2 c6274x2, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1264d = c6274x2;
        this.f1262b = c6274x2.f1271s;
        long j = c6274x2.f1272t;
        this.f1263c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1158a.mo744m(A2.m748a(j, this.f1264d.f1271s, this.f1263c));
    }

    @Override // j$.util.stream.InterfaceC6230m2, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        long j = this.f1262b;
        if (j == 0) {
            long j2 = this.f1263c;
            if (j2 > 0) {
                this.f1263c = j2 - 1;
                this.f1158a.accept(d);
                return;
            }
            return;
        }
        this.f1262b = j - 1;
    }

    @Override // j$.util.stream.AbstractC6214i2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return this.f1263c == 0 || this.f1158a.mo745p();
    }
}
