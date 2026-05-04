package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes5.dex */
abstract class NativeSessionFileGzipper {
    static void processNativeSessions(File file, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NativeSessionFile nativeSessionFile = (NativeSessionFile) it.next();
            InputStream stream = null;
            try {
                stream = nativeSessionFile.getStream();
                if (stream != null) {
                    gzipInputStream(stream, new File(file, nativeSessionFile.getReportsEndpointFilename()));
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                CommonUtils.closeQuietly(null);
                throw th;
            }
            CommonUtils.closeQuietly(stream);
        }
    }

    private static void gzipInputStream(InputStream inputStream, File file) throws Throwable {
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int i = inputStream.read(bArr);
                    if (i > 0) {
                        gZIPOutputStream2.write(bArr, 0, i);
                    } else {
                        gZIPOutputStream2.finish();
                        CommonUtils.closeQuietly(gZIPOutputStream2);
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    CommonUtils.closeQuietly(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
