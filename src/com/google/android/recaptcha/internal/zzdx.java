package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdx implements zzdd {
    public static final zzdx zza = new zzdx();

    private zzdx() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 2) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 3, null);
            return;
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof int[])) {
            objZza = null;
        }
        int[] iArr = (int[]) objZza;
        if (iArr == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (true != (objZza2 instanceof String)) {
            objZza2 = null;
        }
        String str = (String) objZza2;
        if (str == null) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return;
        }
        zzck zzckVarZzc = zzcjVar.zzc();
        StringBuilder sb = new StringBuilder();
        try {
            for (int i2 : iArr) {
                sb.append(str.charAt(i2));
            }
            zzckVarZzc.zzf(i, sb.toString());
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 22, e);
        }
    }
}
