package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzej extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ zzev zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzaka zzf;
    final /* synthetic */ List zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzej(zzmg zzmgVar, zzev zzevVar, String str, zzaka zzakaVar, List list, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzmgVar;
        this.zzd = zzevVar;
        this.zze = str;
        this.zzf = zzakaVar;
        this.zzg = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzej(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzej) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
    
        if (r6 == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = this.zzc;
            zzev zzevVar = this.zzd;
            String str = this.zze;
            zzaka zzakaVar = this.zzf;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = zzevVar.zzh(str, zzakaVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            this.zzg.add((zzex) obj);
            return Unit.INSTANCE;
        }
        zzmgVar = (zzmg) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
        obj = ((zzmc) obj).zza(zzmgVar, this);
    }
}
