package com.google.android.recaptcha.internal;

import android.content.ContentResolver;
import android.os.Build;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzea implements zzev {
    private final ContentResolver zza;

    public zzea(ContentResolver contentResolver) {
        this.zza = contentResolver;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzdz(this, null));
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzd(Exception exc, Continuation continuation) {
        int i = Build.VERSION.SDK_INT;
        zzalw zzalwVarZza = zzalx.zza();
        zzalwVarZza.zzb(16);
        zzalwVarZza.zzc(i > 34 ? 59 : 58);
        return zzew.zzb(this, (zzalx) zzalwVarZza.zzp());
    }
}
