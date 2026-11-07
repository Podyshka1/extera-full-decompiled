package com.exteragram.messenger.utils;

import androidx.camera.core.impl.Quirks$$ExternalSyntheticBackport0;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public class Mp4Fingerprint {
    public String audioHandler;
    public String audioLanguage;
    private int boxes;
    public final ArrayList<String> compatibleBrands = new ArrayList<>();
    public String encoder;
    public boolean fragmented;
    public String majorBrand;
    public long minorVersion;
    private boolean movie;
    public String videoHandler;
    public String videoLanguage;

    public static class Track {
        String language;
        boolean media;
        String name;
        String type;

        private Track() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Mp4Fingerprint parse(String str) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
            try {
                Mp4Fingerprint mp4Fingerprint = new Mp4Fingerprint();
                mp4Fingerprint.readBoxes(randomAccessFile, randomAccessFile.length(), _UrlKt.FRAGMENT_ENCODE_SET, null);
                if (mp4Fingerprint.majorBrand == null || !mp4Fingerprint.movie || mp4Fingerprint.videoHandler == null || mp4Fingerprint.audioHandler == null || mp4Fingerprint.videoLanguage == null) {
                    mp4Fingerprint = null;
                } else if (mp4Fingerprint.audioLanguage == null) {
                }
                randomAccessFile.close();
                return mp4Fingerprint;
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private void readBoxes(RandomAccessFile randomAccessFile, long j, String str, Track track) throws IOException {
        long j2;
        int i;
        long j3;
        RandomAccessFile randomAccessFile2;
        Mp4Fingerprint mp4Fingerprint = this;
        RandomAccessFile randomAccessFile3 = randomAccessFile;
        while (randomAccessFile3.getFilePointer() < j) {
            long filePointer = randomAccessFile3.getFilePointer();
            int i2 = mp4Fingerprint.boxes + 1;
            mp4Fingerprint.boxes = i2;
            if (i2 <= 4096) {
                long j4 = j - filePointer;
                if (j4 >= 8) {
                    long j5 = ((long) randomAccessFile3.readInt()) & 4294967295L;
                    byte[] bArr = new byte[4];
                    randomAccessFile3.readFully(bArr);
                    Charset charset = StandardCharsets.ISO_8859_1;
                    String str2 = new String(bArr, charset);
                    if (j5 != 1) {
                        if (j5 == 0) {
                            j5 = j4;
                        }
                        j2 = 4294967295L;
                        i = 8;
                    } else {
                        if (j4 < 16) {
                            throw new IOException();
                        }
                        j5 = randomAccessFile3.readLong();
                        j2 = 4294967295L;
                        i = 16;
                    }
                    long j6 = i;
                    if (j5 < j6 || j5 > j4) {
                        throw new IOException();
                    }
                    long j7 = filePointer + j5;
                    long j8 = j5 - j6;
                    if (str2.equals("ftyp") && str.isEmpty()) {
                        if (mp4Fingerprint.majorBrand != null || j8 < 8 || j8 > 256 || j8 % 4 != 0) {
                            throw new IOException();
                        }
                        randomAccessFile3.readFully(bArr);
                        mp4Fingerprint.majorBrand = new String(bArr, charset);
                        mp4Fingerprint.minorVersion = ((long) randomAccessFile3.readInt()) & j2;
                        while (randomAccessFile3.getFilePointer() < j7) {
                            randomAccessFile3.readFully(bArr);
                            mp4Fingerprint.compatibleBrands.add(new String(bArr, StandardCharsets.ISO_8859_1));
                        }
                    } else {
                        if (str2.equals("moov") && str.isEmpty()) {
                            if (mp4Fingerprint.movie) {
                                throw new IOException();
                            }
                            mp4Fingerprint.movie = true;
                            mp4Fingerprint.readBoxes(randomAccessFile3, j7, str2, null);
                            mp4Fingerprint = this;
                        } else if (str2.equals("trak") && str.equals("moov")) {
                            Track track2 = new Track();
                            readBoxes(randomAccessFile, j7, str2, track2);
                            j3 = j7;
                            if ("vide".equals(track2.type)) {
                                if (this.videoHandler != null) {
                                    throw new IOException();
                                }
                                this.videoHandler = track2.name;
                                this.videoLanguage = track2.language;
                            } else if ("soun".equals(track2.type)) {
                                if (this.audioHandler != null) {
                                    throw new IOException();
                                }
                                this.audioHandler = track2.name;
                                this.audioLanguage = track2.language;
                            }
                            mp4Fingerprint = this;
                            randomAccessFile2 = randomAccessFile;
                            randomAccessFile2.seek(j3);
                            randomAccessFile3 = randomAccessFile2;
                        } else if (str2.equals("mdia") && str.equals("trak")) {
                            if (track.media) {
                                throw new IOException();
                            }
                            track.media = true;
                            mp4Fingerprint = this;
                            randomAccessFile3 = randomAccessFile;
                            mp4Fingerprint.readBoxes(randomAccessFile3, j7, str2, track);
                        } else {
                            randomAccessFile3 = randomAccessFile;
                            if (str2.equals("hdlr") && str.equals("mdia")) {
                                if (track.type != null || j8 < 24 || j8 > 256 || randomAccessFile3.readInt() != 0) {
                                    throw new IOException();
                                }
                                randomAccessFile3.readInt();
                                randomAccessFile3.readFully(bArr);
                                track.type = new String(bArr, charset);
                                randomAccessFile3.skipBytes(12);
                                int i3 = ((int) j8) - 24;
                                byte[] bArr2 = new byte[i3];
                                randomAccessFile3.readFully(bArr2);
                                int i4 = 0;
                                while (i4 < i3 && bArr2[i4] != 0) {
                                    i4++;
                                }
                                track.name = new String(bArr2, 0, i4, StandardCharsets.UTF_8);
                            } else {
                                if (str2.equals("mdhd") && str.equals("mdia")) {
                                    if (track.language != null || j8 < 24) {
                                        throw new IOException();
                                    }
                                    int i5 = randomAccessFile3.readInt();
                                    if (i5 == 0 || i5 == 16777216) {
                                        if (j8 >= (i5 != 0 ? 36 : 24)) {
                                            randomAccessFile3.skipBytes(i5 != 0 ? 28 : 16);
                                            int unsignedShort = randomAccessFile3.readUnsignedShort();
                                            track.language = new String(new char[]{(char) (((unsignedShort >> 10) & 31) + 96), (char) (((unsignedShort >> 5) & 31) + 96), (char) ((unsignedShort & 31) + 96)});
                                        }
                                    }
                                    throw new IOException();
                                }
                                if (str2.equals("udta") && str.equals("moov")) {
                                    mp4Fingerprint = this;
                                    mp4Fingerprint.readBoxes(randomAccessFile3, j7, str2, null);
                                } else if (str2.equals("meta") && (str.equals("udta") || str.equals("moov"))) {
                                    if (j8 < 4 || randomAccessFile.readInt() != 0) {
                                        throw new IOException();
                                    }
                                    mp4Fingerprint = this;
                                    mp4Fingerprint.readBoxes(randomAccessFile, j7, str2, null);
                                } else if ((str2.equals("ilst") && str.equals("meta")) || (str2.equals("©too") && str.equals("ilst"))) {
                                    mp4Fingerprint = this;
                                    randomAccessFile3 = randomAccessFile;
                                    mp4Fingerprint.readBoxes(randomAccessFile3, j7, str2, null);
                                } else {
                                    mp4Fingerprint = this;
                                    j3 = j7;
                                    randomAccessFile2 = randomAccessFile;
                                    if (str2.equals("data") && str.equals("©too")) {
                                        if (mp4Fingerprint.encoder != null || j8 < 8 || j8 > 1024 || randomAccessFile2.readInt() != 1) {
                                            throw new IOException();
                                        }
                                        randomAccessFile2.readInt();
                                        byte[] bArr3 = new byte[((int) j8) - 8];
                                        randomAccessFile2.readFully(bArr3);
                                        mp4Fingerprint.encoder = new String(bArr3, StandardCharsets.UTF_8);
                                    } else if (str2.equals("mvex") || str2.equals("moof")) {
                                        mp4Fingerprint.fragmented = true;
                                    }
                                    randomAccessFile2.seek(j3);
                                    randomAccessFile3 = randomAccessFile2;
                                }
                            }
                            mp4Fingerprint = this;
                        }
                        j3 = j7;
                        randomAccessFile2 = randomAccessFile;
                        randomAccessFile2.seek(j3);
                        randomAccessFile3 = randomAccessFile2;
                    }
                    j3 = j7;
                    randomAccessFile2 = randomAccessFile3;
                    randomAccessFile2.seek(j3);
                    randomAccessFile3 = randomAccessFile2;
                }
            }
            throw new IOException();
        }
    }

    public String describe() {
        return "ftyp=" + this.majorBrand + "/" + this.minorVersion + "/" + Quirks$$ExternalSyntheticBackport0.m82m(",", this.compatibleBrands) + " video=" + this.videoHandler + "/" + this.videoLanguage + " audio=" + this.audioHandler + "/" + this.audioLanguage + " encoder=" + this.encoder + " fragmented=" + this.fragmented;
    }
}
