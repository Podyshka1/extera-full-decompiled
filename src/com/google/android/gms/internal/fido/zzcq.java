package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
final class zzcq extends zzcs implements Serializable {
    static final zzcq zza = new zzcq();

    private zzcq() {
    }

    @Override // com.google.android.gms.internal.fido.zzcs, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.android.gms.internal.fido.zzcs
    public final zzcs zza() {
        return zzcw.zza;
    }
}
