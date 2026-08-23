package com.googlecode.mp4parser.h264.read;

import com.googlecode.mp4parser.h264.Debug;
import java.io.InputStream;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
public class CAVLCReader extends BitstreamReader {
    public CAVLCReader(InputStream inputStream) {
        super(inputStream);
    }

    public long readNBit(int i, String str) {
        long nBit = readNBit(i);
        trace(str, String.valueOf(nBit));
        return nBit;
    }

    private int readUE() {
        int i = 0;
        while (read1Bit() == 0) {
            i++;
        }
        if (i <= 0) {
            return 0;
        }
        return (int) (((long) ((1 << i) - 1)) + readNBit(i));
    }

    public int readUE(String str) {
        int ue = readUE();
        trace(str, String.valueOf(ue));
        return ue;
    }

    public boolean readBool(String str) {
        boolean z = read1Bit() != 0;
        trace(str, z ? "1" : MVEL.VERSION_SUB);
        return z;
    }

    public int readU(int i, String str) {
        return (int) readNBit(i, str);
    }

    private void trace(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String strValueOf = String.valueOf(BitstreamReader.bitsRead - this.debugBits.length());
        int length = 8 - strValueOf.length();
        sb.append("@".concat(strValueOf));
        for (int i = 0; i < length; i++) {
            sb.append(' ');
        }
        sb.append(str);
        int length2 = (100 - sb.length()) - this.debugBits.length();
        for (int i2 = 0; i2 < length2; i2++) {
            sb.append(' ');
        }
        sb.append(this.debugBits);
        sb.append(" (" + str2 + ")");
        this.debugBits.clear();
        Debug.println(sb.toString());
    }
}
