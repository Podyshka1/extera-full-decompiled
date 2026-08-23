package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.d */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2181d {

    /* JADX INFO: renamed from: a */
    public final int f1090a;

    /* JADX INFO: renamed from: b */
    public int f1091b;

    /* JADX INFO: renamed from: c */
    public int f1092c;

    /* JADX INFO: renamed from: d */
    public long[] f1093d;

    public abstract void clear();

    public AbstractC2181d() {
        this.f1090a = 4;
    }

    public AbstractC2181d(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
        this.f1090a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public final long count() {
        int i = this.f1092c;
        if (i == 0) {
            return this.f1091b;
        }
        return this.f1093d[i] + ((long) this.f1091b);
    }
}
