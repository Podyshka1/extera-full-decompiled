package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzol extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzaer zzc;
    final /* synthetic */ zzaer zzd;
    final /* synthetic */ zzon zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzol(String str, zzaer zzaerVar, zzaer zzaerVar2, zzon zzonVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = str;
        this.zzc = zzaerVar;
        this.zzd = zzaerVar2;
        this.zze = zzonVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzol zzolVar = new zzol(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzolVar.zzf = obj;
        return zzolVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzol) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
    
        if (r5 == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzf;
            String str = this.zzb;
            zzajz zzajzVarZzg = zzaka.zzg();
            zzajzVarZzg.zza(str);
            zzajzVarZzg.zze(this.zzc);
            zzajzVarZzg.zzb(this.zzd);
            zzaka zzakaVar = (zzaka) zzajzVarZzg.zzp();
            zzng zzngVarZzb = this.zze.zzb();
            this.zzf = zzmgVar;
            this.zza = 1;
            obj = zzoa.zzg(zzngVarZzb, zzakaVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return (zzaka) obj;
        }
        zzmgVar = (zzmg) this.zzf;
        ResultKt.throwOnFailure(obj);
        this.zzf = null;
        this.zza = 2;
        obj = ((zzmb) obj).zza(zzmgVar, this);
    }
}
