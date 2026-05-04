package com.google.android.recaptcha.internal;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import kotlin.p024io.FilesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzad {
    private final Context zza;

    public zzad(Context context) {
        this.zza = context;
    }

    public static final byte[] zza(File file) {
        return FilesKt.readBytes(file);
    }

    public static final void zzb(File file, byte[] bArr) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException("Unable to delete existing encrypted file");
        }
        FilesKt.writeBytes(file, bArr);
    }
}
