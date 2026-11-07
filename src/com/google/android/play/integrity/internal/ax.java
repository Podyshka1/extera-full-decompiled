package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class ax implements bb {

    /* JADX INFO: renamed from: a */
    private static final Object f403a = new Object();

    /* JADX INFO: renamed from: b */
    private volatile bb f404b;

    /* JADX INFO: renamed from: c */
    private volatile Object f405c = f403a;

    private ax(bb bbVar) {
        this.f404b = bbVar;
    }

    /* JADX INFO: renamed from: b */
    public static bb m457b(bb bbVar) {
        return bbVar instanceof ax ? bbVar : new ax(bbVar);
    }

    @Override // com.google.android.play.integrity.internal.bd
    /* JADX INFO: renamed from: a */
    public final Object mo377a() {
        Object objMo377a;
        Object obj = this.f405c;
        Object obj2 = f403a;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objMo377a = this.f405c;
                if (objMo377a == obj2) {
                    objMo377a = this.f404b.mo377a();
                    Object obj3 = this.f405c;
                    if (obj3 != obj2 && obj3 != objMo377a) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objMo377a + ". This is likely due to a circular dependency.");
                    }
                    this.f405c = objMo377a;
                    this.f404b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objMo377a;
    }
}
