package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzda {
    public static void zza(Throwable th) {
        if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
            throw ((Error) th);
        }
    }
}
