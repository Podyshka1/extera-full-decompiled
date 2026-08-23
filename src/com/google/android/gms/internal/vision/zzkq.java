package com.google.android.gms.internal.vision;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzkq implements zzlc {
    private final zzkk zza;
    private final zzlu zzb;
    private final boolean zzc;
    private final zziq zzd;

    private zzkq(zzlu zzluVar, zziq zziqVar, zzkk zzkkVar) {
        this.zzb = zzluVar;
        this.zzc = zziqVar.zza(zzkkVar);
        this.zzd = zziqVar;
        this.zza = zzkkVar;
    }

    static zzkq zza(zzlu zzluVar, zziq zziqVar, zzkk zzkkVar) {
        return new zzkq(zzluVar, zziqVar, zzkkVar);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final Object zza() {
        return this.zza.zzq().zze();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean zza(Object obj, Object obj2) {
        if (!this.zzb.zzb(obj).equals(this.zzb.zzb(obj2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(obj).equals(this.zzd.zza(obj2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zza(Object obj) {
        int iHashCode = this.zzb.zzb(obj).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(obj).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzb(Object obj, Object obj2) {
        zzle.zza(this.zzb, obj, obj2);
        if (this.zzc) {
            zzle.zza(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zza(Object obj, zzmr zzmrVar) {
        Iterator itZzd = this.zzd.zza(obj).zzd();
        if (itZzd.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((Map.Entry) itZzd.next()).getKey());
            throw null;
        }
        zzlu zzluVar = this.zzb;
        zzluVar.zzb(zzluVar.zzb(obj), zzmrVar);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zza(Object obj, byte[] bArr, int i, int i2, zzhn zzhnVar) {
        zzjb zzjbVar = (zzjb) obj;
        if (zzjbVar.zzb == zzlx.zza()) {
            zzjbVar.zzb = zzlx.zzb();
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzc(Object obj) {
        this.zzb.zzd(obj);
        this.zzd.zzc(obj);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean zzd(Object obj) {
        return this.zzd.zza(obj).zzf();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zzb(Object obj) {
        zzlu zzluVar = this.zzb;
        int iZze = zzluVar.zze(zzluVar.zzb(obj));
        return this.zzc ? iZze + this.zzd.zza(obj).zzg() : iZze;
    }
}
