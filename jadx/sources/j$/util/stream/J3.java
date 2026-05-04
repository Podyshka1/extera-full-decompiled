package j$.util.stream;

/* JADX INFO: loaded from: classes2.dex */
public final class J3 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f929a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f930b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f931c;

    public /* synthetic */ J3(int i, Object obj, Object obj2) {
        this.f929a = i;
        this.f930b = obj;
        this.f931c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f929a) {
            case 0:
                try {
                    ((Runnable) this.f930b).run();
                    ((Runnable) this.f931c).run();
                    return;
                } catch (Throwable th) {
                    try {
                        ((Runnable) this.f931c).run();
                        break;
                    } catch (Throwable th2) {
                        try {
                            th.addSuppressed(th2);
                            break;
                        } catch (Throwable unused) {
                        }
                    }
                    throw th;
                }
            default:
                try {
                    ((BaseStream) this.f930b).close();
                    ((BaseStream) this.f931c).close();
                    return;
                } catch (Throwable th3) {
                    try {
                        ((BaseStream) this.f931c).close();
                        break;
                    } catch (Throwable th4) {
                        try {
                            th3.addSuppressed(th4);
                            break;
                        } catch (Throwable unused2) {
                        }
                    }
                    throw th3;
                }
        }
    }
}
