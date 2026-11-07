package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.DownloadCallback;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzzj extends FunctionReferenceImpl implements Function2, SuspendFunction {
    public zzzj(Object obj) {
        super(2, obj, zzyd.class, "downloadFeatures", "downloadFeatures(Lcom/google/mlkit/genai/common/DownloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return zzyd.zzb((zzyd) this.receiver, (DownloadCallback) obj, (Continuation) obj2);
    }
}
