package com.google.android.recaptcha.internal;

import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.TimeoutCancellationException;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;
import org.chromium.net.apihelpers.UploadDataProviders;

/* JADX INFO: loaded from: classes5.dex */
public final class zzna implements zzmx {
    private final zznd zza;
    private final CronetEngine zzb;
    private final ExecutorService zzc;

    public zzna(zznd zzndVar, CronetEngine cronetEngine, ExecutorService executorService) {
        this.zza = zzndVar;
        this.zzb = cronetEngine;
        this.zzc = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zze(String str, String str2, byte[] bArr, Map map, Continuation continuation) throws zzhg {
        zzmy zzmyVar;
        if (continuation instanceof zzmy) {
            zzmyVar = (zzmy) continuation;
            int i = zzmyVar.zzd;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzmyVar.zzd = i - Integer.MIN_VALUE;
            } else {
                zzmyVar = new zzmy(this, continuation);
            }
        }
        Object obj = zzmyVar.zzb;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzmyVar.zzd;
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            if (!this.zza.zza(str)) {
                throw new zzhg(zzhf.zzc, zzhe.zzp, null, null, 12, null);
            }
            zzmyVar.zze = str;
            zzmyVar.zzf = str2;
            zzmyVar.zzg = bArr;
            zzmyVar.zza = map;
            zzmyVar.zzd = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(zzmyVar), 1);
            cancellableContinuationImpl.initCancellability();
            CronetEngine cronetEngine = this.zzb;
            zznc zzncVar = new zznc(cancellableContinuationImpl);
            ExecutorService executorService = this.zzc;
            UrlRequest.Builder builderNewUrlRequestBuilder = cronetEngine.newUrlRequestBuilder(str, zzncVar, executorService);
            builderNewUrlRequestBuilder.setHttpMethod(str2);
            for (Map.Entry entry : map.entrySet()) {
                builderNewUrlRequestBuilder.addHeader((String) entry.getKey(), (String) entry.getValue());
            }
            if (bArr != null) {
                builderNewUrlRequestBuilder.setUploadDataProvider(UploadDataProviders.create(bArr), executorService);
            }
            builderNewUrlRequestBuilder.setTrafficStatsTag((int) Thread.currentThread().getId());
            UrlRequest urlRequestBuild = builderNewUrlRequestBuilder.build();
            urlRequestBuild.start();
            cancellableContinuationImpl.invokeOnCancellation(new zzmz(str, urlRequestBuild));
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(zzmyVar);
            }
            return result == coroutine_suspended ? coroutine_suspended : result;
        } catch (zzhg e) {
            throw e;
        } catch (TimeoutCancellationException e2) {
            throw new zzhg(zzhf.zzc, zzhe.zzb, e2.getMessage(), null, 8, null);
        } catch (Exception e3) {
            throw new zzhg(zzhf.zzc, zzhe.zzw, e3.getMessage(), null, 8, null);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzmx
    public final Object zza(String str, byte[] bArr, Continuation continuation) {
        return zze(str, "POST", bArr, MapsKt.mapOf(TuplesKt.to("Content-Type", "application/x-protobuffer")), continuation);
    }

    @Override // com.google.android.recaptcha.internal.zzmx
    public final Object zzb(String str, byte[] bArr, Map map, Continuation continuation) {
        return zze("https://www.gstatic.com/recaptcha/verify_key/orcas/prod/android/verify_key.txt", "GET", null, map, continuation);
    }
}
