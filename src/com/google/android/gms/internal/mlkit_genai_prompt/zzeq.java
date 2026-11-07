package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzeq extends zzaw {
    final /* synthetic */ zzeo zza;
    final /* synthetic */ zzgw zzb;

    public zzeq(zzer zzerVar, zzeo zzeoVar, zzgw zzgwVar) {
        this.zza = zzeoVar;
        this.zzb = zzgwVar;
        Objects.requireNonNull(zzerVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzax
    public final void zzb(zzah zzahVar) {
        zzeo zzeoVar = this.zza;
        if (zzeoVar.zzo() == 1 || zzeoVar.zzo() == 2) {
            this.zzb.zza(new zzeh(zzml.zzk(), zzahVar.zzb(), zzahVar.zzc()));
            return;
        }
        int i = zzml.$r8$clinit;
        zzmh zzmhVar = new zzmh();
        zzml zzmlVarZza = zzahVar.zza();
        int size = zzmlVarZza.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzac zzacVar = (zzac) zzmlVarZza.get(i2);
            zzmhVar.zzd(new zzee(zzacVar.zza(), zzacVar.zzb(), zzacVar.zza));
        }
        zzml zzmlVarZze = zzmhVar.zze();
        this.zzb.zza(new zzeh(zzml.zzq(zzmlVarZze), zzahVar.zzb(), -1));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzax
    public final void zzc(int i) {
        this.zzb.zzb(i);
    }
}
