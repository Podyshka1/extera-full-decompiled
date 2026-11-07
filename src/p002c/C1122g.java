package p002c;

/* JADX INFO: renamed from: c.g */
/* JADX INFO: loaded from: classes.dex */
public final class C1122g {

    /* JADX INFO: renamed from: a */
    public final String f30a;

    /* JADX INFO: renamed from: b */
    public volatile boolean f31b;

    public C1122g(String str, boolean z) {
        this.f30a = str;
        this.f31b = z;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m217a() {
        if (this.f31b) {
            return;
        }
        String str = this.f30a;
        if (str == null) {
            this.f31b = true;
        } else {
            AbstractC1116a.m208a(str);
            this.f31b = true;
        }
    }
}
