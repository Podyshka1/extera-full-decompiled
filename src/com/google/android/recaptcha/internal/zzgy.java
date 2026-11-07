package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzgy {
    private final zzne zza;
    private Deferred zzb;
    private final zzmq zzc;
    private final zzhu zzd;

    public zzgy(zzmq zzmqVar, zzne zzneVar, zzhu zzhuVar) {
        this.zzc = zzmqVar;
        this.zza = zzneVar;
        this.zzd = zzhuVar;
    }

    public final zzne zza() {
        return this.zza;
    }

    public final Object zzb(Continuation continuation) {
        return new zzmc(new zzgt(this, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
    
        if (r7 != r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzc(Continuation continuation) {
        zzgq zzgqVar;
        Deferred deferred;
        String str;
        if (continuation instanceof zzgq) {
            zzgqVar = (zzgq) continuation;
            int i = zzgqVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzgqVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzgqVar = new zzgq(this, continuation);
            }
        }
        Object objZzc = zzgqVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzgqVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZzc);
            zzne zzneVar = this.zza;
            zzgqVar.zzc = 1;
            objZzc = zzneVar.zzc("ovk", zzgqVar);
            if (objZzc != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZzc);
            str = (String) objZzc;
            if (str == null && str.length() != 0) {
                return str;
            }
        }
        ResultKt.throwOnFailure(objZzc);
        String str2 = (String) objZzc;
        if (str2 != null) {
            return str2;
        }
        synchronized (this) {
            deferred = this.zzb;
        }
        if (deferred == null) {
            str = null;
            return str == null ? null : null;
        }
        zzgqVar.zzc = 2;
        objZzc = deferred.await(zzgqVar);
    }

    public final zzmq zzf() {
        return this.zzc;
    }

    public final zzhu zzg() {
        return this.zzd;
    }
}
