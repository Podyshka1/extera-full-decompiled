package com.google.android.gms.common.api.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zaat implements com.google.android.gms.common.internal.zaj {
    final /* synthetic */ zaaz zaa;

    public zaat(zaaz zaazVar) {
        Objects.requireNonNull(zaazVar);
        this.zaa = zaazVar;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final boolean isConnected() {
        return this.zaa.isConnected();
    }
}
