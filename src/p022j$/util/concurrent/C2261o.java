package p022j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.o */
/* JADX INFO: loaded from: classes2.dex */
public class C2261o {

    /* JADX INFO: renamed from: a */
    public C2257k[] f978a;

    /* JADX INFO: renamed from: b */
    public C2257k f979b = null;

    /* JADX INFO: renamed from: c */
    public C2260n f980c;

    /* JADX INFO: renamed from: d */
    public C2260n f981d;

    /* JADX INFO: renamed from: e */
    public int f982e;

    /* JADX INFO: renamed from: f */
    public int f983f;

    /* JADX INFO: renamed from: g */
    public int f984g;

    /* JADX INFO: renamed from: h */
    public final int f985h;

    public C2261o(C2257k[] c2257kArr, int i, int i2, int i3) {
        this.f978a = c2257kArr;
        this.f985h = i;
        this.f982e = i2;
        this.f983f = i2;
        this.f984g = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005f A[SYNTHETIC] */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2257k m849a() {
        C2257k[] c2257kArr;
        int length;
        int i;
        C2260n c2260n;
        C2257k c2257k = this.f979b;
        if (c2257k != null) {
            c2257k = c2257k.f973d;
        }
        while (c2257k == null) {
            if (this.f983f >= this.f984g || (c2257kArr = this.f978a) == null || (length = c2257kArr.length) <= (i = this.f982e) || i < 0) {
                this.f979b = null;
                return null;
            }
            C2257k c2257kM829k = ConcurrentHashMap.m829k(c2257kArr, i);
            if (c2257kM829k != null && c2257kM829k.f970a < 0) {
                if (c2257kM829k instanceof C2253g) {
                    this.f978a = ((C2253g) c2257kM829k).f963e;
                    C2260n c2260n2 = this.f981d;
                    if (c2260n2 == null) {
                        c2260n2 = new C2260n();
                    } else {
                        this.f981d = c2260n2.f977d;
                    }
                    c2260n2.f976c = c2257kArr;
                    c2260n2.f974a = length;
                    c2260n2.f975b = i;
                    c2260n2.f977d = this.f980c;
                    this.f980c = c2260n2;
                    c2257k = null;
                } else {
                    c2257k = c2257kM829k instanceof C2262p ? ((C2262p) c2257kM829k).f989f : null;
                    if (this.f980c == null) {
                    }
                }
            } else {
                c2257k = c2257kM829k;
                if (this.f980c == null) {
                    while (true) {
                        c2260n = this.f980c;
                        if (c2260n == null) {
                            break;
                        }
                        int i2 = this.f982e;
                        int i3 = c2260n.f974a;
                        int i4 = i2 + i3;
                        this.f982e = i4;
                        if (i4 < length) {
                            break;
                        }
                        this.f982e = c2260n.f975b;
                        this.f978a = c2260n.f976c;
                        c2260n.f976c = null;
                        C2260n c2260n3 = c2260n.f977d;
                        c2260n.f977d = this.f981d;
                        this.f980c = c2260n3;
                        this.f981d = c2260n;
                        length = i3;
                    }
                    if (c2260n == null) {
                        int i5 = this.f982e + this.f985h;
                        this.f982e = i5;
                        if (i5 >= length) {
                            int i6 = this.f983f + 1;
                            this.f983f = i6;
                            this.f982e = i6;
                        }
                    }
                } else {
                    int i7 = i + this.f985h;
                    this.f982e = i7;
                    if (i7 >= length) {
                        int i8 = this.f983f + 1;
                        this.f983f = i8;
                        this.f982e = i8;
                    }
                }
            }
        }
        this.f979b = c2257k;
        return c2257k;
    }
}
