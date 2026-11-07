package com.google.android.recaptcha.internal;

import com.google.android.play.core.integrity.StandardIntegrityManager;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfp {
    public CompletableDeferred zza;
    private final StandardIntegrityManager zzb;
    private long zzd;
    private boolean zzf;
    private final zzhu zzg;
    private zzfq zzc = zzfq.zza;
    private final Mutex zze = MutexKt.Mutex$default(false, 1, null);

    public zzfp(zzhu zzhuVar, StandardIntegrityManager standardIntegrityManager, long j) {
        this.zzg = zzhuVar;
        this.zzb = standardIntegrityManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzl(Continuation continuation) {
        zzff zzffVar;
        if (continuation instanceof zzff) {
            zzffVar = (zzff) continuation;
            int i = zzffVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzffVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzffVar = new zzff(this, continuation);
            }
        }
        Object obj = zzffVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzffVar.zzc;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Deferred deferredZza = zzic.zza(this.zzb.prepareIntegrityToken(StandardIntegrityManager.PrepareIntegrityTokenRequest.builder().setCloudProjectNumber(this.zzd).build()));
        zzffVar.zzc = 1;
        Object objAwait = deferredZza.await(zzffVar);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
    
        if (r8 == r1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzm(String str, Continuation continuation) {
        zzfj zzfjVar;
        if (continuation instanceof zzfj) {
            zzfjVar = (zzfj) continuation;
            int i = zzfjVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzfjVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzfjVar = new zzfj(this, continuation);
            }
        }
        Object objAwait = zzfjVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzfjVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwait);
            CompletableDeferred completableDeferredZza = zza();
            zzfjVar.zzd = str;
            zzfjVar.zzc = 1;
            objAwait = completableDeferredZza.await(zzfjVar);
            if (objAwait != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objAwait);
                return ((StandardIntegrityManager.StandardIntegrityToken) objAwait).token();
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        str = zzfjVar.zzd;
        ResultKt.throwOnFailure(objAwait);
        Deferred deferredZza = zzic.zza(((StandardIntegrityManager.StandardIntegrityTokenProvider) objAwait).request(StandardIntegrityManager.StandardIntegrityTokenRequest.builder().setRequestHash(str).build()));
        zzfjVar.zzd = null;
        zzfjVar.zzc = 2;
        objAwait = deferredZza.await(zzfjVar);
    }

    public final CompletableDeferred zza() {
        CompletableDeferred completableDeferred = this.zza;
        if (completableDeferred != null) {
            return completableDeferred;
        }
        return null;
    }

    public final void zzb(long j) {
        this.zzd = j;
    }

    public final Object zzc(Continuation continuation) {
        return new zzmc(new zzfo(this, null));
    }
}
