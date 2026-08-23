package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public class zzio extends zzin implements zzkf {
    protected zzio(zzip zzipVar) {
        super(zzipVar);
    }

    @Override // com.google.android.recaptcha.internal.zzin, com.google.android.recaptcha.internal.zzkd
    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzip zzk() {
        if (!((zzip) this.zza).zzG()) {
            return (zzip) this.zza;
        }
        ((zzip) this.zza).zzb.zzg();
        return (zzip) super.zzk();
    }

    @Override // com.google.android.recaptcha.internal.zzin
    protected final void zzn() {
        super.zzn();
        if (((zzip) this.zza).zzb != zzij.zzd()) {
            zzip zzipVar = (zzip) this.zza;
            zzipVar.zzb = zzipVar.zzb.clone();
        }
    }
}
