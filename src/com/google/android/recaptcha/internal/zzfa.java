package com.google.android.recaptcha.internal;

import java.nio.charset.StandardCharsets;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzfa extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzaka zzc;
    final /* synthetic */ zzmg zzd;
    final /* synthetic */ zzfd zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfa(zzaka zzakaVar, zzmg zzmgVar, zzfd zzfdVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzakaVar;
        this.zzd = zzmgVar;
        this.zze = zzfdVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzfa(this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfa) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        String strZzg;
        zzmg zzmgVar;
        zzaer zzaerVarZzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzaka zzakaVar = this.zzc;
                if (zzakaVar == null || (zzaerVarZzb = zzakaVar.zzb()) == null) {
                    strZzg = null;
                } else {
                    zzrv zzrvVarZzi = zzrv.zzi();
                    byte[] bArrZzy = zzaerVarZzb.zzy();
                    byte[] bArrZzb = zzri.zza().zza(zzrvVarZzi.zzg(bArrZzy, 0, bArrZzy.length), StandardCharsets.UTF_8).zzb();
                    zzaer zzaerVarZzs = zzaer.zzs(bArrZzb, 0, bArrZzb.length);
                    zzrv zzrvVarZzj = zzrv.zzj();
                    byte[] bArrZzy2 = zzaerVarZzs.zzy();
                    strZzg = zzrvVarZzj.zzg(bArrZzy2, 0, bArrZzy2.length);
                }
                if (strZzg == null || strZzg.length() == 0) {
                    throw new zzhg(zzhf.zzb, zzhe.zzav, null, null, 12, null);
                }
                zzmgVar = this.zzd;
                zzfp zzfpVar = this.zze.zza;
                this.zza = zzmgVar;
                this.zzb = 1;
                obj = new zzmc(new zzfe(zzfpVar, strZzg, null));
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                zzfd zzfdVar = this.zze;
                zzaly zzalyVarZzb = zzamb.zzb();
                zzalz zzalzVarZza = zzama.zza();
                zzalzVarZza.zzc((String) obj);
                zzalyVarZzb.zza((zzama) zzalzVarZza.zzp());
                return zzew.zza(zzfdVar, (zzamb) zzalyVarZzb.zzp());
            }
            zzmgVar = (zzmg) this.zza;
            ResultKt.throwOnFailure(obj);
            this.zza = null;
            this.zzb = 2;
            obj = ((zzmc) obj).zza(zzmgVar, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            zzfd zzfdVar2 = this.zze;
            zzaly zzalyVarZzb2 = zzamb.zzb();
            zzalz zzalzVarZza2 = zzama.zza();
            zzalzVarZza2.zzc((String) obj);
            zzalyVarZzb2.zza((zzama) zzalzVarZza2.zzp());
            return zzew.zza(zzfdVar2, (zzamb) zzalyVarZzb2.zzp());
        } catch (Exception e) {
            throw new zzhg(zzhf.zzb, zzhe.zzt, e.getMessage(), e);
        }
    }
}
