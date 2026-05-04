package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes4.dex */
final class zzl implements zza {
    final /* synthetic */ zzn zza;
    final /* synthetic */ zzo zzb;

    zzl(zzo zzoVar, zzn zznVar) {
        this.zzb = zzoVar;
        this.zza = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        zzn zznVar = this.zza;
        zznVar.zzb = bitmap;
        this.zzb.zzp = zznVar;
        this.zzb.zzg();
    }
}
