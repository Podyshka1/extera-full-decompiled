package com.google.mlkit.p020nl.languageid.internal;

import com.google.android.gms.internal.mlkit_language_id_common.zzhx;
import com.google.android.gms.internal.mlkit_language_id_common.zzja;
import com.google.android.gms.internal.mlkit_language_id_common.zzjd;
import com.google.android.gms.internal.mlkit_language_id_common.zzla;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzf {
    public final /* synthetic */ LanguageIdentifierImpl zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ boolean zzc;
    public final /* synthetic */ zzhx zzd;
    public final /* synthetic */ zzja zzf;

    public /* synthetic */ zzf(LanguageIdentifierImpl languageIdentifierImpl, long j, boolean z, zzhx zzhxVar, zzjd zzjdVar, zzja zzjaVar) {
        this.zza = languageIdentifierImpl;
        this.zzb = j;
        this.zzc = z;
        this.zzd = zzhxVar;
        this.zzf = zzjaVar;
    }

    public final zzla zza() {
        return this.zza.zzb(this.zzb, this.zzc, this.zzd, null, this.zzf);
    }
}
