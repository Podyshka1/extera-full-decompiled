package com.google.android.recaptcha.internal;

import com.google.android.play.core.integrity.StandardIntegrityException;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzfg extends SuspendLambda implements Function2 {
    long zza;
    boolean zzb;
    int zzc;
    final /* synthetic */ zzfp zzd;
    final /* synthetic */ Ref.ObjectRef zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfg(zzfp zzfpVar, Ref.ObjectRef objectRef, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzfpVar;
        this.zze = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzfg(this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfg) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r8 != r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0075, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r4, r7) != r0) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026 A[Catch: Exception -> 0x001c, TRY_ENTER, TryCatch #0 {Exception -> 0x001c, blocks: (B:14:0x0026, B:16:0x0032, B:8:0x0018), top: B:41:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Type inference failed for: r8v2, types: [T, java.lang.Exception, java.lang.Throwable] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0042 -> B:13:0x0024). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0075 -> B:6:0x0013). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        long j;
        boolean z;
        boolean z2;
        int errorCode;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            j = 1000;
            z = true;
            if (!z) {
            }
        } else if (i != 1) {
            z2 = this.zzb;
            j = this.zza;
            ResultKt.throwOnFailure(obj);
            z = z2;
            j += j;
            if (!z) {
                return Unit.INSTANCE;
            }
            zzfp zzfpVar = this.zzd;
            this.zza = j;
            this.zzc = 1;
            obj = zzfpVar.zzl(this);
        } else {
            j = this.zza;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Exception e) {
                this.zze.element = e;
                z2 = (e instanceof StandardIntegrityException) && ((errorCode = ((StandardIntegrityException) e).getErrorCode()) == -100 || errorCode == -18 || errorCode == -12 || errorCode == -8 || errorCode == -3);
                if (!z2) {
                    throw e;
                }
                this.zza = j;
                this.zzb = true;
                this.zzc = 2;
            }
            zzfp zzfpVar2 = this.zzd;
            zzfpVar2.zza().complete((StandardIntegrityManager.StandardIntegrityTokenProvider) obj);
            zzfpVar2.zzc = zzfq.zzc;
            z = false;
            if (!z) {
            }
        }
    }
}
