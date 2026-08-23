package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.v */
/* JADX INFO: loaded from: classes5.dex */
final class C1782v extends AbstractRunnableC1778r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ C1752ac f575a;

    C1782v(C1752ac c1752ac) {
        this.f575a = c1752ac;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1778r
    /* JADX INFO: renamed from: b */
    public final void mo389b() {
        synchronized (this.f575a.f549g) {
            try {
                if (this.f575a.f555m.get() > 0 && this.f575a.f555m.decrementAndGet() > 0) {
                    this.f575a.f545c.m473c("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                C1752ac c1752ac = this.f575a;
                if (c1752ac.f557o != null) {
                    c1752ac.f545c.m473c("Unbind from service.", new Object[0]);
                    C1752ac c1752ac2 = this.f575a;
                    c1752ac2.f544b.unbindService(c1752ac2.f556n);
                    this.f575a.f550h = false;
                    this.f575a.f557o = null;
                    this.f575a.f556n = null;
                }
                this.f575a.m444x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
