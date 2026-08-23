package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* JADX INFO: loaded from: classes.dex */
final class zzls extends LazyInstanceMap {
    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    protected final /* bridge */ /* synthetic */ Object create(Object obj) {
        zzlc zzlcVar = (zzlc) obj;
        MlKitContext mlKitContext = MlKitContext.getInstance();
        return new zzli(mlKitContext.getApplicationContext(), (SharedPrefManager) mlKitContext.get(SharedPrefManager.class), new zzld(MlKitContext.getInstance().getApplicationContext(), zzlcVar), zzlcVar.zzb());
    }

    /* synthetic */ zzls(zzlr zzlrVar) {
    }
}
