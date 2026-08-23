package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzc extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzg zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzc(zzg zzgVar, String str, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgVar;
        this.zzc = str;
        this.zzd = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzc zzcVar = new zzc(this.zzb, this.zzc, this.zzd, continuation);
        zzcVar.zze = obj;
        return zzcVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzc) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            CoroutineScope coroutineScope = (CoroutineScope) this.zze;
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzb.zzc().iterator();
            while (it.hasNext()) {
                arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zzb((zza) it.next(), this.zzc, this.zzd, null), 3, null));
            }
            Deferred[] deferredArr = (Deferred[]) arrayList.toArray(new Deferred[0]);
            Deferred[] deferredArr2 = (Deferred[]) Arrays.copyOf(deferredArr, deferredArr.length);
            this.zza = 1;
            obj = AwaitKt.awaitAll(deferredArr2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        String str = this.zzc;
        zzof zzofVarZzf = zzog.zzf();
        zzofVarZzf.zzd(str);
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            Object objM3611unboximpl = ((Result) it2.next()).m3611unboximpl();
            if (Result.m3609isSuccessimpl(objM3611unboximpl)) {
                zzofVarZzf.zzg((zzog) objM3611unboximpl);
            }
        }
        return (zzog) zzofVarZzf.zzj();
    }
}
