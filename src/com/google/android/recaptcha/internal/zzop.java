package com.google.android.recaptcha.internal;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import kotlin.io.FilesKt;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzop {
    public zzop(Context context) {
    }

    public static final byte[] zza(File file) {
        return FilesKt.readBytes(file);
    }

    public static final void zzb(File file, byte[] bArr) throws IOException {
        if (!file.exists() || file.delete()) {
            FilesKt.writeBytes(file, bArr);
        } else {
            Model$$ExternalSyntheticBUOutline0.m1054m("Unable to delete existing encrypted file");
        }
    }
}
