package com.coremedia.iso;

import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.util.Logger;
import java.io.Closeable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IsoFile extends BasicContainer implements Closeable {
    private static Logger LOG = Logger.getLogger(IsoFile.class);

    public static byte[] fourCCtoBytes(String str) {
        byte[] bArr = new byte[4];
        if (str != null) {
            for (int i = 0; i < Math.min(4, str.length()); i++) {
                bArr[i] = (byte) str.charAt(i);
            }
        }
        return bArr;
    }
}
