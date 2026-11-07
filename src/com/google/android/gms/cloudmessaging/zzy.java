package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzy extends com.google.android.gms.internal.cloudmessaging.zzv {
    final /* synthetic */ Rpc zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzy(Rpc rpc, Looper looper) {
        super(looper);
        Objects.requireNonNull(rpc);
        this.zza = rpc;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zza.zzd(message);
    }
}
