package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzcc extends SuspendLambda implements Function2 {
    final /* synthetic */ String[] zza;
    final /* synthetic */ zzcd zzb;
    final /* synthetic */ String zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcc(String[] strArr, zzcd zzcdVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zza = strArr;
        this.zzb = zzcdVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzcc(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcc) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        String[] strArr = this.zza;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add("\"" + str + "\"");
        }
        this.zzb.zza.evaluateJavascript(this.zzc + "(" + CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, null, 62, null) + ")", null);
        return Unit.INSTANCE;
    }
}
