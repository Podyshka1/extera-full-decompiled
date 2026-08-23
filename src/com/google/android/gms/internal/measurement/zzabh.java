package com.google.android.gms.internal.measurement;

import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzabh {
    private final int zza;
    private final zzza zzb;

    public zzabh(zzza zzzaVar, int i) {
        if (zzzaVar == null) {
            f$$ExternalSyntheticBUOutline1.m178m("format options cannot be null");
            throw null;
        }
        if (i < 0) {
            zzar$$ExternalSyntheticBUOutline1.m292m(String.valueOf(i).length() + 15, "invalid index: ", i);
            throw null;
        }
        this.zza = i;
        this.zzb = zzzaVar;
    }

    public abstract void zzb(zzabi zzabiVar, Object obj);

    public final int zzc() {
        return this.zza;
    }

    public final zzza zzd() {
        return this.zzb;
    }

    public final void zze(zzabi zzabiVar, Object[] objArr) {
        int i = this.zza;
        if (i >= objArr.length) {
            zzabiVar.zze();
            return;
        }
        Object obj = objArr[i];
        if (obj != null) {
            zzb(zzabiVar, obj);
        } else {
            zzabiVar.zzf();
        }
    }
}
