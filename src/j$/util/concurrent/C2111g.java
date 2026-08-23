package j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.g */
/* JADX INFO: loaded from: classes2.dex */
public final class C2111g extends C2115k {

    /* JADX INFO: renamed from: e */
    public final C2115k[] f728e;

    public C2111g(C2115k[] c2115kArr) {
        super(-1, null, null);
        this.f728e = c2115kArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
    
        return r0;
     */
    @Override // j$.util.concurrent.C2115k
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2115k mo722a(int i, Object obj) {
        C2115k c2115kM703k;
        Object obj2;
        C2115k[] c2115kArr = this.f728e;
        loop0: while (true) {
            int length = c2115kArr.length;
            if (length == 0 || (c2115kM703k = ConcurrentHashMap.m703k(c2115kArr, (length - 1) & i)) == null) {
                return null;
            }
            do {
                int i2 = c2115kM703k.f735a;
                if (i2 == i && ((obj2 = c2115kM703k.f736b) == obj || (obj2 != null && obj.equals(obj2)))) {
                    break loop0;
                }
                if (i2 < 0) {
                    if (c2115kM703k instanceof C2111g) {
                        c2115kArr = ((C2111g) c2115kM703k).f728e;
                    } else {
                        return c2115kM703k.mo722a(i, obj);
                    }
                } else {
                    c2115kM703k = c2115kM703k.f738d;
                }
            } while (c2115kM703k != null);
            return null;
        }
    }
}
