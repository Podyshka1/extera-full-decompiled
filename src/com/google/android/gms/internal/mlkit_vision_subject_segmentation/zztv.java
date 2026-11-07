package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* JADX INFO: loaded from: classes5.dex */
final class zztv extends LazyInstanceMap {
    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object create(Object obj) {
        zztd zztdVar = (zztd) obj;
        MlKitContext mlKitContext = MlKitContext.getInstance();
        return new zztl(mlKitContext.getApplicationContext(), (SharedPrefManager) mlKitContext.get(SharedPrefManager.class), new zzte(MlKitContext.getInstance().getApplicationContext(), zztdVar), zztdVar.zzb());
    }

    public /* synthetic */ zztv(zztu zztuVar) {
    }
}
