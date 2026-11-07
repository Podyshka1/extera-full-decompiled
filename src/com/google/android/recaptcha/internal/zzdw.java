package com.google.android.recaptcha.internal;

import android.util.Base64;
import com.google.android.gms.recaptchabase.ExecuteRequest;
import com.google.android.gms.recaptchabase.ExecuteResult;
import com.google.android.gms.recaptchabase.RecaptchaBase;
import java.nio.charset.StandardCharsets;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzdw extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdy zzb;
    final /* synthetic */ zzaka zzc;
    final /* synthetic */ String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdw(zzdy zzdyVar, zzaka zzakaVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzdyVar;
        this.zzc = zzakaVar;
        this.zzd = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzdw(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdw) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzaer zzaerVarZze;
        String payload;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Deferred deferred = this.zzb.zzb;
                    if (deferred == null) {
                        deferred = null;
                    }
                    this.zza = 1;
                    obj = deferred.await(this);
                    if (obj != coroutine_suspended) {
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    ResultKt.throwOnFailure(obj);
                    ExecuteResult executeResult = (ExecuteResult) obj;
                    String str = this.zzd;
                    zzakt zzaktVarZza = zzaku.zza();
                    zzaktVarZza.zza(str);
                    payload = executeResult.getPayload();
                    if (payload != null) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                        return null;
                    }
                    zzalt zzaltVarZzc = zzalt.zzc(Base64.decode(payload, 0));
                    zzals zzalsVar = (zzals) zzaltVarZzc.zzG();
                    zzalsVar.zzd();
                    for (zzalr zzalrVar : zzaltVarZzc.zza()) {
                        zzalp zzalpVar = (zzalp) zzalrVar.zzG();
                        if (zzalrVar.zza()) {
                            try {
                                byte[] bArrDecode = Base64.decode(zzalrVar.zzb(), 0);
                                zzaer zzaerVar = zzaer.zza;
                                zzalpVar.zze(zzaer.zzs(bArrDecode, 0, bArrDecode.length));
                            } catch (IllegalArgumentException unused) {
                                zzalrVar.zzh();
                            }
                            zzalpVar.zza();
                        }
                        if (zzalrVar.zzc()) {
                            try {
                                byte[] bArrDecode2 = Base64.decode(zzalrVar.zzd(), 0);
                                zzaer zzaerVar2 = zzaer.zza;
                                zzalpVar.zzf(zzaer.zzs(bArrDecode2, 0, bArrDecode2.length));
                            } catch (IllegalArgumentException unused2) {
                                zzalrVar.zzh();
                            }
                            zzalpVar.zzb();
                        }
                        if (zzalpVar.zzc()) {
                            try {
                                zzaly zzalyVar = (zzaly) zzamb.zza(zzalpVar.zzd()).zzG();
                                zzalz zzalzVarZza = zzama.zza();
                                zzalzVarZza.zza(true);
                                zzalyVar.zzb(zzalzVarZza);
                                zzalpVar.zze(((zzamb) zzalyVar.zzp()).zzv());
                            } catch (Exception unused3) {
                            }
                        }
                        zzalsVar.zzb((zzalr) zzalpVar.zzp());
                    }
                    zzakb zzakbVarZza = zzakc.zza();
                    zzakbVarZza.zza((zzalt) zzalsVar.zzp());
                    zzaktVarZza.zzd((zzakc) zzakbVarZza.zzp());
                    return Result.m3086boximpl(Result.m3087constructorimpl((zzaku) zzaktVarZza.zzp()));
                }
                ResultKt.throwOnFailure(obj);
                zzaka zzakaVar = this.zzc;
                String strZzz = (zzakaVar == null || (zzaerVarZze = zzakaVar.zze()) == null) ? null : zzaerVarZze.zzz(StandardCharsets.UTF_8);
                if (strZzz == null || strZzz.length() == 0) {
                    Result.Companion companion = Result.INSTANCE;
                    return Result.m3086boximpl(Result.m3087constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzav, null, null, 12, null))));
                }
                Deferred deferredZza = zzic.zza(RecaptchaBase.getClient(this.zzb.zza).execute(new ExecuteRequest.Builder().setNonce(strZzz).setExecuteId(this.zzd).build()));
                this.zza = 2;
                obj = deferredZza.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ExecuteResult executeResult2 = (ExecuteResult) obj;
                String str2 = this.zzd;
                zzakt zzaktVarZza2 = zzaku.zza();
                zzaktVarZza2.zza(str2);
                payload = executeResult2.getPayload();
                if (payload != null) {
                }
            } catch (Exception unused4) {
                Result.Companion companion2 = Result.INSTANCE;
                return Result.m3086boximpl(Result.m3087constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzH, null, null, 12, null))));
            }
        } catch (Exception unused5) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m3086boximpl(Result.m3087constructorimpl(ResultKt.createFailure(new zzhg(zzhf.zzb, zzhe.zzG, null, null, 12, null))));
        }
    }
}
