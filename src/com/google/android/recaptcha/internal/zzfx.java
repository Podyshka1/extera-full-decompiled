package com.google.android.recaptcha.internal;

import com.android.dx.io.Opcodes;
import java.util.Optional;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzfx extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgo zzb;
    final /* synthetic */ String zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfx(zzgo zzgoVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgoVar;
        this.zzc = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfx zzfxVar = new zzfx(this.zzb, this.zzc, continuation);
        zzfxVar.zzd = obj;
        return zzfxVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfx) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                zzlpVar = (zzlp) this.zzd;
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzlp zzlpVar2 = (zzlp) this.zzd;
                zzgo zzgoVar = this.zzb;
                zzgoVar.zzi.put(Boxing.boxInt(Opcodes.REM_INT_LIT16), this.zzc);
                Deferred deferredZzD = zzgoVar.zzD(Boxing.boxLong(((Number) zzgoVar.zzh().get(1)).longValue()), Optional.empty());
                this.zzd = zzlpVar2;
                this.zza = 1;
                Object objAwait = deferredZzD.await(this);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzlpVar = zzlpVar2;
                obj = objAwait;
            }
            Object value = ((Result) obj).getValue();
            ResultKt.throwOnFailure(value);
            byte[] bArr = (byte[]) value;
            zzaer zzaerVar = zzaer.zza;
            zzalt zzaltVarZzb = zzalt.zzb(zzaer.zzs(bArr, 0, bArr.length));
            this.zzb.zzG(zzlpVar.zza());
            return Result.m3086boximpl(Result.m3087constructorimpl(zzgo.zzH(this.zzc, zzaltVarZzb)));
        } catch (Exception e) {
            throw zzgo.zzA(this.zzb, e);
        }
    }
}
