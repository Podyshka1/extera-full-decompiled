package com.exteragram.messenger.player.lyrics;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VorbisComments {
    private static final String[] LYRICS_KEYS = {"LYRICS", "SYNCEDLYRICS", "UNSYNCEDLYRICS", "UNSYNCED LYRICS"};

    public static String readLyrics(File file) {
        long j;
        byte[] oggComments;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] bArr = new byte[4];
                randomAccessFile.readFully(bArr);
                if (bArr[0] == 73 && bArr[1] == 68 && bArr[2] == 51) {
                    byte[] bArr2 = new byte[6];
                    randomAccessFile.readFully(bArr2);
                    int i = 10;
                    int i2 = (((bArr2[4] & ByteCompanionObject.MAX_VALUE) << 7) | ((bArr2[2] & ByteCompanionObject.MAX_VALUE) << 21) | ((bArr2[3] & ByteCompanionObject.MAX_VALUE) << 14) | (bArr2[5] & ByteCompanionObject.MAX_VALUE)) + 10;
                    if ((bArr2[1] & 16) == 0) {
                        i = 0;
                    }
                    j = i2 + i;
                    randomAccessFile.seek(j);
                    randomAccessFile.readFully(bArr);
                } else {
                    j = 0;
                }
                byte b2 = bArr[0];
                if (b2 == 102 && bArr[1] == 76 && bArr[2] == 97 && bArr[3] == 67) {
                    oggComments = readFlacComments(randomAccessFile);
                } else if (b2 == 79 && bArr[1] == 103 && bArr[2] == 103 && bArr[3] == 83) {
                    randomAccessFile.seek(j);
                    oggComments = readOggComments(randomAccessFile);
                } else {
                    oggComments = null;
                }
                String strFindLyrics = oggComments != null ? findLyrics(oggComments) : null;
                randomAccessFile.close();
                return strFindLyrics;
            } finally {
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    private static byte[] readFlacComments(RandomAccessFile randomAccessFile) throws IOException {
        int i;
        while (true) {
            int i2 = randomAccessFile.read();
            if (i2 < 0 || (i = (randomAccessFile.read() << 16) | (randomAccessFile.read() << 8) | randomAccessFile.read()) < 0) {
                return null;
            }
            if ((i2 & 127) == 4) {
                if (i > 4194304) {
                    return null;
                }
                byte[] bArr = new byte[i];
                randomAccessFile.readFully(bArr);
                return bArr;
            }
            if ((i2 & 128) != 0) {
                return null;
            }
            randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) i));
        }
    }

    private static byte[] readOggComments(RandomAccessFile randomAccessFile) throws IOException {
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[27];
        byte[] bArr2 = new byte[255];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < 64) {
            randomAccessFile.readFully(bArr);
            if (bArr[i2] != 79 || bArr[1] != 103 || bArr[2] != 103 || bArr[3] != 83) {
                break;
            }
            int i5 = bArr[26] & UByte.MAX_VALUE;
            randomAccessFile.readFully(bArr2, i2, i5);
            int i6 = i2;
            while (i6 < i5) {
                int i7 = bArr2[i6] & 255;
                if (i4 == 1) {
                    if (byteArrayOutputStream.size() + i7 > 4194304) {
                        return null;
                    }
                    byte[] bArr3 = new byte[i7];
                    randomAccessFile.readFully(bArr3);
                    byteArrayOutputStream.write(bArr3, i2, i7);
                    i = i3;
                } else {
                    i = i3;
                    randomAccessFile.seek(randomAccessFile.getFilePointer() + ((long) i7));
                }
                if (i7 < 255) {
                    if (i4 == 1) {
                        return stripOggCommentHeader(byteArrayOutputStream.toByteArray());
                    }
                    i4++;
                }
                i6++;
                i3 = i;
                i2 = 0;
            }
            i3++;
            i2 = 0;
        }
        return null;
    }

    private static byte[] stripOggCommentHeader(byte[] bArr) {
        int i = 7;
        if (bArr.length < 7 || bArr[0] != 3 || !new String(bArr, 1, 6, StandardCharsets.US_ASCII).equals("vorbis")) {
            i = 8;
            if (bArr.length < 8 || !new String(bArr, 0, 8, StandardCharsets.US_ASCII).equals("OpusTags")) {
                return null;
            }
        }
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i, bArr2, 0, length);
        return bArr2;
    }

    private static String findLyrics(byte[] bArr) {
        int i;
        int i2;
        int i3 = readInt(bArr, 0);
        if (i3 >= 0) {
            int i4 = 4 + i3;
            int i5 = i3 + 8;
            if (i5 <= bArr.length) {
                int i6 = readInt(bArr, i4);
                int length = LYRICS_KEYS.length;
                String[] strArr = new String[length];
                int i7 = 0;
                while (i7 < i6) {
                    int i8 = i5 + 4;
                    if (i8 > bArr.length || (i = readInt(bArr, i5)) < 0 || (i2 = i8 + i) > bArr.length) {
                        break;
                    }
                    String str = new String(bArr, i8, i, StandardCharsets.UTF_8);
                    int iIndexOf = str.indexOf(61);
                    if (iIndexOf > 0) {
                        String upperCase = str.substring(0, iIndexOf).toUpperCase(Locale.ROOT);
                        int i9 = 0;
                        while (true) {
                            String[] strArr2 = LYRICS_KEYS;
                            if (i9 < strArr2.length) {
                                if (strArr[i9] == null && strArr2[i9].equals(upperCase)) {
                                    String strTrim = str.substring(iIndexOf + 1).trim();
                                    if (!strTrim.isEmpty()) {
                                        strArr[i9] = strTrim;
                                    }
                                }
                                i9++;
                            }
                        }
                    }
                    i7++;
                    i5 = i2;
                }
                for (int i10 = 0; i10 < length; i10++) {
                    String str2 = strArr[i10];
                    if (str2 != null) {
                        return str2;
                    }
                }
            }
        }
        return null;
    }

    private static int readInt(byte[] bArr, int i) {
        if (i + 4 > bArr.length) {
            return -1;
        }
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (bArr[i] & UByte.MAX_VALUE) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i + 2] & UByte.MAX_VALUE) << 16);
    }
}
