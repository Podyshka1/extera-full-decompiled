package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* JADX INFO: loaded from: classes5.dex */
final class zzavj extends LazyInstanceMap {
    public /* synthetic */ zzavj(byte[] bArr) {
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object create(Object obj) {
        zzaux zzauxVar = (zzaux) obj;
        MlKitContext mlKitContext = MlKitContext.getInstance();
        return new zzavc(mlKitContext.getApplicationContext(), (SharedPrefManager) mlKitContext.get(SharedPrefManager.class), new zzauy(MlKitContext.getInstance().getApplicationContext(), zzauxVar), zzauxVar.zza());
    }
}
