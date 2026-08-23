package com.google.android.play.integrity.internal;

/* JADX INFO: renamed from: com.google.android.play.integrity.internal.ah */
/* JADX INFO: loaded from: classes5.dex */
public final class C1757ah implements InterfaceC1761al {

    /* JADX INFO: renamed from: a */
    private static final Object f559a = new Object();

    /* JADX INFO: renamed from: b */
    private volatile InterfaceC1761al f560b;

    /* JADX INFO: renamed from: c */
    private volatile Object f561c = f559a;

    private C1757ah(InterfaceC1761al interfaceC1761al) {
        this.f560b = interfaceC1761al;
    }

    /* JADX INFO: renamed from: b */
    public static InterfaceC1761al m453b(InterfaceC1761al interfaceC1761al) {
        return interfaceC1761al instanceof C1757ah ? interfaceC1761al : new C1757ah(interfaceC1761al);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC1761al
    /* JADX INFO: renamed from: a */
    public final Object mo394a() {
        Object objMo394a;
        Object obj = this.f561c;
        Object obj2 = f559a;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objMo394a = this.f561c;
                if (objMo394a == obj2) {
                    objMo394a = this.f560b.mo394a();
                    Object obj3 = this.f561c;
                    if (obj3 != obj2 && obj3 != objMo394a) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objMo394a + ". This is likely due to a circular dependency.");
                    }
                    this.f561c = objMo394a;
                    this.f560b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objMo394a;
    }
}
