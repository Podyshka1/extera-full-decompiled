package com.google.android.recaptcha.internal;

import android.os.Build;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzeb extends SuspendLambda implements Function2 {
    final /* synthetic */ zzec zza;
    private /* synthetic */ Object zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeb(zzec zzecVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzecVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzeb zzebVar = new zzeb(this.zza, continuation);
        zzebVar.zzb = obj;
        return zzebVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzeb) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzmg zzmgVar = (zzmg) this.zzb;
        int i = Build.VERSION.SDK_INT;
        zzajv zzajvVarZza = zzajw.zza();
        zzajvVarZza.zza(zzmgVar.zza().zza());
        zzec zzecVar = this.zza;
        zzajvVarZza.zzb(zzecVar.zza.getPackageName());
        zzajvVarZza.zzu(zzecVar.zzb.zzd() + (-2) != 1 ? 4 : 3);
        zzajvVarZza.zzc("18.9.2");
        zzajvVarZza.zzd(String.valueOf(i));
        zzajvVarZza.zze(zzmgVar.zza().zzb());
        zzajvVarZza.zzf(zzecVar.zzb.zza());
        zzajvVarZza.zzg(zzecVar.zzb.zzb());
        zzajvVarZza.zzh(zzecVar.zzb.zzc());
        zzajvVarZza.zzt(zzgp.zzb());
        byte[] bArrZzw = ((zzajw) zzajvVarZza.zzp()).zzw();
        String strZzg = zzrv.zzj().zzg(bArrZzw, 0, bArrZzw.length);
        zzaly zzalyVarZzb = zzamb.zzb();
        zzalz zzalzVarZza = zzama.zza();
        zzalzVarZza.zzc(strZzg);
        zzalyVarZzb.zzc(CollectionsKt.listOf((zzama) zzalzVarZza.zzp()));
        return zzew.zza(zzecVar, (zzamb) zzalyVarZzb.zzp());
    }
}
