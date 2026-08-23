package com.google.android.gms.common.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class IOUtils {
    @Deprecated
    public static byte[] readInputStreamFully(InputStream inputStream) {
        return readInputStreamFully(inputStream, true);
    }

    public static void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Deprecated
    public static long copyStream(InputStream inputStream, OutputStream outputStream, boolean z, int i) {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            try {
                int i2 = inputStream.read(bArr, 0, i);
                if (i2 == -1) {
                    break;
                }
                j += (long) i2;
                outputStream.write(bArr, 0, i2);
            } catch (Throwable th) {
                if (z) {
                    closeQuietly(inputStream);
                    closeQuietly(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            closeQuietly(inputStream);
            closeQuietly(outputStream);
        }
        return j;
    }

    @Deprecated
    public static byte[] readInputStreamFully(InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copyStream(inputStream, byteArrayOutputStream, z, 1024);
        return byteArrayOutputStream.toByteArray();
    }
}
