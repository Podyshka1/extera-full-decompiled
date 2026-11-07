package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import java.util.concurrent.TimeUnit;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzke implements zzkn {
    private zzhg zzb;
    private zzakg zzc;
    private final zziz zze;
    private final zzhu zzf;
    private CompletableDeferred zza = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    private zzkm zzd = zzkm.zza;

    public zzke(zzhu zzhuVar, zziz zzizVar, zzhl zzhlVar) {
        this.zzf = zzhuVar;
        this.zze = zzizVar;
    }

    public static final /* synthetic */ boolean zze(zzke zzkeVar, Exception exc) {
        if (!(exc instanceof zzhg)) {
            return true;
        }
        zzhg zzhgVar = (zzhg) exc;
        return (Intrinsics.areEqual(zzhgVar.zza(), zzhf.zzd) || Intrinsics.areEqual(zzhgVar.zza(), zzhf.zze) || Intrinsics.areEqual(zzhgVar.zza(), zzhf.zzf)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object zzp(long j, Continuation continuation) {
        return new zzmc(new zzkd(this, j, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzq(Function1 function1, Continuation continuation) {
        zzjv zzjvVar;
        zzhk zzhkVar;
        if (continuation instanceof zzjv) {
            zzjvVar = (zzjv) continuation;
            int i = zzjvVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzjvVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzjvVar = new zzjv(this, continuation);
            }
        }
        Object obj = zzjvVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzjvVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            zzhk zzhkVar2 = new zzhk();
            zzjvVar.zzd = zzhkVar2;
            zzjvVar.zzc = 1;
            if (function1.invoke(zzjvVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
            zzhkVar = zzhkVar2;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            zzhkVar = zzjvVar.zzd;
            ResultKt.throwOnFailure(obj);
        }
        zzhkVar.zzb();
        return Boxing.boxLong(zzhkVar.zza(TimeUnit.MILLISECONDS));
    }

    public final zzkm zza() {
        return this.zzd;
    }

    @Override // com.google.android.recaptcha.internal.zzkn
    public final Object zzb(long j, Continuation continuation) {
        return zzp(j, continuation);
    }

    @Override // com.google.android.recaptcha.internal.zzkn
    public final Object zzc(String str, RecaptchaAction recaptchaAction, long j, String str2, Continuation continuation) {
        return new zzmc(new zzju(this, j, str, recaptchaAction, null, null));
    }
}
