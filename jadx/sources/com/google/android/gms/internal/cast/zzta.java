package com.google.android.gms.internal.cast;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzta extends IOException {
    zzta(String str, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th);
    }

    zzta(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
