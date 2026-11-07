package com.google.android.recaptcha.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public class zzagk extends IOException {
    private boolean zza;

    public zzagk(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public final void zza() {
        this.zza = true;
    }

    public final boolean zzb() {
        return this.zza;
    }

    public zzagk(String str) {
        super(str);
    }
}
