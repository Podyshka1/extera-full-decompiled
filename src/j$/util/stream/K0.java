package j$.util.stream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class K0 implements I0 {

    /* JADX INFO: renamed from: a */
    public final I0 f934a;

    /* JADX INFO: renamed from: b */
    public final I0 f935b;

    /* JADX INFO: renamed from: c */
    public final long f936c;

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: h */
    public final int mo791h() {
        return 2;
    }

    public K0(I0 i0, I0 i02) {
        this.f934a = i0;
        this.f935b = i02;
        this.f936c = i02.count() + i0.count();
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final I0 mo782a(int i) {
        if (i == 0) {
            return this.f934a;
        }
        if (i == 1) {
            return this.f935b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f936c;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public /* bridge */ /* synthetic */ H0 mo782a(int i) {
        return (H0) mo782a(i);
    }
}
