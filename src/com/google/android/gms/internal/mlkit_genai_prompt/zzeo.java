package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.cast.MediaError;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzeo {
    public static zzem zzq() {
        zzef zzefVar = new zzef();
        zzefVar.zzb(0.0f);
        zzefVar.zzc(1);
        zzefVar.zzd(MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
        zzefVar.zzf(0);
        zzefVar.zzg(0);
        zzefVar.zzh(0);
        zzefVar.zze(1);
        zzefVar.zzl(6);
        zzefVar.zzj(0);
        return zzefVar;
    }

    public abstract zzml zza();

    public abstract ParcelFileDescriptor zzb();

    public abstract zzml zzc();

    public abstract float zzd();

    public abstract int zze();

    public abstract int zzf();

    public abstract int zzg();

    public abstract zzev zzh();

    public abstract int zzi();

    public abstract int zzj();

    public abstract int zzk();

    public abstract String zzl();

    @Deprecated
    public abstract String zzm();

    public abstract int zzn();

    public abstract int zzo();

    public abstract zzwh zzp();
}
