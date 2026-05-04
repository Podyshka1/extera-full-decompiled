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
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzf extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzg zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzoe zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzf(zzg zzgVar, long j, zzoe zzoeVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgVar;
        this.zzc = j;
        this.zzd = zzoeVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzf zzfVar = new zzf(this.zzb, this.zzc, this.zzd, continuation);
        zzfVar.zze = obj;
        return zzfVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzf) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        Object objCreateFailure;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zza != 0) {
            ref$ObjectRef = (Ref$ObjectRef) this.zze;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.zze;
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzb.zzc().iterator();
            while (it.hasNext()) {
                arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zze((zza) it.next(), this.zzc, this.zzd, null), 3, null));
            }
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            Deferred[] deferredArr = (Deferred[]) arrayList.toArray(new Deferred[0]);
            Deferred[] deferredArr2 = (Deferred[]) Arrays.copyOf(deferredArr, deferredArr.length);
            this.zze = ref$ObjectRef2;
            this.zza = 1;
            obj = AwaitKt.awaitAll(deferredArr2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            ref$ObjectRef = ref$ObjectRef2;
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            Throwable thM3606exceptionOrNullimpl = Result.m3606exceptionOrNullimpl(((Result) it2.next()).m3611unboximpl());
            if (thM3606exceptionOrNullimpl != null) {
                zzp zzpVar = null;
                if (ref$ObjectRef.element != null) {
                    zzpVar = new zzp(zzn.zzc, zzl.zzal, null);
                } else if (thM3606exceptionOrNullimpl instanceof zzp) {
                    zzpVar = (zzp) thM3606exceptionOrNullimpl;
                }
                ref$ObjectRef.element = zzpVar;
            }
        }
        zzp zzpVar2 = (zzp) ref$ObjectRef.element;
        if (zzpVar2 != null) {
            Result.Companion companion = Result.Companion;
            objCreateFailure = ResultKt.createFailure(zzpVar2);
        } else {
            Result.Companion companion2 = Result.Companion;
            objCreateFailure = Unit.INSTANCE;
        }
        return Result.m3603boximpl(Result.m3604constructorimpl(objCreateFailure));
    }
}
