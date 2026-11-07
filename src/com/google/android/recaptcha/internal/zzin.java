package com.google.android.recaptcha.internal;

import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class zzin extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzalc zzc;
    final /* synthetic */ zzio zzd;
    final /* synthetic */ zzaka zze;
    final /* synthetic */ zzdp zzf;
    final /* synthetic */ String zzg;
    final /* synthetic */ zzakg zzh;
    private /* synthetic */ Object zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzin(zzalc zzalcVar, zzio zzioVar, zzaka zzakaVar, zzdp zzdpVar, String str, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzalcVar;
        this.zzd = zzioVar;
        this.zze = zzakaVar;
        this.zzf = zzdpVar;
        this.zzg = str;
        this.zzh = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzin zzinVar = new zzin(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, continuation);
        zzinVar.zzi = obj;
        return zzinVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzin) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00db, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r12).zza(r1.zza(), r11) != r0) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a2 A[Catch: Exception -> 0x00e1, zzhg -> 0x00f5, TryCatch #2 {zzhg -> 0x00f5, Exception -> 0x00e1, blocks: (B:7:0x0012, B:10:0x001b, B:49:0x00cc, B:13:0x0024, B:37:0x009e, B:39:0x00a2, B:41:0x00a8, B:43:0x00ac, B:45:0x00b2, B:47:0x00b8, B:16:0x0031, B:34:0x008b, B:19:0x003d, B:20:0x0051, B:22:0x0057, B:26:0x006c, B:28:0x0070, B:31:0x0078), top: B:60:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ac A[Catch: Exception -> 0x00e1, zzhg -> 0x00f5, TryCatch #2 {zzhg -> 0x00f5, Exception -> 0x00e1, blocks: (B:7:0x0012, B:10:0x001b, B:49:0x00cc, B:13:0x0024, B:37:0x009e, B:39:0x00a2, B:41:0x00a8, B:43:0x00ac, B:45:0x00b2, B:47:0x00b8, B:16:0x0031, B:34:0x008b, B:19:0x003d, B:20:0x0051, B:22:0x0057, B:26:0x006c, B:28:0x0070, B:31:0x0078), top: B:60:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b8 A[Catch: Exception -> 0x00e1, zzhg -> 0x00f5, TryCatch #2 {zzhg -> 0x00f5, Exception -> 0x00e1, blocks: (B:7:0x0012, B:10:0x001b, B:49:0x00cc, B:13:0x0024, B:37:0x009e, B:39:0x00a2, B:41:0x00a8, B:43:0x00ac, B:45:0x00b2, B:47:0x00b8, B:16:0x0031, B:34:0x008b, B:19:0x003d, B:20:0x0051, B:22:0x0057, B:26:0x006c, B:28:0x0070, B:31:0x0078), top: B:60:0x000a }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzlp zzlpVar;
        Object next;
        zzlp zzlpVar2;
        zzlp zzlpVar3;
        String strZza;
        zzaka zzakaVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zzi;
                zzalc zzalcVar = this.zzc;
                zzaer zzaerVarZzc = zzalcVar.zzc();
                zzaer zzaerVarZzd = zzalcVar.zzd();
                Iterator it = zzalcVar.zzb().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (Intrinsics.areEqual(((zzale) next).zza(), "_GRECAPTCHA_KC")) {
                        break;
                    }
                }
                zzale zzaleVar = (zzale) next;
                String strZzb = zzaleVar != null ? zzaleVar.zzb() : null;
                if (strZzb != null) {
                    zzon zzonVar = this.zzd.zza;
                    this.zzi = zzlpVar;
                    this.zza = zzlpVar;
                    this.zzb = 1;
                    obj = zzonVar.zze(zzaerVarZzc, zzaerVarZzd, strZzb, this);
                    if (obj != coroutine_suspended) {
                        zzlpVar2 = zzlpVar;
                        this.zzi = zzlpVar2;
                        this.zza = null;
                        this.zzb = 2;
                        obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
                        if (obj != coroutine_suspended) {
                        }
                    }
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            if (i == 1) {
                zzlpVar = (zzlp) this.zza;
                zzlpVar2 = (zzlp) this.zzi;
                ResultKt.throwOnFailure(obj);
                this.zzi = zzlpVar2;
                this.zza = null;
                this.zzb = 2;
                obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
                if (obj != coroutine_suspended) {
                    zzlpVar3 = zzlpVar2;
                    zzaka zzakaVar2 = (zzaka) obj;
                    if (zzakaVar2 == null) {
                    }
                    zzakaVar = this.zze;
                    if (!Intrinsics.areEqual(strZza, zzakaVar == null ? zzakaVar.zza() : null)) {
                    }
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            }
            if (i == 2) {
                zzlpVar3 = (zzlp) this.zzi;
                ResultKt.throwOnFailure(obj);
                zzaka zzakaVar22 = (zzaka) obj;
                strZza = zzakaVar22 == null ? zzakaVar22.zza() : null;
                zzakaVar = this.zze;
                if (!Intrinsics.areEqual(strZza, zzakaVar == null ? zzakaVar.zza() : null)) {
                    zzdp zzdpVar = this.zzf;
                    String str = this.zzg;
                    String strZzb2 = this.zzh.zzb();
                    this.zzi = zzlpVar3;
                    this.zzb = 3;
                    obj = zzdpVar.zzc(str, strZzb2, zzakaVar22, this);
                    if (obj != coroutine_suspended) {
                        this.zzi = null;
                        this.zzb = 4;
                    }
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            if (i != 3) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            zzlpVar3 = (zzlp) this.zzi;
            ResultKt.throwOnFailure(obj);
            this.zzi = null;
            this.zzb = 4;
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzI, e2.getMessage(), null, 8, null);
        }
    }
}
