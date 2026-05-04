package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6246q2 extends AbstractC6226l2 {

    /* JADX INFO: renamed from: b */
    public long f1218b;

    /* JADX INFO: renamed from: c */
    public long f1219c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C6250r2 f1220d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6246q2(C6250r2 c6250r2, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1220d = c6250r2;
        this.f1218b = c6250r2.f1226s;
        long j = c6250r2.f1227t;
        this.f1219c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1187a.mo744m(A2.m748a(j, this.f1220d.f1226s, this.f1219c));
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        long j = this.f1218b;
        if (j == 0) {
            long j2 = this.f1219c;
            if (j2 > 0) {
                this.f1219c = j2 - 1;
                this.f1187a.accept(obj);
                return;
            }
            return;
        }
        this.f1218b = j - 1;
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return this.f1219c == 0 || this.f1187a.mo745p();
    }
}
