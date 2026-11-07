package com.google.android.recaptcha.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes5.dex */
final class zzahb implements zzahn {
    private final zzagx zza;
    private final zzahz zzb;
    private final boolean zzc = false;
    private final zzafi zzd;

    private zzahb(zzahz zzahzVar, zzafi zzafiVar, zzagx zzagxVar) {
        this.zzb = zzahzVar;
        this.zzd = zzafiVar;
        this.zza = zzagxVar;
    }

    public static zzahb zzh(zzahz zzahzVar, zzafi zzafiVar, zzagx zzagxVar) {
        return new zzahb(zzahzVar, zzafiVar, zzagxVar);
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final Object zza() {
        zzagx zzagxVar = this.zza;
        return zzagxVar instanceof zzafv ? ((zzafv) zzagxVar).zzC() : zzagxVar.zzX().zzr();
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final boolean zzb(Object obj, Object obj2) {
        if (!((zzafv) obj).zzc.equals(((zzafv) obj2).zzc)) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final int zzc(Object obj) {
        int iHashCode = ((zzafv) obj).zzc.hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final void zzd(Object obj, Object obj2) {
        zzaho.zzD(this.zzb, obj, obj2);
        if (this.zzc) {
            zzaho.zzC(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final int zze(Object obj) {
        int iZzh = ((zzafv) obj).zzc.zzh();
        if (!this.zzc) {
            return iZzh;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final void zzf(Object obj, zzafb zzafbVar) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final void zzg(Object obj, zzaew zzaewVar, zzafh zzafhVar) {
        zzaib.zzj(obj);
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final void zzj(Object obj, byte[] bArr, int i, int i2, zzaeg zzaegVar) {
        zzafv zzafvVar = (zzafv) obj;
        if (zzafvVar.zzc == zzaia.zza()) {
            zzafvVar.zzc = zzaia.zzb();
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final void zzk(Object obj) {
        ((zzafv) obj).zzc.zzd();
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzahn
    public final boolean zzl(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
