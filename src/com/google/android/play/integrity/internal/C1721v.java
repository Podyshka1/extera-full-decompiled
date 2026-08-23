package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.v */
/* JADX INFO: loaded from: classes5.dex */
final class C1721v extends AbstractRunnableC1717r {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ac f428a;

    public C1721v(ac acVar) {
        this.f428a = acVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1717r
    /* JADX INFO: renamed from: b */
    public final void mo353b() {
        synchronized (this.f428a.f402g) {
            try {
                if (this.f428a.f408m.get() > 0 && this.f428a.f408m.decrementAndGet() > 0) {
                    this.f428a.f398c.m437c("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                ac acVar = this.f428a;
                if (acVar.f410o != null) {
                    acVar.f398c.m437c("Unbind from service.", new Object[0]);
                    ac acVar2 = this.f428a;
                    acVar2.f397b.unbindService(acVar2.f409n);
                    this.f428a.f403h = false;
                    this.f428a.f410o = null;
                    this.f428a.f409n = null;
                }
                this.f428a.m408x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
