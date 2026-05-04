package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.K0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2362K0 implements InterfaceC2352I0 {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2352I0 f1169a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2352I0 f1170b;

    /* JADX INFO: renamed from: c */
    public final long f1171c;

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: h */
    public final int mo928h() {
        return 2;
    }

    public AbstractC2362K0(InterfaceC2352I0 interfaceC2352I0, InterfaceC2352I0 interfaceC2352I02) {
        this.f1169a = interfaceC2352I0;
        this.f1170b = interfaceC2352I02;
        this.f1171c = interfaceC2352I02.count() + interfaceC2352I0.count();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2352I0 mo919a(int i) {
        if (i == 0) {
            return this.f1169a;
        }
        if (i == 1) {
            return this.f1170b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return this.f1171c;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2347H0 mo919a(int i) {
        return (InterfaceC2347H0) mo919a(i);
    }
}
