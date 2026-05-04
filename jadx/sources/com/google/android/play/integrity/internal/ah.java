package com.google.android.play.integrity.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class ah implements al {

    /* JADX INFO: renamed from: a */
    private static final Object f353a = new Object();

    /* JADX INFO: renamed from: b */
    private volatile al f354b;

    /* JADX INFO: renamed from: c */
    private volatile Object f355c = f353a;

    private ah(al alVar) {
        this.f354b = alVar;
    }

    /* JADX INFO: renamed from: b */
    public static al m358b(al alVar) {
        return alVar instanceof ah ? alVar : new ah(alVar);
    }

    @Override // com.google.android.play.integrity.internal.al
    /* JADX INFO: renamed from: a */
    public final Object mo299a() {
        Object objMo299a;
        Object obj = this.f355c;
        Object obj2 = f353a;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objMo299a = this.f355c;
                if (objMo299a == obj2) {
                    objMo299a = this.f354b.mo299a();
                    Object obj3 = this.f355c;
                    if (obj3 != obj2 && obj3 != objMo299a) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objMo299a + ". This is likely due to a circular dependency.");
                    }
                    this.f355c = objMo299a;
                    this.f354b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objMo299a;
    }
}
