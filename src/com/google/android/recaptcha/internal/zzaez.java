package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaez extends IOException {
    public zzaez(long j, long j2, int i, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.format(Locale.US, "Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i))), th);
    }

    public zzaez(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
