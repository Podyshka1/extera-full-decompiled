package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.Arrays;
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
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes5.dex */
final class zzek extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzeo zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzmg zzd;
    final /* synthetic */ zzaka zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzek(zzeo zzeoVar, String str, zzmg zzmgVar, zzaka zzakaVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzeoVar;
        this.zzc = str;
        this.zzd = zzmgVar;
        this.zze = zzakaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzek zzekVar = new zzek(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzekVar.zzf = obj;
        return zzekVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzek) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            CoroutineScope coroutineScope = (CoroutineScope) this.zzf;
            ArrayList arrayList = new ArrayList();
            zzeo zzeoVar = this.zzb;
            String str = this.zzc;
            zzeoVar.zzh().put(str, arrayList);
            ArrayList arrayList2 = new ArrayList();
            List list = zzeoVar.zza;
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : list) {
                if (((zzev) obj2).zzb()) {
                    arrayList3.add(obj2);
                }
            }
            int size = arrayList3.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new zzej(this.zzd, (zzev) arrayList3.get(i2), str, this.zze, arrayList, null), 3, null));
                str = str;
            }
            Job[] jobArr = (Job[]) arrayList2.toArray(new Job[0]);
            Job[] jobArr2 = (Job[]) Arrays.copyOf(jobArr, jobArr.length);
            this.zza = 1;
            if (AwaitKt.joinAll(jobArr2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m3086boximpl(Result.m3087constructorimpl(this.zzb.zzl(this.zzc)));
    }
}
