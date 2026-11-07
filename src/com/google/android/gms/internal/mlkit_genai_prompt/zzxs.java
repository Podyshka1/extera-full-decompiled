package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import com.google.mlkit.genai.common.GenAiException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxs {
    public static final zzxq zza = new zzxq(null);
    private static volatile zzxs zzc;
    private final zzxg zzb;

    public /* synthetic */ zzxs(zzxg zzxgVar, DefaultConstructorMarker defaultConstructorMarker) {
        this.zzb = zzxgVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zza(zzxs zzxsVar, Context context, String str, String str2, Continuation continuation) throws GenAiException {
        zzxr zzxrVar;
        if (continuation instanceof zzxr) {
            zzxrVar = (zzxr) continuation;
            int i = zzxrVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzxrVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzxrVar = new zzxr(zzxsVar, continuation);
            }
        }
        Object objZza = zzxrVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzxrVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objZza);
            zzxg zzxgVar = zzxsVar.zzb;
            zzxrVar.zzd = str;
            zzxrVar.zze = str2;
            zzxrVar.zzc = 1;
            objZza = zzxg.zza(zzxgVar, context, str, zzxrVar);
            if (objZza == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = zzxrVar.zze;
            str = zzxrVar.zzd;
            ResultKt.throwOnFailure(objZza);
        }
        zzxt zzxtVar = (zzxt) objZza;
        if (zzxtVar == null) {
            return null;
        }
        if (str2 == null || Intrinsics.areEqual(zzxtVar.zze(), str2)) {
            return zzxtVar;
        }
        String strZze = zzxtVar.zze();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 42 + String.valueOf(strZze).length() + 33 + str2.length() + 60);
        sb.append("Cached context '");
        sb.append(str);
        sb.append("' was created with model '");
        sb.append(strZze);
        sb.append("', but is being used with model '");
        sb.append(str2);
        sb.append("'. Please either update the cache or use the matching model.");
        throw new GenAiException(sb.toString(), (Throwable) null, -103);
    }

    public static /* synthetic */ Object zzc(zzxs zzxsVar, Context context, zzxt zzxtVar, Continuation continuation) {
        zzxg zzxgVar = zzxsVar.zzb;
        return BuildersKt.withContext(zzxgVar.zzh.getCoroutineContext(), new zzwu(zzxtVar, zzxgVar, context, null), continuation);
    }

    public static /* synthetic */ Object zzd(zzxs zzxsVar, Context context, String str, String str2, String str3, Continuation continuation) {
        if (StringsKt.isBlank(str)) {
            Log.w("ExplicitCacheManager", "Cache name is blank. Will not open cache for writing.");
            return null;
        }
        if (!StringsKt.isBlank(str2)) {
            zzxt zzxtVar = new zzxt(str, zzxh.zza(), str2, str3);
            zzxg zzxgVar = zzxsVar.zzb;
            return BuildersKt.withContext(zzxgVar.zzh.getCoroutineContext(), new zzww(zzxtVar, zzxgVar, context, null, null), continuation);
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 73);
        sb.append("Prompt prefix is blank for cache name: ");
        sb.append(str);
        sb.append(". Will not open cache for writing.");
        Log.w("ExplicitCacheManager", sb.toString());
        return null;
    }
}
