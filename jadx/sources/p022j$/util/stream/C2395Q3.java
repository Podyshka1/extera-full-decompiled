package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.Q3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2395Q3 extends AbstractC2509l2 implements InterfaceC2445a4 {

    /* JADX INFO: renamed from: b */
    public long f1228b;

    /* JADX INFO: renamed from: c */
    public boolean f1229c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f1230d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2390P3 f1231e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2395Q3(C2390P3 c2390p3, InterfaceC2529p2 interfaceC2529p2, boolean z) {
        super(interfaceC2529p2);
        this.f1231e = c2390p3;
        this.f1230d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    @Override // java.util.function.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void accept(Object obj) {
        boolean z;
        if (!this.f1229c) {
            boolean zTest = this.f1231e.f1221t.test(obj);
            this.f1229c = !zTest;
            z = !zTest;
        }
        boolean z2 = this.f1230d;
        if (z2 && !z) {
            this.f1228b++;
        }
        if (z2 || z) {
            this.f1423a.accept(obj);
        }
    }

    @Override // p022j$.util.stream.InterfaceC2445a4
    /* JADX INFO: renamed from: s */
    public final long mo957s() {
        return this.f1228b;
    }
}
