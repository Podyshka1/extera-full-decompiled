package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.v */
/* JADX INFO: loaded from: classes5.dex */
final class C1667v extends AbstractRunnableC1663r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ac f369a;

    C1667v(ac acVar) {
        this.f369a = acVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1663r
    /* JADX INFO: renamed from: b */
    public final void mo294b() {
        synchronized (this.f369a.f343g) {
            try {
                if (this.f369a.f349m.get() > 0 && this.f369a.f349m.decrementAndGet() > 0) {
                    this.f369a.f339c.m378c("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                ac acVar = this.f369a;
                if (acVar.f351o != null) {
                    acVar.f339c.m378c("Unbind from service.", new Object[0]);
                    ac acVar2 = this.f369a;
                    acVar2.f338b.unbindService(acVar2.f350n);
                    this.f369a.f344h = false;
                    this.f369a.f351o = null;
                    this.f369a.f350n = null;
                }
                this.f369a.m349x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
