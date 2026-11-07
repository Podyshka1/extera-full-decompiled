package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwa;

/* JADX INFO: loaded from: classes4.dex */
final class zzwr extends zzwa.zzf implements Runnable {
    private final Runnable zzd;

    @Override // com.google.android.gms.internal.cast.zzwa
    public final String zzg() {
        String string = this.zzd.toString();
        StringBuilder sb = new StringBuilder(string.length() + 7);
        sb.append("task=[");
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }

    public zzwr(Runnable runnable) {
        runnable.getClass();
        this.zzd = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzd.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }
}
