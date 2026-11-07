package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzjn extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzjt zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zziw zzf;
    final /* synthetic */ zzmd zzg;
    private /* synthetic */ Object zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjn(zzjt zzjtVar, zzmg zzmgVar, String str, long j, zziw zziwVar, zzmd zzmdVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzjtVar;
        this.zzc = zzmgVar;
        this.zzd = str;
        this.zze = j;
        this.zzf = zziwVar;
        this.zzg = zzmdVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzjn zzjnVar = new zzjn(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, continuation);
        zzjnVar.zzh = obj;
        return zzjnVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjn) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
    
        if (r15 == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0088, code lost:
    
        if (r15 != r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzh;
            zzjt zzjtVar = this.zzb;
            zzjj zzjjVar = zzjtVar.zzd;
            if (zzjjVar != null) {
                zzmgVar = this.zzc;
                String str = this.zzd;
                this.zzh = zzmgVar;
                this.zza = 1;
                obj = new zzmb(45, new zzjs(zzjjVar, str, null), null);
                if (obj != coroutine_suspended) {
                    this.zzh = null;
                    this.zza = 2;
                    obj = ((zzmb) obj).zza(zzmgVar, this);
                }
            } else {
                String str2 = this.zzd;
                long j = this.zze;
                zziw zziwVar = this.zzf;
                zzmd zzmdVar = this.zzg;
                this.zzh = zzlpVar;
                this.zza = 3;
                obj = new zzmc(new zzjr(zzjtVar, j, str2, zziwVar, zzmdVar, null));
                if (obj != coroutine_suspended) {
                    this.zzh = null;
                    this.zza = 4;
                    obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
                }
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzmgVar = (zzmg) this.zzh;
            ResultKt.throwOnFailure(obj);
            this.zzh = null;
            this.zza = 2;
            obj = ((zzmb) obj).zza(zzmgVar, this);
        } else {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return (zzjj) obj;
            }
            if (i != 3) {
                ResultKt.throwOnFailure(obj);
                return (zzjj) obj;
            }
            zzlpVar = (zzlp) this.zzh;
            ResultKt.throwOnFailure(obj);
            this.zzh = null;
            this.zza = 4;
            obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
        }
    }
}
