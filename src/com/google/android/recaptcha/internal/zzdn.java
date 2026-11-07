package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zzdn extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    Object zzd;
    Object zze;
    int zzf;
    final /* synthetic */ zzdo zzg;
    final /* synthetic */ String zzh;
    final /* synthetic */ zzcz zzi;
    final /* synthetic */ String zzj;
    private /* synthetic */ Object zzk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdn(zzdo zzdoVar, String str, zzcz zzczVar, String str2, Continuation continuation) {
        super(2, continuation);
        this.zzg = zzdoVar;
        this.zzh = str;
        this.zzi = zzczVar;
        this.zzj = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzdn zzdnVar = new zzdn(this.zzg, this.zzh, this.zzi, this.zzj, continuation);
        zzdnVar.zzk = obj;
        return zzdnVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdn) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzmg zzmgVar;
        zzdo zzdoVar;
        String str;
        zzcz zzczVar;
        String str2;
        Mutex mutex;
        String str3;
        zzdo zzdoVar2;
        zzmg zzmgVar2;
        Mutex mutex2;
        Mutex mutex3;
        zzhp zzhpVar;
        zzdm zzdmVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzf;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    zzmgVar = (zzmg) this.zzk;
                    zzdoVar = this.zzg;
                    str = this.zzh;
                    zzcz zzczVar2 = this.zzi;
                    String str4 = this.zzj;
                    Mutex mutex4 = zzdoVar.zze;
                    this.zzk = zzmgVar;
                    this.zza = mutex4;
                    this.zzb = zzdoVar;
                    this.zzc = str;
                    this.zzd = zzczVar2;
                    this.zze = str4;
                    this.zzf = 1;
                    if (mutex4.lock(null, this) != coroutine_suspended) {
                        zzczVar = zzczVar2;
                        str2 = str4;
                        mutex = mutex4;
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    mutex3 = (Mutex) this.zzk;
                    try {
                        ResultKt.throwOnFailure(obj);
                        Unit unit = Unit.INSTANCE;
                        mutex3.unlock(null);
                        return Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        mutex3.unlock(null);
                        throw th;
                    }
                }
                String str5 = (String) this.zze;
                zzcz zzczVar3 = (zzcz) this.zzd;
                str = (String) this.zzc;
                zzdoVar = (zzdo) this.zzb;
                Mutex mutex5 = (Mutex) this.zza;
                zzmgVar = (zzmg) this.zzk;
                ResultKt.throwOnFailure(obj);
                str2 = str5;
                zzczVar = zzczVar3;
                mutex = mutex5;
                if (zzhpVar.zza(5, 100L, 1000L, 2.0d, zzdmVar, this) != coroutine_suspended) {
                    mutex3 = mutex2;
                    Unit unit2 = Unit.INSTANCE;
                    mutex3.unlock(null);
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                th = th2;
                mutex3 = mutex2;
                mutex3.unlock(null);
                throw th;
            }
            zzhpVar = zzhp.zza;
            zzdmVar = new zzdm(zzmgVar2, zzdoVar2, str3, zzczVar, str2, null);
            this.zzk = mutex;
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzf = 2;
            mutex2 = mutex;
        } catch (Throwable th3) {
            th = th3;
            mutex2 = mutex;
        }
        str3 = str;
        zzdoVar2 = zzdoVar;
        zzmgVar2 = zzmgVar;
    }
}
