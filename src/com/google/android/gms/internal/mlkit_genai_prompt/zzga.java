package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzga extends zzbd {
    final /* synthetic */ zzdy zza;
    final /* synthetic */ zzdq zzb;
    final /* synthetic */ CallbackToFutureAdapter.Completer zzc;
    final /* synthetic */ zzgl zzd;

    public zzga(zzgl zzglVar, zzdy zzdyVar, zzdq zzdqVar, CallbackToFutureAdapter.Completer completer) {
        this.zza = zzdyVar;
        this.zzb = zzdqVar;
        this.zzc = completer;
        Objects.requireNonNull(zzglVar);
        this.zzd = zzglVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbe
    public final void zzb(String str, final long j) {
        final zzdy zzdyVar = this.zza;
        final zzdq zzdqVar = this.zzb;
        this.zzd.zzr().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfz
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdyVar.zza(zzdqVar, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbe
    public final void zzc(String str, final long j) {
        final zzdy zzdyVar = this.zza;
        final zzdq zzdqVar = this.zzb;
        this.zzd.zzr().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdyVar.zzc(zzdqVar, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbe
    public final void zzd(String str, final int i, String str2) {
        final zzdo zzdoVarZza = zzdo.zza(i == 1 ? 501 : 0, String.format(Locale.ENGLISH, "Feature %s failed with failure status %d and error %s.", str, Integer.valueOf(i), str2), null);
        final zzdq zzdqVar = this.zzb;
        final zzdy zzdyVar = this.zza;
        this.zzd.zzr().execute(new Runnable(this) { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                int i2 = i != 1 ? 0 : 1;
                zzdyVar.zzb(zzdqVar, i2, zzdoVarZza);
            }
        });
        this.zzc.setException(zzdoVarZza);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbe
    public final void zze(String str) {
        final zzdy zzdyVar = this.zza;
        final zzdq zzdqVar = this.zzb;
        this.zzd.zzr().execute(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzfy
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdyVar.zzd(zzdqVar);
            }
        });
        this.zzc.set(null);
    }
}
