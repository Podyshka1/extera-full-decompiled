package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzcr extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzct zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzakg zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcr(zzct zzctVar, zzmg zzmgVar, long j, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzctVar;
        this.zzc = zzmgVar;
        this.zzd = j;
        this.zze = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzcr zzcrVar = new zzcr(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzcrVar.zzf = obj;
        return zzcrVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcr) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            CoroutineScope coroutineScope = (CoroutineScope) this.zzf;
            zzct zzctVar = this.zzb;
            if (zzctVar.zza().isEmpty()) {
                return Unit.INSTANCE;
            }
            List listZza = zzctVar.zza();
            zzmg zzmgVar = this.zzc;
            long j = this.zzd;
            zzakg zzakgVar = this.zze;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listZza, 10));
            Iterator it = listZza.iterator();
            while (it.hasNext()) {
                arrayList.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zzcq(zzmgVar, (zzcl) it.next(), j, zzakgVar, null), 3, null));
                zzmgVar = zzmgVar;
                zzakgVar = zzakgVar;
                j = j;
            }
            this.zza = 1;
            obj = AwaitKt.awaitAll(arrayList, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        List list = (List) obj;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (!Result.m3614isFailureimpl(((Result) it2.next()).getValue())) {
                    return Unit.INSTANCE;
                }
            }
        }
        throw new zzhg(zzhf.zzb, zzhe.zzr, null, null, 12, null);
    }
}
