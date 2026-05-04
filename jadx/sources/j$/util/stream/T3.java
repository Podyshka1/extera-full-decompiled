package j$.util.stream;

/* JADX INFO: loaded from: classes2.dex */
public final class T3 extends AbstractC6218j2 implements a4 {

    /* JADX INFO: renamed from: b */
    public long f1023b;

    /* JADX INFO: renamed from: c */
    public boolean f1024c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ boolean f1025d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ U3 f1026e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T3(U3 u3, InterfaceC6242p2 interfaceC6242p2, boolean z) {
        super(interfaceC6242p2);
        this.f1026e = u3;
        this.f1025d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void accept(int i) {
        boolean z;
        if (!this.f1024c) {
            boolean zTest = this.f1026e.f1035s.test(i);
            this.f1024c = !zTest;
            z = !zTest;
        }
        boolean z2 = this.f1025d;
        if (z2 && !z) {
            this.f1023b++;
        }
        if (z2 || z) {
            this.f1164a.accept(i);
        }
    }

    @Override // j$.util.stream.a4
    /* JADX INFO: renamed from: s */
    public final long mo817s() {
        return this.f1023b;
    }
}
