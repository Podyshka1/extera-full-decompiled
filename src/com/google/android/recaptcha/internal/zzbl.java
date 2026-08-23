package com.google.android.recaptcha.internal;

import android.content.ContentValues;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzbl extends SuspendLambda implements Function2 {
    final /* synthetic */ zzbm zza;
    final /* synthetic */ zzpd zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbl(zzbm zzbmVar, zzpd zzpdVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzbmVar;
        this.zzb = zzpdVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzbl(this.zza, this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzbl) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzbm zzbmVar = this.zza;
        zzpd zzpdVar = this.zzb;
        synchronized (zzbh.class) {
            try {
                if (zzbmVar.zze != null) {
                    byte[] bArrZzd = zzpdVar.zzd();
                    zzba zzbaVar = new zzba(zzfy.zzg().zzi(bArrZzd, 0, bArrZzd.length), System.currentTimeMillis(), 0);
                    zzaz zzazVar = zzbmVar.zze;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("ss", zzbaVar.zzc());
                    contentValues.put("ts", Long.valueOf(zzbaVar.zzb()));
                    zzazVar.getWritableDatabase().insert("ce", null, contentValues);
                    int iZzb = zzbmVar.zze.zzb() - 500;
                    if (iZzb > 0) {
                        zzbmVar.zze.zza(CollectionsKt.take(zzbmVar.zze.zzd(), iZzb));
                    }
                    if (zzbmVar.zze.zzb() >= 20) {
                        zzbmVar.zzg();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Unit.INSTANCE;
    }
}
