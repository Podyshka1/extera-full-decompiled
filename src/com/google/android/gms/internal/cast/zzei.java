package com.google.android.gms.internal.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzei extends BroadcastReceiver {
    final /* synthetic */ zzek zza;

    public zzei(zzek zzekVar) {
        Objects.requireNonNull(zzekVar);
        this.zza = zzekVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.zza.zzf();
    }
}
