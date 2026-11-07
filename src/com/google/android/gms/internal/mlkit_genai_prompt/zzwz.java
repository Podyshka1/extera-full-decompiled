package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
final class zzwz extends SuspendLambda implements Function2 {
    final /* synthetic */ zzxg zza;
    final /* synthetic */ Context zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwz(zzxg zzxgVar, Context context, Continuation continuation) {
        super(2, continuation);
        this.zza = zzxgVar;
        this.zzb = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzwz(this.zza, this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwz) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzxg zzxgVar = this.zza;
        File fileZzq = zzxg.zzq(zzxgVar, this.zzb);
        if (!fileZzq.exists()) {
            return MapsKt.emptyMap();
        }
        try {
            String text$default = FilesKt.readText$default(fileZzq, null, 1, null);
            return !StringsKt.isBlank(text$default) ? zzxg.zzr(zzxgVar, new JSONArray(text$default)) : MapsKt.emptyMap();
        } catch (IOException e) {
            Log.e("CacheFileManager", "Failed to read cache index file.", e);
            return MapsKt.emptyMap();
        } catch (JSONException e2) {
            Log.e("CacheFileManager", "Cache index file is corrupted.", e2);
            fileZzq.delete();
            return MapsKt.emptyMap();
        }
    }
}
