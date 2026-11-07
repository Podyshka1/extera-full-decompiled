package com.google.android.recaptcha.internal;

import android.net.TrafficStats;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlz {
    private final zzmm zza;

    public zzlz(zzmm zzmmVar) {
        this.zza = zzmmVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzajl zzajlVar, Continuation continuation) {
        zzly zzlyVar;
        if (continuation instanceof zzly) {
            zzlyVar = (zzly) continuation;
            int i = zzlyVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzlyVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzlyVar = new zzly(this, continuation);
            }
        }
        Object objZza = zzlyVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzlyVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZza);
                TrafficStats.setThreadStatsTag((int) Thread.currentThread().getId());
                zzmm zzmmVar = this.zza;
                zzlyVar.zzc = 1;
                objZza = zzmmVar.zza(zzajlVar, zzlyVar);
                if (objZza == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(objZza);
            }
            return ((Boolean) objZza).booleanValue() ? Boxing.boxBoolean(true) : Boxing.boxBoolean(false);
        } catch (Exception e) {
            e.getMessage();
            return Boxing.boxBoolean(false);
        }
    }
}
