package j$.util.stream;

/* JADX INFO: loaded from: classes2.dex */
public final class Q3 extends AbstractC6226l2 implements a4 {

    /* JADX INFO: renamed from: b */
    public long f993b;

    /* JADX INFO: renamed from: c */
    public boolean f994c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f995d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ P3 f996e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q3(P3 p3, InterfaceC6242p2 interfaceC6242p2, boolean z) {
        super(interfaceC6242p2);
        this.f996e = p3;
        this.f995d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    @Override // java.util.function.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void accept(Object obj) {
        boolean z;
        if (!this.f994c) {
            boolean zTest = this.f996e.f986t.test(obj);
            this.f994c = !zTest;
            z = !zTest;
        }
        boolean z2 = this.f995d;
        if (z2 && !z) {
            this.f993b++;
        }
        if (z2 || z) {
            this.f1187a.accept(obj);
        }
    }

    @Override // j$.util.stream.a4
    /* JADX INFO: renamed from: s */
    public final long mo817s() {
        return this.f993b;
    }
}
