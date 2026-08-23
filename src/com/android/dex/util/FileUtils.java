package com.android.dex.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FileUtils {
    public static byte[] readFile(String str) {
        return readFile(new File(str));
    }

    public static byte[] readFile(File file) {
        if (!file.exists()) {
            throw new RuntimeException(file + ": file not found");
        }
        if (!file.isFile()) {
            throw new RuntimeException(file + ": not a file");
        }
        if (!file.canRead()) {
            throw new RuntimeException(file + ": file not readable");
        }
        long length = file.length();
        int i = (int) length;
        if (i != length) {
            throw new RuntimeException(file + ": file too long");
        }
        byte[] bArr = new byte[i];
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int i2 = 0;
            while (i > 0) {
                int i3 = fileInputStream.read(bArr, i2, i);
                if (i3 == -1) {
                    throw new RuntimeException(file + ": unexpected EOF");
                }
                i2 += i3;
                i -= i3;
            }
            fileInputStream.close();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(file + ": trouble reading", e);
        }
    }

    public static boolean hasArchiveSuffix(String str) {
        return str.endsWith(".zip") || str.endsWith(".jar") || str.endsWith(".apk");
    }
}
