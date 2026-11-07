package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzfe extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzfp zzb;
    final /* synthetic */ String zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfe(zzfp zzfpVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzfpVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfe zzfeVar = new zzfe(this.zzb, this.zzc, continuation);
        zzfeVar.zzd = obj;
        return zzfeVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfe) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
    
        if (r7 != r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
    
        if (r7 == r0) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object obj2 = this.zza;
        try {
        } catch (Exception unused) {
            zzfp zzfpVar = this.zzb;
            this.zzd = obj2;
            this.zza = 2;
            obj = zzfpVar.zzc(this);
            zzmgVar = obj2;
            if (obj != coroutine_suspended) {
                this.zzd = null;
                this.zza = 3;
                if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
                }
            }
        }
        if (obj2 == 0) {
            ResultKt.throwOnFailure(obj);
            zzmg zzmgVar2 = (zzmg) this.zzd;
            zzfp zzfpVar2 = this.zzb;
            String str = this.zzc;
            this.zzd = zzmgVar2;
            this.zza = 1;
            obj = zzfpVar2.zzm(str, this);
            obj2 = zzmgVar2;
        } else {
            if (obj2 != 1) {
                if (obj2 != 2) {
                    ResultKt.throwOnFailure(obj);
                    if (obj2 == 3) {
                        zzfp zzfpVar3 = this.zzb;
                        String str2 = this.zzc;
                        this.zza = 4;
                        obj = zzfpVar3.zzm(str2, this);
                    }
                    return (String) obj;
                }
                zzmg zzmgVar3 = (zzmg) this.zzd;
                ResultKt.throwOnFailure(obj);
                zzmgVar = zzmgVar3;
                this.zzd = null;
                this.zza = 3;
                if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            zzmg zzmgVar4 = (zzmg) this.zzd;
            ResultKt.throwOnFailure(obj);
            obj2 = zzmgVar4;
        }
        return (String) obj;
    }
}
