package com.google.android.gms.internal.mlkit_genai_prompt;

import android.util.Log;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.prompt.CachedContext;
import com.google.mlkit.genai.prompt.CreateCachedContextRequest;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes4.dex */
final class zzwk extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzaal zzd;
    final /* synthetic */ zzwl zze;
    final /* synthetic */ CreateCachedContextRequest zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwk(zzaal zzaalVar, zzwl zzwlVar, CreateCachedContextRequest createCachedContextRequest, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzaalVar;
        this.zze = zzwlVar;
        this.zzf = createCachedContextRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzwk zzwkVar = new zzwk(this.zzd, this.zze, this.zzf, continuation);
        zzwkVar.zzg = obj;
        return zzwkVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwk) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c1 A[Catch: all -> 0x0026, GenAiException -> 0x00ec, TRY_LEAVE, TryCatch #4 {all -> 0x0026, blocks: (B:6:0x001e, B:30:0x00b9, B:32:0x00c1, B:39:0x00ee, B:40:0x010e, B:51:0x011d, B:52:0x0120), top: B:59:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ee A[Catch: all -> 0x0026, GenAiException -> 0x00ec, TRY_ENTER, TryCatch #4 {all -> 0x0026, blocks: (B:6:0x001e, B:30:0x00b9, B:32:0x00c1, B:39:0x00ee, B:40:0x010e, B:51:0x011d, B:52:0x0120), top: B:59:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0138  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzpk zzpkVarZza;
        String str;
        Object objZzI;
        zzpk zzpkVar;
        Deferred deferred;
        String str2;
        Object objAwait;
        zzwl zzwlVar;
        CreateCachedContextRequest createCachedContextRequest;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.zzg;
            zzaal zzaalVar = this.zzd;
            zzwl zzwlVar2 = this.zze;
            String strZza = zzaalVar.zza();
            ConcurrentHashMap concurrentHashMap = zzwlVar2.zzb;
            CreateCachedContextRequest createCachedContextRequest2 = this.zzf;
            concurrentHashMap.put(createCachedContextRequest2, zzaalVar);
            zzpkVarZza = zzpk.zza();
            if (zzwlVar2.zza.putIfAbsent(createCachedContextRequest2, zzpkVarZza) != null) {
                throw new GenAiException("Cache creation already in progress for prefix: ".concat(String.valueOf(strZza)), (Throwable) null, -103);
            }
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zzwi(zzpkVarZza, null), 3, null);
            deferredAsync$default.invokeOnCompletion(new zzwj(zzpkVarZza));
            try {
                this.zzg = strZza;
                this.zza = zzpkVarZza;
                this.zzb = deferredAsync$default;
                this.zzc = 1;
                objZzI = zzwlVar2.zzI(createCachedContextRequest2, null, this);
                if (objZzI != coroutine_suspended) {
                    zzpkVar = zzpkVarZza;
                    deferred = deferredAsync$default;
                    str2 = strZza;
                    ((Boolean) objZzI).getClass();
                    this.zzg = str2;
                    this.zza = zzpkVar;
                    this.zzb = null;
                    this.zzc = 2;
                    objAwait = deferred.await(this);
                    if (objAwait != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            } catch (GenAiException e) {
                e = e;
            } catch (Throwable th) {
                th = th;
                str = strZza;
                zzwlVar = this.zze;
                createCachedContextRequest = this.zzf;
                zzwlVar.zzb.remove(createCachedContextRequest);
                if (((zzpk) zzwlVar.zza.remove(createCachedContextRequest)) == null) {
                }
                throw th;
            }
        } else if (i != 1) {
            zzpkVarZza = (zzpk) this.zza;
            str = (String) this.zzg;
            try {
                try {
                    ResultKt.throwOnFailure(obj);
                    zzpkVar = zzpkVarZza;
                    objAwait = obj;
                    try {
                        if (((Boolean) objAwait).booleanValue()) {
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                            sb.append("Cache creation failed for prefix: ");
                            sb.append(str);
                            throw new GenAiException(sb.toString(), (Throwable) null, -103);
                        }
                        CreateCachedContextRequest createCachedContextRequest3 = this.zzf;
                        CachedContext cachedContextZza = CachedContext.Companion.zza(createCachedContextRequest3.getZza());
                        zzwl zzwlVar3 = this.zze;
                        zzwlVar3.zzb.remove(createCachedContextRequest3);
                        if (((zzpk) zzwlVar3.zza.remove(createCachedContextRequest3)) == null) {
                            Log.w("CacheCreationProcessor", "Future not found in map for request with prefix: ".concat(String.valueOf(str)));
                        }
                        return cachedContextZza;
                    } catch (GenAiException e2) {
                        e = e2;
                        zzpkVarZza = zzpkVar;
                    }
                } catch (GenAiException e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
                zzwlVar = this.zze;
                createCachedContextRequest = this.zzf;
                zzwlVar.zzb.remove(createCachedContextRequest);
                if (((zzpk) zzwlVar.zza.remove(createCachedContextRequest)) == null) {
                    Log.w("CacheCreationProcessor", "Future not found in map for request with prefix: ".concat(String.valueOf(str)));
                }
                throw th;
            }
        } else {
            deferred = (Deferred) this.zzb;
            zzpk zzpkVar2 = (zzpk) this.zza;
            str2 = (String) this.zzg;
            try {
                try {
                    ResultKt.throwOnFailure(obj);
                    zzpkVar = zzpkVar2;
                    objZzI = obj;
                } catch (GenAiException e4) {
                    e = e4;
                    zzpkVarZza = zzpkVar2;
                    zzpkVarZza.zzi(e);
                    throw e;
                }
                try {
                    ((Boolean) objZzI).getClass();
                    this.zzg = str2;
                    this.zza = zzpkVar;
                    this.zzb = null;
                    this.zzc = 2;
                    objAwait = deferred.await(this);
                    if (objAwait != coroutine_suspended) {
                        str = str2;
                        if (((Boolean) objAwait).booleanValue()) {
                        }
                    }
                    return coroutine_suspended;
                } catch (GenAiException e5) {
                    e = e5;
                    zzpkVarZza = zzpkVar;
                }
            } catch (Throwable th3) {
                th = th3;
                str = str2;
                zzwlVar = this.zze;
                createCachedContextRequest = this.zzf;
                zzwlVar.zzb.remove(createCachedContextRequest);
                if (((zzpk) zzwlVar.zza.remove(createCachedContextRequest)) == null) {
                }
                throw th;
            }
        }
        zzpkVarZza.zzi(e);
        throw e;
    }
}
