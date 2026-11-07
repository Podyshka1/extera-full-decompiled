package com.google.zxing.common;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ECIEncoderSet {
    private static final List<CharsetEncoder> ENCODERS = new ArrayList();
    private final CharsetEncoder[] encoders;
    private final int priorityEncoderIndex;

    static {
        String[] strArr = {"IBM437", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "ISO-8859-16", "windows-1250", "windows-1251", "windows-1252", "windows-1256", "Shift_JIS"};
        for (int i = 0; i < 20; i++) {
            String str = strArr[i];
            if (CharacterSetECI.getCharacterSetECIByName(str) != null) {
                try {
                    ENCODERS.add(Charset.forName(str).newEncoder());
                } catch (UnsupportedCharsetException unused) {
                }
            }
        }
    }

    public ECIEncoderSet(String str, Charset charset, int i) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        arrayList.add(StandardCharsets.ISO_8859_1.newEncoder());
        int i2 = 0;
        boolean z2 = charset != null && charset.name().startsWith("UTF");
        for (int i3 = 0; i3 < str.length(); i3++) {
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                CharsetEncoder charsetEncoder = (CharsetEncoder) obj;
                char cCharAt = str.charAt(i3);
                if (cCharAt == i || charsetEncoder.canEncode(cCharAt)) {
                    z = true;
                    break;
                }
            }
            z = false;
            if (!z) {
                Iterator<CharsetEncoder> it = ENCODERS.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    CharsetEncoder next = it.next();
                    if (next.canEncode(str.charAt(i3))) {
                        arrayList.add(next);
                        z = true;
                        break;
                    }
                }
            }
            if (!z) {
                z2 = true;
            }
        }
        if (arrayList.size() == 1 && !z2) {
            this.encoders = new CharsetEncoder[]{(CharsetEncoder) arrayList.get(0)};
        } else {
            this.encoders = new CharsetEncoder[arrayList.size() + 2];
            int size2 = arrayList.size();
            int i5 = 0;
            int i6 = 0;
            while (i6 < size2) {
                Object obj2 = arrayList.get(i6);
                i6++;
                this.encoders[i5] = (CharsetEncoder) obj2;
                i5++;
            }
            this.encoders[i5] = StandardCharsets.UTF_8.newEncoder();
            this.encoders[i5 + 1] = StandardCharsets.UTF_16BE.newEncoder();
        }
        if (charset != null) {
            while (true) {
                CharsetEncoder[] charsetEncoderArr = this.encoders;
                if (i2 >= charsetEncoderArr.length) {
                    break;
                }
                if (charsetEncoderArr[i2] != null && charset.name().equals(this.encoders[i2].charset().name())) {
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            i2 = -1;
        }
        this.priorityEncoderIndex = i2;
    }

    public int length() {
        return this.encoders.length;
    }

    public Charset getCharset(int i) {
        return this.encoders[i].charset();
    }

    public int getECIValue(int i) {
        return CharacterSetECI.getCharacterSetECI(this.encoders[i].charset()).getValue();
    }

    public int getPriorityEncoderIndex() {
        return this.priorityEncoderIndex;
    }

    public boolean canEncode(char c2, int i) {
        return this.encoders[i].canEncode(_UrlKt.FRAGMENT_ENCODE_SET + c2);
    }

    public byte[] encode(String str, int i) {
        return str.getBytes(this.encoders[i].charset());
    }
}
