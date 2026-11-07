package com.google.android.recaptcha.internal;

import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzph extends zzox {
    final /* synthetic */ zzpj zza;
    private final Object zzb;
    private int zzc;

    public zzph(zzpj zzpjVar, int i) {
        Objects.requireNonNull(zzpjVar);
        this.zza = zzpjVar;
        this.zzb = zzpjVar.zzn(i);
        this.zzc = i;
    }

    private final void zza() {
        int i = this.zzc;
        if (i != -1) {
            zzpj zzpjVar = this.zza;
            if (i < zzpjVar.size() && Objects.equals(this.zzb, zzpjVar.zzn(this.zzc))) {
                return;
            }
        }
        this.zzc = this.zza.zzh(this.zzb);
    }

    @Override // com.google.android.recaptcha.internal.zzox, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzox, java.util.Map.Entry
    public final Object getValue() {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        if (mapZzb != null) {
            return mapZzb.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            return null;
        }
        return zzpjVar.zzo(i);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        if (mapZzb != null) {
            return mapZzb.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            zzpjVar.put(this.zzb, obj);
            return null;
        }
        Object objZzo = zzpjVar.zzo(i);
        zzpjVar.zzp(this.zzc, obj);
        return objZzo;
    }
}
