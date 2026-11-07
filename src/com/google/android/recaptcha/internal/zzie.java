package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzie extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzif zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzie(zzif zzifVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzifVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzie zzieVar = new zzie(this.zzc, continuation);
        zzieVar.zzd = obj;
        return zzieVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzie) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        zzaka zzakaVar;
        String strZza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzd;
            zzon zzonVar = this.zzc.zzb;
            this.zzd = zzmgVar;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = zzonVar.zzg(this);
            if (obj != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            zzmgVar3 = (zzmg) this.zzd;
            ResultKt.throwOnFailure(obj);
            zzakaVar = (zzaka) obj;
            if (zzakaVar != null || (strZza = zzakaVar.zza()) == null) {
                strZza = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            zzame zzameVarZza = zzamf.zza();
            zzameVarZza.zza(zzmgVar3.zza().zza());
            zzif zzifVar = this.zzc;
            zzameVarZza.zzb(zzifVar.zza.getPackageName());
            zzameVarZza.zzv(zzifVar.zze.zzd());
            zzameVarZza.zzc(zzif.zzc);
            zzameVarZza.zzd(zzmgVar3.zza().zzb());
            zzameVarZza.zze(String.valueOf(zzif.zzd));
            zzameVarZza.zzf(strZza);
            zzameVarZza.zzg(zzifVar.zze.zza());
            zzameVarZza.zzh(zzifVar.zze.zzb());
            zzameVarZza.zzt(zzifVar.zze.zzc());
            zzameVarZza.zzu(zzgp.zzb());
            return zzameVarZza.zzp();
        }
        zzmg zzmgVar4 = (zzmg) this.zza;
        zzmg zzmgVar5 = (zzmg) this.zzd;
        ResultKt.throwOnFailure(obj);
        zzmgVar2 = zzmgVar4;
        zzmgVar = zzmgVar5;
        this.zzd = zzmgVar;
        this.zza = null;
        this.zzb = 2;
        obj = ((zzmc) obj).zza(zzmgVar2, this);
        if (obj != coroutine_suspended) {
            zzmgVar3 = zzmgVar;
            zzakaVar = (zzaka) obj;
            if (zzakaVar != null) {
                strZza = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            zzame zzameVarZza2 = zzamf.zza();
            zzameVarZza2.zza(zzmgVar3.zza().zza());
            zzif zzifVar2 = this.zzc;
            zzameVarZza2.zzb(zzifVar2.zza.getPackageName());
            zzameVarZza2.zzv(zzifVar2.zze.zzd());
            zzameVarZza2.zzc(zzif.zzc);
            zzameVarZza2.zzd(zzmgVar3.zza().zzb());
            zzameVarZza2.zze(String.valueOf(zzif.zzd));
            zzameVarZza2.zzf(strZza);
            zzameVarZza2.zzg(zzifVar2.zze.zza());
            zzameVarZza2.zzh(zzifVar2.zze.zzb());
            zzameVarZza2.zzt(zzifVar2.zze.zzc());
            zzameVarZza2.zzu(zzgp.zzb());
            return zzameVarZza2.zzp();
        }
        return coroutine_suspended;
    }
}
