package com.google.android.recaptcha.internal;

import java.util.UUID;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmg {
    private final zzlj zza;
    private final zzht zzb;
    private final zzmd zzc;
    private final String zzd = UUID.randomUUID().toString();

    public zzmg(zzlj zzljVar, zzht zzhtVar, zzmd zzmdVar) {
        this.zza = zzljVar;
        this.zzb = zzhtVar;
        this.zzc = zzmdVar;
    }

    public final zzmd zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzc(zzmb zzmbVar, Continuation continuation) {
        zzmf zzmfVar;
        if (continuation instanceof zzmf) {
            zzmfVar = (zzmf) continuation;
            int i = zzmfVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmfVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzmfVar = new zzmf(this, continuation);
            }
        }
        Object obj = zzmfVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmfVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                zzmfVar.zzc = 1;
                if (zzmbVar.zza(this, zzmfVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        } catch (Exception unused) {
            return Unit.INSTANCE;
        }
    }

    public final void zzd(zzajh zzajhVar, zzaja zzajaVar) {
        this.zza.zza(zzajhVar, this.zzc.zza(), zzajaVar);
    }

    public final Object zze(int i, Integer num, Function2 function2, Continuation continuation) {
        return new zzmb(i, function2, num).zza(this, continuation);
    }

    public final zzlp zzf(int i, Integer num) {
        return new zzlp(this.zzb, this, i, num);
    }
}
