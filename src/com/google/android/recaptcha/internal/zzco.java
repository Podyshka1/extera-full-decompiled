package com.google.android.recaptcha.internal;

import java.util.ArrayList;
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
final class zzco extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzct zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzmg zzd;
    final /* synthetic */ zzaka zze;
    final /* synthetic */ long zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzco(zzct zzctVar, String str, zzmg zzmgVar, zzaka zzakaVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzctVar;
        this.zzc = str;
        this.zzd = zzmgVar;
        this.zze = zzakaVar;
        this.zzf = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzco zzcoVar = new zzco(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, continuation);
        zzcoVar.zzg = obj;
        return zzcoVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzco) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object objAwaitAll;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            objAwaitAll = obj;
        } else {
            CoroutineScope coroutineScope = (CoroutineScope) this.zzg;
            List listZza = this.zzb.zza();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listZza) {
                if (((zzcl) obj2).zza()) {
                    arrayList.add(obj2);
                }
            }
            if (arrayList.isEmpty()) {
                throw new zzhg(zzhf.zzb, zzhe.zzr, null, null, 12, null);
            }
            zzmg zzmgVar = this.zzd;
            String str = this.zzc;
            zzaka zzakaVar = this.zze;
            long j = this.zzf;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                long j2 = j;
                arrayList2.add(BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zzcn(zzmgVar, (zzcl) arrayList.get(i2), str, zzakaVar, j2, null), 3, null));
                size = size;
                j = j2;
            }
            this.zza = 1;
            objAwaitAll = AwaitKt.awaitAll(arrayList2, this);
            if (objAwaitAll == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        String str2 = this.zzc;
        zzakt zzaktVarZza = zzaku.zza();
        zzaktVarZza.zza(str2);
        Iterator it = ((List) objAwaitAll).iterator();
        while (it.hasNext()) {
            Object value = ((Result) it.next()).getValue();
            if (Result.m3615isSuccessimpl(value)) {
                zzaktVarZza.zzq((zzaku) value);
            }
        }
        return (zzaku) zzaktVarZza.zzp();
    }
}
