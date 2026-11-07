package com.google.android.recaptcha.internal;

import java.util.Iterator;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzem extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    final /* synthetic */ zzakg zze;
    final /* synthetic */ zzeo zzf;
    final /* synthetic */ zzmg zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzem(zzakg zzakgVar, zzeo zzeoVar, zzmg zzmgVar, Continuation continuation) {
        super(2, continuation);
        this.zze = zzakgVar;
        this.zzf = zzeoVar;
        this.zzg = zzmgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzem(this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzem) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00be -> B:16:0x008c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzakk zzakkVarZzd;
        Iterator it;
        zzakk zzakkVar;
        Iterator it2;
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzd;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzakg zzakgVar = this.zze;
            if (!zzakgVar.zzc()) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m3607boximpl(Result.m3608constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzu, null, null, 12, null))));
            }
            zzakkVarZzd = zzakgVar.zzd();
            if (zzakkVarZzd.zza().zzr()) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m3607boximpl(Result.m3608constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzu, null, null, 12, null))));
            }
            zzeo zzeoVar = this.zzf;
            zzeoVar.zzb = zzakkVarZzd.zza();
            it = zzeoVar.zza.iterator();
        } else {
            if (i == 1) {
                zzmgVar = (zzmg) this.zzc;
                it2 = (Iterator) this.zzb;
                zzakkVar = (zzakk) this.zza;
                ResultKt.throwOnFailure(obj);
                this.zza = zzakkVar;
                this.zzb = it2;
                this.zzc = null;
                this.zzd = 2;
                if (zzmgVar.zzc((zzmb) obj, this) != coroutine_suspended) {
                    it = it2;
                    zzakkVarZzd = zzakkVar;
                }
                return coroutine_suspended;
            }
            it = (Iterator) this.zzb;
            zzakkVarZzd = (zzakk) this.zza;
            ResultKt.throwOnFailure(obj);
        }
        if (!it.hasNext()) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3607boximpl(Result.m3608constructorimpl(Unit.INSTANCE));
        }
        zzev zzevVar = (zzev) it.next();
        zzmg zzmgVar2 = this.zzg;
        this.zza = zzakkVarZzd;
        this.zzb = it;
        this.zzc = zzmgVar2;
        this.zzd = 1;
        obj = zzevVar.zzg(zzakkVarZzd, this);
        if (obj != coroutine_suspended) {
            zzakk zzakkVar2 = zzakkVarZzd;
            it2 = it;
            zzmgVar = zzmgVar2;
            zzakkVar = zzakkVar2;
            this.zza = zzakkVar;
            this.zzb = it2;
            this.zzc = null;
            this.zzd = 2;
            if (zzmgVar.zzc((zzmb) obj, this) != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
