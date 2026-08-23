package com.google.android.recaptcha.internal;

import java.util.Arrays;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzby extends SuspendLambda implements Function2 {
    final /* synthetic */ Exception zza;
    final /* synthetic */ zzcj zzb;
    final /* synthetic */ zzca zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzby(Exception exc, zzcj zzcjVar, zzca zzcaVar, Continuation continuation) {
        super(2, continuation);
        this.zza = exc;
        this.zzb = zzcjVar;
        this.zzc = zzcaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzby zzbyVar = new zzby(this.zza, this.zzb, this.zzc, continuation);
        zzbyVar.zzd = obj;
        return zzbyVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzby) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzpg zzpgVarZza;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.zzd;
        Exception exc = this.zza;
        if (exc instanceof zzae) {
            zzpgVarZza = ((zzae) exc).zza();
            zzpgVarZza.zzd(this.zzb.zza());
        } else {
            zzcj zzcjVar = this.zzb;
            zzpg zzpgVarZzf = zzph.zzf();
            zzpgVarZzf.zzd(zzcjVar.zza());
            zzpgVarZzf.zzp(2);
            zzpgVarZzf.zze(2);
            zzpgVarZza = zzpgVarZzf;
        }
        zzph zzphVar = (zzph) zzpgVarZza.zzj();
        zzphVar.zzk();
        zzphVar.zzj();
        Reflection.getOrCreateKotlinClass(this.zza.getClass()).getSimpleName();
        this.zza.getMessage();
        zzcj zzcjVar2 = this.zzb;
        zzz zzzVarZzb = zzcjVar2.zzb();
        zzz zzzVar = zzcjVar2.zza;
        if (zzzVar == null) {
            zzzVar = null;
        }
        zzno zznoVarZza = zzbp.zza(zzzVarZzb, zzzVar);
        String strZzd = this.zzb.zzd();
        if (strZzd.length() == 0) {
            strZzd = "recaptcha.m.Main.rge";
        }
        if (CoroutineScopeKt.isActive(coroutineScope)) {
            zzca zzcaVar = this.zzc;
            zzfy zzfyVarZzh = zzfy.zzh();
            byte[] bArrZzd = zzphVar.zzd();
            String strZzi = zzfyVarZzh.zzi(bArrZzd, 0, bArrZzd.length);
            zzfy zzfyVarZzh2 = zzfy.zzh();
            byte[] bArrZzd2 = zznoVarZza.zzd();
            zzcaVar.zzc.zze().zzb(strZzd, (String[]) Arrays.copyOf(new String[]{strZzi, zzfyVarZzh2.zzi(bArrZzd2, 0, bArrZzd2.length)}, 2));
        }
        return Unit.INSTANCE;
    }
}
