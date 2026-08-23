package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcr implements zzdd {
    public static final zzcr zza = new zzcr();

    private zzcr() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 2) {
            throw new zzae(4, 3, null);
        }
        Object objZza = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (objZza instanceof String)) {
            objZza = null;
        }
        String str = (String) objZza;
        if (str == null) {
            throw new zzae(4, 5, null);
        }
        Object objZza2 = zzcjVar.zzc().zza(zzpqVarArr[1]);
        if (objZza2 == null) {
            throw new zzae(4, 4, null);
        }
        if (!(objZza2 instanceof Integer) && !(objZza2 instanceof Short) && !(objZza2 instanceof Byte) && !(objZza2 instanceof Long) && !(objZza2 instanceof Double) && !(objZza2 instanceof Float) && !(objZza2 instanceof Boolean) && !(objZza2 instanceof Character) && !(objZza2 instanceof String)) {
            throw new zzae(4, 7, null);
        }
        zzcjVar.zzi().zzb(str, objZza2.toString());
    }
}
