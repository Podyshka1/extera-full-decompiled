package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzdl extends SuspendLambda implements Function2 {
    final /* synthetic */ zzdo zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdl(zzdo zzdoVar, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.zza = zzdoVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzdl zzdlVar = new zzdl(this.zza, this.zzb, this.zzc, continuation);
        zzdlVar.zzd = obj;
        return zzdlVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdl) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzmg zzmgVar = (zzmg) this.zzd;
        zzdo zzdoVar = this.zza;
        String str = this.zzb;
        BuildersKt__Builders_commonKt.launch$default(zzdoVar.zzf.zzc(), null, null, new zzdk(zzmgVar, zzdoVar, str, this.zzc, new zzcz(zzdoVar, str, null, null), null), 3, null);
        return Unit.INSTANCE;
    }
}
