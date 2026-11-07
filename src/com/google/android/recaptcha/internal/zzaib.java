package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzaib extends zzahz {
    public static final void zzi(zzaia zzaiaVar, int i, long j) {
        zzaiaVar.zzk(i << 3, Long.valueOf(j));
    }

    public static final zzaia zzj(Object obj) {
        zzafv zzafvVar = (zzafv) obj;
        zzaia zzaiaVar = zzafvVar.zzc;
        if (zzaiaVar != zzaia.zza()) {
            return zzaiaVar;
        }
        zzaia zzaiaVarZzb = zzaia.zzb();
        zzafvVar.zzc = zzaiaVarZzb;
        return zzaiaVarZzb;
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* bridge */ /* synthetic */ void zza(Object obj, int i, long j) {
        zzi((zzaia) obj, i, j);
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* bridge */ /* synthetic */ void zzb(Object obj, int i, int i2) {
        ((zzaia) obj).zzk((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* bridge */ /* synthetic */ void zzc(Object obj, int i, long j) {
        ((zzaia) obj).zzk((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* bridge */ /* synthetic */ void zzd(Object obj, int i, zzaer zzaerVar) {
        ((zzaia) obj).zzk((i << 3) | 2, zzaerVar);
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* bridge */ /* synthetic */ void zze(Object obj, int i, Object obj2) {
        ((zzaia) obj).zzk((i << 3) | 3, (zzaia) obj2);
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* synthetic */ Object zzf() {
        return zzaia.zzb();
    }

    @Override // com.google.android.recaptcha.internal.zzahz
    public final /* synthetic */ Object zzg(Object obj) {
        zzaia zzaiaVar = (zzaia) obj;
        zzaiaVar.zzd();
        return zzaiaVar;
    }
}
