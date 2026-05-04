package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.T3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2409T3 extends AbstractC2497j2 implements InterfaceC2445a4 {

    /* JADX INFO: renamed from: b */
    public long f1258b;

    /* JADX INFO: renamed from: c */
    public boolean f1259c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f1260d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2414U3 f1261e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2409T3(C2414U3 c2414u3, InterfaceC2529p2 interfaceC2529p2, boolean z) {
        super(interfaceC2529p2);
        this.f1261e = c2414u3;
        this.f1260d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void accept(int i) {
        boolean z;
        if (!this.f1259c) {
            boolean zTest = this.f1261e.f1270s.test(i);
            this.f1259c = !zTest;
            z = !zTest;
        }
        boolean z2 = this.f1260d;
        if (z2 && !z) {
            this.f1258b++;
        }
        if (z2 || z) {
            this.f1400a.accept(i);
        }
    }

    @Override // p022j$.util.stream.InterfaceC2445a4
    /* JADX INFO: renamed from: s */
    public final long mo957s() {
        return this.f1258b;
    }
}
