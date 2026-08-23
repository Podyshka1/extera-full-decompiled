package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzg {
    private final List zza;

    /* JADX WARN: Multi-variable type inference failed */
    public zzg() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ zzg(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        List listEmptyList = CollectionsKt.emptyList();
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        arrayList.addAll(listEmptyList);
    }

    public final Object zza(String str, long j, Continuation continuation) {
        return CoroutineScopeKt.coroutineScope(new zzc(this, str, j, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzb(long j, zzoe zzoeVar, Continuation continuation) {
        zzd zzdVar;
        if (continuation instanceof zzd) {
            zzdVar = (zzd) continuation;
            int i = zzdVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzdVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzdVar = new zzd(this, continuation);
            }
        }
        Object objCoroutineScope = zzdVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzdVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objCoroutineScope);
            zzf zzfVar = new zzf(this, j, zzoeVar, null);
            zzdVar.zzc = 1;
            objCoroutineScope = CoroutineScopeKt.coroutineScope(zzfVar, zzdVar);
            if (objCoroutineScope == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objCoroutineScope);
        }
        return ((Result) objCoroutineScope).m3611unboximpl();
    }

    public final List zzc() {
        return this.zza;
    }

    public final void zzd(zza zzaVar) {
        this.zza.add(zzaVar);
    }
}
