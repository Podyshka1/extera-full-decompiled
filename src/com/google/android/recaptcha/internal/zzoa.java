package com.google.android.recaptcha.internal;

import android.util.Base64;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzoa {
    private final zzoo zza;
    private final zznf zzb;
    private final String zzc;
    private final zzahe zzd;
    private final Mutex zze = MutexKt.Mutex$default(false, 1, null);
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;

    public /* synthetic */ zzoa(zzoo zzooVar, zznf zznfVar, String str, int i, int i2, int i3, int i4, zzahe zzaheVar, DefaultConstructorMarker defaultConstructorMarker) {
        this.zza = zzooVar;
        this.zzb = zznfVar;
        this.zzc = str;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = i3;
        this.zzi = i4;
        this.zzd = zzaheVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0073, code lost:
    
        if (r7.zzb(r6, (java.lang.String) r9, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zza(zzagx zzagxVar, String str, Continuation continuation) {
        zznz zznzVar;
        zzoo zzooVar;
        String str2;
        if (continuation instanceof zznz) {
            zznzVar = (zznz) continuation;
            int i = zznzVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zznzVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zznzVar = new zznz(this, continuation);
            }
        }
        Object obj = zznzVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zznzVar.zzd;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            zzoo zzooVar2 = this.zza;
            String str3 = this.zzc;
            String strValueOf = String.valueOf(str);
            zznzVar.zza = zzooVar2;
            String strConcat = str3.concat(strValueOf);
            zznzVar.zze = strConcat;
            zznzVar.zzd = 1;
            String strEncodeToString = Base64.encodeToString(this.zzb.zza(zzagxVar.zzw()), 8);
            if (strEncodeToString != coroutine_suspended) {
                zzooVar = zzooVar2;
                obj = strEncodeToString;
                str2 = strConcat;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str2 = zznzVar.zze;
        zzooVar = (zzoo) zznzVar.zza;
        ResultKt.throwOnFailure(obj);
        zznzVar.zza = null;
        zznzVar.zze = null;
        zznzVar.zzd = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzb(String str, Continuation continuation) throws zzhg {
        zznw zznwVar;
        if (continuation instanceof zznw) {
            zznwVar = (zznw) continuation;
            int i = zznwVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zznwVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zznwVar = new zznw(this, continuation);
            }
        }
        Object objZzc = zznwVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zznwVar.zzc;
        zzagx zzagxVar = null;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objZzc);
                zzoo zzooVar = this.zza;
                String str2 = this.zzc;
                StringBuilder sb = new StringBuilder(str2.length() + String.valueOf(str).length());
                sb.append(str2);
                sb.append(str);
                String string = sb.toString();
                zznwVar.zzc = 1;
                objZzc = zzooVar.zzc(string, zznwVar);
                if (objZzc == coroutine_suspended) {
                }
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    ResultKt.throwOnFailure(objZzc);
                    return objZzc;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objZzc);
            String str3 = (String) objZzc;
            if (str3 == null) {
                throw new zzhg(zzhf.zzb, zzhe.zzas, null, null, 12, null);
            }
            zznwVar.zzc = 2;
            byte[] bArrZzb = this.zzb.zzb(Base64.decode(str3, 8));
            if (bArrZzb != null) {
                try {
                    zzagxVar = (zzagx) this.zzd.zzb(bArrZzb);
                } catch (Exception e) {
                    throw new zzhg(zzhf.zzb, zzhe.zzau, e.getMessage(), null, 8, null);
                }
            }
            return zzagxVar == coroutine_suspended ? coroutine_suspended : zzagxVar;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzat, e2.getMessage(), null, 8, null);
        }
    }

    public static /* synthetic */ Object zze(zzoa zzoaVar, zzagx zzagxVar, Continuation continuation) {
        return new zzmb(zzoaVar.zzg, new zzny(zzoaVar, zzagxVar, null), null);
    }

    public static /* synthetic */ Object zzg(zzoa zzoaVar, zzagx zzagxVar, Continuation continuation) {
        return new zzmb(zzoaVar.zzi, new zznx(zzoaVar, zzagxVar, null), null);
    }

    public static /* synthetic */ Object zzi(zzoa zzoaVar, Continuation continuation) {
        return new zzmc(new zznv(zzoaVar, null));
    }

    public final String zzc() {
        return this.zzc;
    }

    public final Mutex zzd() {
        return this.zze;
    }

    public final Object zzf(Function1 function1, Continuation continuation) {
        return new zzmb(this.zzh, new zznt(this, function1, null), null);
    }

    public final Object zzh(Continuation continuation) {
        return zzi(this, continuation);
    }
}
