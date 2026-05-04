package j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.a */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2105a extends C2119o {

    /* JADX INFO: renamed from: i */
    public final ConcurrentHashMap f723i;

    /* JADX INFO: renamed from: j */
    public C2115k f724j;

    public AbstractC2105a(C2115k[] c2115kArr, int i, int i2, ConcurrentHashMap concurrentHashMap) {
        super(c2115kArr, i, 0, i2);
        this.f723i = concurrentHashMap;
        m723a();
    }

    public final boolean hasNext() {
        return this.f744b != null;
    }

    public final boolean hasMoreElements() {
        return this.f744b != null;
    }

    public final void remove() {
        C2115k c2115k = this.f724j;
        if (c2115k == null) {
            throw new IllegalStateException();
        }
        this.f724j = null;
        this.f723i.m710g(c2115k.f736b, null, null);
    }
}
