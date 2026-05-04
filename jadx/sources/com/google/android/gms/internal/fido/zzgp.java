package com.google.android.gms.internal.fido;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
final class zzgp implements Comparator {
    zzgp() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzgx zzgxVar = (zzgx) obj;
        zzgx zzgxVar2 = (zzgx) obj2;
        zzgo zzgoVar = new zzgo(zzgxVar);
        zzgo zzgoVar2 = new zzgo(zzgxVar2);
        while (zzgoVar.hasNext() && zzgoVar2.hasNext()) {
            int iCompareTo = Integer.valueOf(zzgoVar.zza() & 255).compareTo(Integer.valueOf(zzgoVar2.zza() & 255));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzgxVar.zzd()).compareTo(Integer.valueOf(zzgxVar2.zzd()));
    }
}
