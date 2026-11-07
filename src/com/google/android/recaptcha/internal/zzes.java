package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzes extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzev zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzaka zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzes(zzev zzevVar, String str, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzevVar;
        this.zzc = str;
        this.zzd = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzes zzesVar = new zzes(this.zzb, this.zzc, this.zzd, continuation);
        zzesVar.zze = obj;
        return zzesVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzes) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
    
        if (r9 != r0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
    
        if (r9 != r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0048, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
        } catch (Exception e) {
            zzev zzevVar = this.zzb;
            this.zza = 2;
            obj = zzevVar.zzd(e, this);
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmg zzmgVar = (zzmg) this.zze;
            zzev zzevVar2 = this.zzb;
            Integer numBoxInt = Boxing.boxInt(zzevVar2.zza());
            zzer zzerVar = new zzer(zzevVar2, this.zzc, this.zzd, null);
            this.zza = 1;
            obj = zzmgVar.zze(37, numBoxInt, zzerVar, this);
        } else {
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return (zzex) obj;
            }
            ResultKt.throwOnFailure(obj);
        }
        return (zzex) obj;
    }
}
