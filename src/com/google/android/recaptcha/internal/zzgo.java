package com.google.android.recaptcha.internal;

import java.util.Comparator;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
final class zzgo implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzgw zzgwVar = (zzgw) obj;
        zzgw zzgwVar2 = (zzgw) obj2;
        zzgn zzgnVar = new zzgn(zzgwVar);
        zzgn zzgnVar2 = new zzgn(zzgwVar2);
        while (zzgnVar.hasNext() && zzgnVar2.hasNext()) {
            int iCompareTo = Integer.valueOf(zzgnVar.zza() & UByte.MAX_VALUE).compareTo(Integer.valueOf(zzgnVar2.zza() & UByte.MAX_VALUE));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzgwVar.zzd()).compareTo(Integer.valueOf(zzgwVar2.zzd()));
    }
}
