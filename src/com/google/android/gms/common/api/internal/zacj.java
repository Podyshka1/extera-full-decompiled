package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zacj implements Runnable {
    final /* synthetic */ zacm zaa;

    public zacj(zacm zacmVar) {
        Objects.requireNonNull(zacmVar);
        this.zaa = zacmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaa.zaf().zaa(new ConnectionResult(4));
    }
}
