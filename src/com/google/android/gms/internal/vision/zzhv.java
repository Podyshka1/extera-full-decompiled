package com.google.android.gms.internal.vision;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
final class zzhv implements Comparator {
    zzhv() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzht zzhtVar = (zzht) obj;
        zzht zzhtVar2 = (zzht) obj2;
        zzhy zzhyVar = (zzhy) zzhtVar.iterator();
        zzhy zzhyVar2 = (zzhy) zzhtVar2.iterator();
        while (zzhyVar.hasNext() && zzhyVar2.hasNext()) {
            int iCompare = Integer.compare(zzht.zzb(zzhyVar.zza()), zzht.zzb(zzhyVar2.zza()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzhtVar.zza(), zzhtVar2.zza());
    }
}
