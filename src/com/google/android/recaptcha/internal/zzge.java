package com.google.android.recaptcha.internal;

import java.util.Optional;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzge extends SuspendLambda implements Function2 {
    final /* synthetic */ Long zza;
    final /* synthetic */ zzgo zzb;
    final /* synthetic */ Optional zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzge(Long l, zzgo zzgoVar, Optional optional, Continuation continuation) {
        super(2, continuation);
        this.zza = l;
        this.zzb = zzgoVar;
        this.zzc = optional;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzge(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzge) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020 A[Catch: Exception -> 0x0035, TryCatch #0 {Exception -> 0x0035, blocks: (B:3:0x0006, B:5:0x000b, B:8:0x001a, B:15:0x0030, B:10:0x0020, B:14:0x002a), top: B:21:0x0006 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object objM3087constructorimpl;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            Long l = this.zza;
            zzd zzdVar = null;
            if (l != null) {
                zzgo zzgoVar = this.zzb;
                Optional optional = this.zzc;
                long jLongValue = l.longValue();
                zzd zzdVar2 = zzgoVar.zzh;
                if (zzdVar2 == null) {
                    zzdVar2 = null;
                }
                Object objZzc = zzdVar2.zzd(jLongValue, optional);
                if (objZzc == null) {
                    zzd zzdVar3 = this.zzb.zzh;
                    if (zzdVar3 != null) {
                        zzdVar = zzdVar3;
                    }
                    objZzc = zzdVar.zzc(this.zzc);
                }
                objM3087constructorimpl = Result.m3087constructorimpl(objZzc);
            }
        } catch (Exception e) {
            Result.Companion companion = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(e));
        }
        return Result.m3086boximpl(objM3087constructorimpl);
    }
}
