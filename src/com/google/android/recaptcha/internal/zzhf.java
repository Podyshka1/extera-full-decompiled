package com.google.android.recaptcha.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhf extends IOException {
    zzhf() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    zzhf(String str, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th);
    }

    zzhf(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
