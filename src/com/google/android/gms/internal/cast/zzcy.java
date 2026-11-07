package com.google.android.gms.internal.cast;

import android.graphics.Bitmap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzcy implements com.google.android.gms.cast.framework.media.internal.zza {
    final /* synthetic */ zzda zza;

    public zzcy(zzda zzdaVar) {
        Objects.requireNonNull(zzdaVar);
        this.zza = zzdaVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        if (bitmap != null) {
            zzda zzdaVar = this.zza;
            if (zzdaVar.zzb() != null) {
                zzdaVar.zzb().setVisibility(4);
            }
            zzdaVar.zza().setVisibility(0);
            zzdaVar.zza().setImageBitmap(bitmap);
            if (zzdaVar.zzc() != null) {
                zzdaVar.zzc().zza();
            }
        }
    }
}
