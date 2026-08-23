package j$.util.concurrent;

/* JADX INFO: renamed from: j$.util.concurrent.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2125u extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        return new ThreadLocalRandom(0);
    }
}
