package org.telegram.messenger.audioinfo.mp3;

import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.audioinfo.AudioInfo;

/* JADX INFO: loaded from: classes6.dex */
public class ID3v1Info extends AudioInfo {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isID3v1StartPosition(InputStream inputStream) throws IOException {
        boolean z;
        inputStream.mark(3);
        try {
            if (inputStream.read() != 84 || inputStream.read() != 65) {
                z = false;
            } else if (inputStream.read() == 71) {
                z = true;
            }
            return z;
        } finally {
            inputStream.reset();
        }
    }

    public ID3v1Info(InputStream inputStream) throws IOException {
        byte b2;
        if (isID3v1StartPosition(inputStream)) {
            this.brand = "ID3";
            this.version = "1.0";
            byte[] bytes = readBytes(inputStream, 128);
            this.title = extractString(bytes, 3, 30);
            this.artist = extractString(bytes, 33, 30);
            this.album = extractString(bytes, 63, 30);
            try {
                this.year = Short.parseShort(extractString(bytes, 93, 4));
            } catch (NumberFormatException unused) {
                this.year = (short) 0;
            }
            this.comment = extractString(bytes, 97, 30);
            ID3v1Genre genre = ID3v1Genre.getGenre(bytes[127]);
            if (genre != null) {
                this.genre = genre.getDescription();
            }
            if (bytes[125] != 0 || (b2 = bytes[126]) == 0) {
                return;
            }
            this.version = "1.1";
            this.track = (short) (b2 & UByte.MAX_VALUE);
        }
    }

    public byte[] readBytes(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 <= 0) {
                Buffer$$ExternalSyntheticBUOutline1.m964m();
                return null;
            }
            i2 += i3;
        }
        return bArr;
    }

    public String extractString(byte[] bArr, int i, int i2) {
        try {
            String str = new String(bArr, i, i2, "ISO-8859-1");
            int iIndexOf = str.indexOf(0);
            return iIndexOf < 0 ? str : str.substring(0, iIndexOf);
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
