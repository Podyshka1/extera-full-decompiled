package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
final class zzxf extends SuspendLambda implements Function2 {
    final /* synthetic */ zzxg zza;
    final /* synthetic */ Context zzb;
    final /* synthetic */ Map zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxf(zzxg zzxgVar, Context context, Map map, Continuation continuation) {
        super(2, continuation);
        this.zza = zzxgVar;
        this.zzb = context;
        this.zzc = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzxf(this.zza, this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzxf) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        File fileZzq = zzxg.zzq(this.zza, this.zzb);
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry entry : this.zzc.entrySet()) {
            String str = (String) entry.getKey();
            zzxi zzxiVar = (zzxi) entry.getValue();
            if (Intrinsics.areEqual(str, zzxiVar.zza())) {
                jSONArray.put(zzxiVar.zzc());
            } else {
                String strZza = zzxiVar.zza();
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(strZza).length() + 24);
                sb.append("IDs in key (");
                sb.append(str);
                sb.append(") and value (");
                sb.append(strZza);
                sb.append(") do not match. Ignored.");
                Log.w("CacheFileManager", sb.toString());
            }
        }
        try {
            FilesKt.writeText$default(fileZzq, jSONArray.toString(), null, 2, null);
            return Unit.INSTANCE;
        } catch (IOException e) {
            Log.e("CacheFileManager", "Failed to write cache index file.", e);
            throw e;
        }
    }
}
