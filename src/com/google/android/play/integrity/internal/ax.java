package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class ax implements bb {

    /* JADX INFO: renamed from: a */
    private static final Object f402a = new Object();

    /* JADX INFO: renamed from: b */
    private volatile bb f403b;

    /* JADX INFO: renamed from: c */
    private volatile Object f404c = f402a;

    private ax(bb bbVar) {
        this.f403b = bbVar;
    }

    /* JADX INFO: renamed from: b */
    public static bb m433b(bb bbVar) {
        return bbVar instanceof ax ? bbVar : new ax(bbVar);
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: a */
    public final Object mo353a() {
        Object objMo353a;
        Object obj = this.f404c;
        Object obj2 = f402a;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objMo353a = this.f404c;
                if (objMo353a == obj2) {
                    objMo353a = this.f403b.mo353a();
                    Object obj3 = this.f404c;
                    if (obj3 != obj2 && obj3 != objMo353a) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objMo353a + ". This is likely due to a circular dependency.");
                    }
                    this.f404c = objMo353a;
                    this.f403b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objMo353a;
    }
}
