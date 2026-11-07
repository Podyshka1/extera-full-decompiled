package com.google.android.gms.internal.play_billing;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
final class zzay extends zzbl {
    @Override // com.google.android.gms.internal.play_billing.zzbl
    public final long zza() {
        return SystemClock.elapsedRealtime() * 1000000;
    }
}
