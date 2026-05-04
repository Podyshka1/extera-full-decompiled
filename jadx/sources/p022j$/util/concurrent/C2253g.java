package p022j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2253g extends C2257k {

    /* JADX INFO: renamed from: e */
    public final C2257k[] f963e;

    public C2253g(C2257k[] c2257kArr) {
        super(-1, null, null);
        this.f963e = c2257kArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
    
        return r0;
     */
    @Override // p022j$.util.concurrent.C2257k
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2257k mo848a(int i, Object obj) {
        C2257k c2257kM829k;
        Object obj2;
        C2257k[] c2257kArr = this.f963e;
        loop0: while (true) {
            int length = c2257kArr.length;
            if (length == 0 || (c2257kM829k = ConcurrentHashMap.m829k(c2257kArr, (length - 1) & i)) == null) {
                return null;
            }
            do {
                int i2 = c2257kM829k.f970a;
                if (i2 == i && ((obj2 = c2257kM829k.f971b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    break loop0;
                }
                if (i2 < 0) {
                    if (c2257kM829k instanceof C2253g) {
                        c2257kArr = ((C2253g) c2257kM829k).f963e;
                    } else {
                        return c2257kM829k.mo848a(i, obj);
                    }
                } else {
                    c2257kM829k = c2257kM829k.f973d;
                }
            } while (c2257kM829k != null);
            return null;
        }
    }
}
