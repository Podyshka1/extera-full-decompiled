package j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.o */
/* JADX INFO: loaded from: classes2.dex */
public class C2119o {

    /* JADX INFO: renamed from: a */
    public C2115k[] f743a;

    /* JADX INFO: renamed from: b */
    public C2115k f744b = null;

    /* JADX INFO: renamed from: c */
    public C2118n f745c;

    /* JADX INFO: renamed from: d */
    public C2118n f746d;

    /* JADX INFO: renamed from: e */
    public int f747e;

    /* JADX INFO: renamed from: f */
    public int f748f;

    /* JADX INFO: renamed from: g */
    public int f749g;

    /* JADX INFO: renamed from: h */
    public final int f750h;

    public C2119o(C2115k[] c2115kArr, int i, int i2, int i3) {
        this.f743a = c2115kArr;
        this.f750h = i;
        this.f747e = i2;
        this.f748f = i2;
        this.f749g = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005f A[SYNTHETIC] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2115k m723a() {
        C2115k[] c2115kArr;
        int length;
        int i;
        C2118n c2118n;
        C2115k c2115k = this.f744b;
        if (c2115k != null) {
            c2115k = c2115k.f738d;
        }
        while (c2115k == null) {
            if (this.f748f >= this.f749g || (c2115kArr = this.f743a) == null || (length = c2115kArr.length) <= (i = this.f747e) || i < 0) {
                this.f744b = null;
                return null;
            }
            C2115k c2115kM703k = ConcurrentHashMap.m703k(c2115kArr, i);
            if (c2115kM703k != null && c2115kM703k.f735a < 0) {
                if (c2115kM703k instanceof C2111g) {
                    this.f743a = ((C2111g) c2115kM703k).f728e;
                    C2118n c2118n2 = this.f746d;
                    if (c2118n2 == null) {
                        c2118n2 = new C2118n();
                    } else {
                        this.f746d = c2118n2.f742d;
                    }
                    c2118n2.f741c = c2115kArr;
                    c2118n2.f739a = length;
                    c2118n2.f740b = i;
                    c2118n2.f742d = this.f745c;
                    this.f745c = c2118n2;
                    c2115k = null;
                } else {
                    c2115k = c2115kM703k instanceof C2120p ? ((C2120p) c2115kM703k).f754f : null;
                    if (this.f745c == null) {
                    }
                }
            } else {
                c2115k = c2115kM703k;
                if (this.f745c == null) {
                    while (true) {
                        c2118n = this.f745c;
                        if (c2118n == null) {
                            break;
                        }
                        int i2 = this.f747e;
                        int i3 = c2118n.f739a;
                        int i4 = i2 + i3;
                        this.f747e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f747e = c2118n.f740b;
                        this.f743a = c2118n.f741c;
                        c2118n.f741c = null;
                        C2118n c2118n3 = c2118n.f742d;
                        c2118n.f742d = this.f746d;
                        this.f745c = c2118n3;
                        this.f746d = c2118n;
                        length = i3;
                    }
                    if (c2118n == null) {
                        int i5 = this.f747e + this.f750h;
                        this.f747e = i5;
                        if (i5 >= length) {
                            int i6 = this.f748f + 1;
                            this.f748f = i6;
                            this.f747e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f750h;
                    this.f747e = i7;
                    if (i7 >= length) {
                        int i8 = this.f748f + 1;
                        this.f748f = i8;
                        this.f747e = i8;
                    }
                }
            }
        }
        this.f744b = c2115k;
        return c2115k;
    }
}
