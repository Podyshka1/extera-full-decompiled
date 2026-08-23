package p022j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.a */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2247a extends C2261o {

    /* JADX INFO: renamed from: i */
    public final ConcurrentHashMap f958i;

    /* JADX INFO: renamed from: j */
    public C2257k f959j;

    public AbstractC2247a(C2257k[] c2257kArr, int i, int i2, ConcurrentHashMap concurrentHashMap) {
        super(c2257kArr, i, 0, i2);
        this.f958i = concurrentHashMap;
        m849a();
    }

    public final boolean hasNext() {
        return this.f979b != null;
    }

    public final boolean hasMoreElements() {
        return this.f979b != null;
    }

    public final void remove() {
        C2257k c2257k = this.f959j;
        if (c2257k == null) {
            throw new IllegalStateException();
        }
        this.f959j = null;
        this.f958i.m836g(c2257k.f971b, null, null);
    }
}
