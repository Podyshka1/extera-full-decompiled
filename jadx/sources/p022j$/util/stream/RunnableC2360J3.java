package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.J3 */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC2360J3 implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1164a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f1165b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f1166c;

    public /* synthetic */ RunnableC2360J3(int i, Object obj, Object obj2) {
        this.f1164a = i;
        this.f1165b = obj;
        this.f1166c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1164a) {
            case 0:
                try {
                    ((Runnable) this.f1165b).run();
                    ((Runnable) this.f1166c).run();
                    return;
                } catch (Throwable th) {
                    try {
                        ((Runnable) this.f1166c).run();
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
                    ((BaseStream) this.f1165b).close();
                    ((BaseStream) this.f1166c).close();
                    return;
                } catch (Throwable th3) {
                    try {
                        ((BaseStream) this.f1166c).close();
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
