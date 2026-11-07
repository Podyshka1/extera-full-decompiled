package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.x */
/* JADX INFO: loaded from: classes5.dex */
final class C1937x extends AbstractRunnableC1933t {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ ae f417a;

    public C1937x(ae aeVar) {
        this.f417a = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC1933t
    /* JADX INFO: renamed from: b */
    public final void mo388b() {
        synchronized (this.f417a.f378g) {
            try {
                if (this.f417a.f384m.get() > 0 && this.f417a.f384m.decrementAndGet() > 0) {
                    this.f417a.f374c.m474d("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                ae aeVar = this.f417a;
                if (aeVar.f386o != null) {
                    aeVar.f374c.m474d("Unbind from service.", new Object[0]);
                    ae aeVar2 = this.f417a;
                    aeVar2.f373b.unbindService(aeVar2.f385n);
                    this.f417a.f379h = false;
                    this.f417a.f386o = null;
                    this.f417a.f385n = null;
                }
                this.f417a.m430x();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
