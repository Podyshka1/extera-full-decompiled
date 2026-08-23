package com.google.android.gms.internal.measurement;

import androidx.camera.core.CameraSelector$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaf implements zzao {
    private final boolean zza;

    public zzaf(Boolean bool) {
        this.zza = bool == null ? false : bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzaf) && this.zza == ((zzaf) obj).zza;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.zza).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        return Boolean.toString(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        return Double.valueOf(true != this.zza ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        return Boolean.valueOf(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzaf(Boolean.valueOf(this.zza));
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzcG(String str, zzg zzgVar, List list) {
        boolean zEquals = "toString".equals(str);
        boolean z = this.zza;
        if (zEquals) {
            return new zzas(Boolean.toString(z));
        }
        CameraSelector$$ExternalSyntheticBUOutline0.m72m("%s.%s is not a function.", new Object[]{Boolean.toString(z), str});
        return null;
    }
}
