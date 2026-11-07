package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzid extends zzbg {
    final /* synthetic */ zzgw zza;
    final /* synthetic */ zzcg zzb;

    public zzid(zzig zzigVar, zzgw zzgwVar, zzcg zzcgVar) {
        this.zza = zzgwVar;
        this.zzb = zzcgVar;
        Objects.requireNonNull(zzigVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbh
    public final void zzb(zzci zzciVar) {
        zzha zzhaVarZzb;
        int i = zzml.$r8$clinit;
        zzmh zzmhVar = new zzmh();
        zzml zzmlVarZza = zzciVar.zza();
        int size = zzmlVarZza.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzcd zzcdVar = (zzcd) zzmlVarZza.get(i2);
            ArrayList arrayList = new ArrayList();
            List<zzda> listZzd = zzcdVar.zzd();
            if (listZzd != null) {
                for (zzda zzdaVar : listZzd) {
                    zzmn zzmnVar = new zzmn();
                    zzmo zzmoVarZzb = zzdaVar.zzb();
                    if (zzmoVarZzb != null) {
                        zzns zznsVarZza = zzmoVarZzb.entrySet().zza();
                        while (zznsVarZza.hasNext()) {
                            Map.Entry entry = (Map.Entry) zznsVarZza.next();
                            zzmnVar.zza((String) entry.getKey(), zziw.zzh((zzcy) entry.getValue()));
                        }
                    }
                    zzix zzixVarZzc = zziy.zzc();
                    zzixVarZzc.zza(zzdaVar.zza());
                    zzixVarZzc.zzb(zzmnVar.zzc());
                    arrayList.add(zzixVarZzc.zzc());
                }
            }
            zzmhVar.zzd(zzhv.zzf(zzcdVar.zza(), zzcdVar.zzb(), zzcdVar.zza, zzig.zzw(zzcdVar.zzc()), arrayList));
        }
        zzmh zzmhVar2 = new zzmh();
        zzml zzmlVarZzd = zzciVar.zzd();
        if (zzmlVarZzd != null) {
            int size2 = zzmlVarZzd.size();
            for (int i3 = 0; i3 < size2; i3++) {
                zzcd zzcdVar2 = (zzcd) zzmlVarZzd.get(i3);
                zzmhVar2.zzd(zzhv.zzf(zzcdVar2.zza(), zzcdVar2.zzb(), zzcdVar2.zza, zzig.zzw(zzcdVar2.zzc()), zzml.zzk()));
            }
        }
        zzml zzmlVarZze = zzmhVar.zze();
        zzbt zzbtVarZzb = zzciVar.zzb();
        zzck zzckVarZzc = zzciVar.zzc();
        int i4 = zzig.$r8$clinit;
        if (zzckVarZzc == null) {
            zzhaVarZzb = null;
        } else {
            zzgz zzgzVarZzb = zzha.zzb();
            zzgzVarZzb.zza(zzckVarZzc.zza());
            zzhaVarZzb = zzgzVarZzb.zzb();
        }
        this.zza.zza(new zzhl(zzml.zzq(zzmlVarZze), zzbtVarZzb, zzhaVarZzb, zzml.zzq(zzmhVar2.zze())));
        zzig.zzx(this.zzb);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzbh
    public final void zzc(zzaj zzajVar) {
        this.zza.zzc(zzajVar.zza(), zzajVar.zzb());
        zzig.zzx(this.zzb);
    }
}
