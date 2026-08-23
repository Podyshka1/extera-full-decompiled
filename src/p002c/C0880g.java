package p002c;

/* JADX INFO: renamed from: c.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0880g {

    /* JADX INFO: renamed from: a */
    public final String f28a;

    /* JADX INFO: renamed from: b */
    public volatile boolean f29b;

    public C0880g(String str, boolean z) {
        this.f28a = str;
        this.f29b = z;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m180a() {
        if (this.f29b) {
            return;
        }
        String str = this.f28a;
        if (str == null) {
            this.f29b = true;
        } else {
            AbstractC0874a.m171a(str);
            this.f29b = true;
        }
    }
}
