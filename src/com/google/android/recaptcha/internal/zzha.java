package com.google.android.recaptcha.internal;

import android.util.Base64;
import java.security.GeneralSecurityException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzha implements zzgz {
    public zzha() throws GeneralSecurityException {
        zzaau.zza();
    }

    @Override // com.google.android.recaptcha.internal.zzgz
    public final Object zza(zzalm zzalmVar, String str, Continuation continuation) throws zzhg {
        try {
            ((zzst) zzsz.zza(Base64.decode(str, 0)).zzg(zztg.zza(), zzst.class)).zza(zzalmVar.zzb().zzy(), zzalmVar.zza().zzy());
            return Unit.INSTANCE;
        } catch (GeneralSecurityException unused) {
            throw new zzhg(zzhf.zzb, zzhe.zzan, null, null, 12, null);
        }
    }
}
