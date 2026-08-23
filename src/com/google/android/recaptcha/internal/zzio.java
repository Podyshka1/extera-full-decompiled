package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public class zzio extends zzin implements zzkf {
    public zzio(zzip zzipVar) {
        super(zzipVar);
    }

    @Override // com.google.android.recaptcha.internal.zzin, com.google.android.recaptcha.internal.zzkd
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzip zzk() {
        boolean zZzG = ((zzip) this.zza).zzG();
        zzit zzitVar = this.zza;
        if (!zZzG) {
            return (zzip) zzitVar;
        }
        ((zzip) zzitVar).zzb.zzg();
        return (zzip) super.zzk();
    }

    @Override // com.google.android.recaptcha.internal.zzin
    public final void zzn() {
        super.zzn();
        if (((zzip) this.zza).zzb != zzij.zzd()) {
            zzip zzipVar = (zzip) this.zza;
            zzipVar.zzb = zzipVar.zzb.clone();
        }
    }
}
