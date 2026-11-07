package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzks extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzaku zzc;
    final /* synthetic */ zzakg zzd;
    final /* synthetic */ zzkw zze;
    final /* synthetic */ long zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzks(String str, zzaku zzakuVar, zzakg zzakgVar, String str2, zzkw zzkwVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = str;
        this.zzc = zzakuVar;
        this.zzd = zzakgVar;
        this.zze = zzkwVar;
        this.zzf = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzks zzksVar = new zzks(this.zzb, this.zzc, this.zzd, null, this.zze, this.zzf, continuation);
        zzksVar.zzg = obj;
        return zzksVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzks) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0072, code lost:
    
        if (r11 == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzg;
            String str = this.zzb;
            zzaku zzakuVar = this.zzc;
            zzakg zzakgVar = this.zzd;
            String strZza = zzmgVar.zza().zza();
            zzakz zzakzVarZza = zzala.zza();
            zzakzVarZza.zzc(strZza);
            zzakzVarZza.zzd(str);
            zzakzVarZza.zzb(zzakgVar.zzb());
            zzakzVarZza.zza(zzakgVar.zza());
            zzakzVarZza.zze(zzakuVar);
            zzala zzalaVar = (zzala) zzakzVarZza.zzp();
            zzkw zzkwVar = this.zze;
            long j = this.zzf;
            this.zzg = zzmgVar;
            this.zza = 1;
            obj = new zzmb(28, new zzkv(zzkwVar, j, zzalaVar, null), null);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return (zzalc) obj;
        }
        zzmgVar = (zzmg) this.zzg;
        ResultKt.throwOnFailure(obj);
        this.zzg = null;
        this.zza = 2;
        obj = ((zzmb) obj).zza(zzmgVar, this);
    }
}
