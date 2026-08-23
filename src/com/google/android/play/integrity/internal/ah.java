package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class ah implements al {

    /* JADX INFO: renamed from: a */
    private static final Object f412a = new Object();

    /* JADX INFO: renamed from: b */
    private volatile al f413b;

    /* JADX INFO: renamed from: c */
    private volatile Object f414c = f412a;

    private ah(al alVar) {
        this.f413b = alVar;
    }

    /* JADX INFO: renamed from: b */
    public static al m417b(al alVar) {
        return alVar instanceof ah ? alVar : new ah(alVar);
    }

    @Override // com.google.android.play.integrity.internal.al
    /* JADX INFO: renamed from: a */
    public final Object mo358a() {
        Object objMo358a;
        Object obj = this.f414c;
        Object obj2 = f412a;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objMo358a = this.f414c;
                if (objMo358a == obj2) {
                    objMo358a = this.f413b.mo358a();
                    Object obj3 = this.f414c;
                    if (obj3 != obj2 && obj3 != objMo358a) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objMo358a + ". This is likely due to a circular dependency.");
                    }
                    this.f414c = objMo358a;
                    this.f413b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objMo358a;
    }
}
