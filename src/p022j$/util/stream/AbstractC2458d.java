package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.d */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2458d {

    /* JADX INFO: renamed from: a */
    public final int f1326a;

    /* JADX INFO: renamed from: b */
    public int f1327b;

    /* JADX INFO: renamed from: c */
    public int f1328c;

    /* JADX INFO: renamed from: d */
    public long[] f1329d;

    public abstract void clear();

    public AbstractC2458d() {
        this.f1326a = 4;
    }

    public AbstractC2458d(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
        this.f1326a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public final long count() {
        int i = this.f1328c;
        if (i == 0) {
            return this.f1327b;
        }
        return this.f1329d[i] + ((long) this.f1327b);
    }
}
