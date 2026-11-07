package com.google.android.recaptcha.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlj {
    private static final String zzd = UUID.randomUUID().toString();
    private final zzlr zza;
    private final zzli zzb;
    private final zzhd zzc;

    public zzlj(zzlr zzlrVar, zzli zzliVar, zzhd zzhdVar) {
        this.zza = zzlrVar;
        this.zzb = zzliVar;
        this.zzc = zzhdVar;
    }

    public final void zza(zzajh zzajhVar, String str, zzaja zzajaVar) {
        if (zzajaVar != null) {
            zzajhVar.zzf(zzajaVar);
        }
        Iterator it = this.zzc.zza().iterator();
        while (it.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
            zzajhVar.zzt(0);
        }
        if (zzajhVar.zzu()) {
            int i = zzhj.$r8$clinit;
            zzhj.zza(zzajhVar.zzv() + 20000, zzaio.zzb(zzajhVar.zzd()) * 1000);
        } else {
            int i2 = zzhj.$r8$clinit;
            int iZzx = zzajhVar.zzx();
            zzhj.zza(zzaji.zza(iZzx) + 10000, zzaio.zzb(zzajhVar.zzd()) * 1000);
        }
        zzajhVar.zzg(this.zzb.zza(str));
        zzamj zzamjVarZzd = zzamk.zzd();
        zzamjVarZzd.zza(zzajhVar);
        this.zza.zza((zzamk) zzamjVarZzd.zzp());
    }
}
