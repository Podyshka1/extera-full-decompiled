package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.x */
/* JADX INFO: loaded from: classes5.dex */
final class C1816x extends AbstractRunnableC1812t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ae f416a;

    public C1816x(ae aeVar) {
        this.f416a = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1812t
    /* JADX INFO: renamed from: b */
    public final void mo364b() {
        synchronized (this.f416a.f377g) {
            try {
                if (this.f416a.f383m.get() > 0 && this.f416a.f383m.decrementAndGet() > 0) {
                    this.f416a.f373c.m450d("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                ae aeVar = this.f416a;
                if (aeVar.f385o != null) {
                    aeVar.f373c.m450d("Unbind from service.", new Object[0]);
                    ae aeVar2 = this.f416a;
                    aeVar2.f372b.unbindService(aeVar2.f384n);
                    this.f416a.f378h = false;
                    this.f416a.f385o = null;
                    this.f416a.f384n = null;
                }
                this.f416a.m406x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
