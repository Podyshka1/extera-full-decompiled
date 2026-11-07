package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzcg extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzcl zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzaka zzd;
    final /* synthetic */ long zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcg(zzcl zzclVar, String str, zzaka zzakaVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzclVar;
        this.zzc = str;
        this.zzd = zzakaVar;
        this.zze = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzcg zzcgVar = new zzcg(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzcgVar.zzf = obj;
        return zzcgVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcg) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
    
        if (r13 != r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
    
        if (r13 != r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object objM3608constructorimpl;
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
        } catch (Exception unused) {
            Result.Companion companion = Result.INSTANCE;
            zzcl zzclVar = this.zzb;
            String str = this.zzc;
            this.zzf = null;
            this.zza = 3;
            obj = zzclVar.zzd(str, this);
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzf;
            zzcl zzclVar2 = this.zzb;
            if (!zzclVar2.zza()) {
                return Result.m3607boximpl(Result.m3608constructorimpl(zzaku.zzb()));
            }
            String str2 = this.zzc;
            zzaka zzakaVar = this.zzd;
            long j = this.zze;
            this.zzf = zzmgVar;
            this.zza = 1;
            zzmb zzmbVar = new zzmb(zzclVar2.zzg(), new zzck(j, zzclVar2, str2, zzakaVar, null), null);
            if (zzmbVar != coroutine_suspended) {
                obj = zzmbVar;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                ResultKt.throwOnFailure(obj);
                objM3608constructorimpl = Result.m3608constructorimpl(obj);
                return Result.m3607boximpl(objM3608constructorimpl);
            }
            ResultKt.throwOnFailure(obj);
            objM3608constructorimpl = Result.m3608constructorimpl((zzaku) obj);
            return Result.m3607boximpl(objM3608constructorimpl);
        }
        zzmgVar = (zzmg) this.zzf;
        ResultKt.throwOnFailure(obj);
        this.zzf = null;
        this.zza = 2;
        obj = ((zzmb) obj).zza(zzmgVar, this);
    }
}
