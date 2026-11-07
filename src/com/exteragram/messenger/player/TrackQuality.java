package com.exteragram.messenger.player;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Locale;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TrackQuality {
    private static final HashMap<Long, Info> cache = new HashMap<>();

    public static final class Info {
        public int bitrateKbps;
        public int bitsPerSample;
        public String format;
        public boolean probed;
        public int sampleRate;

        public String formatBitrate() {
            int i = this.bitrateKbps;
            if (i > 0) {
                return LocaleController.formatString(C2807R.string.PlayerQualityKbps, Integer.valueOf(i));
            }
            return null;
        }

        public String formatSampleRate() {
            int i = this.sampleRate;
            if (i <= 0) {
                return null;
            }
            float f = i / 1000.0f;
            int i2 = (int) f;
            return LocaleController.formatString(C2807R.string.PlayerQualityKhz, f == ((float) i2) ? String.valueOf(i2) : String.format(Locale.US, "%.1f", Float.valueOf(f)));
        }

        public String formatBitDepth() {
            int i = this.bitsPerSample;
            if (i > 0) {
                return LocaleController.formatString(C2807R.string.PlayerQualityBits, Integer.valueOf(i));
            }
            return null;
        }
    }

    public static Info get(MessageObject messageObject) {
        TLRPC.Document document = messageObject != null ? messageObject.getDocument() : null;
        if (document == null) {
            return null;
        }
        Info info = cache.get(Long.valueOf(document.id));
        return info != null ? info : describe(document, messageObject.getDuration(), null);
    }

    public static void load(MessageObject messageObject, final Utilities.Callback<Info> callback) {
        final File localFile;
        final TLRPC.Document document = messageObject != null ? messageObject.getDocument() : null;
        if (document == null || cache.containsKey(Long.valueOf(document.id)) || (localFile = PlayerActions.getLocalFile(messageObject)) == null || !localFile.exists()) {
            return;
        }
        final double duration = messageObject.getDuration();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.player.TrackQuality$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TrackQuality.$r8$lambda$8fFWQ2ykKnM4TqvGVTMRJuKmh3Y(localFile, document, duration, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$8fFWQ2ykKnM4TqvGVTMRJuKmh3Y(File file, final TLRPC.Document document, final double d, final Utilities.Callback callback) {
        final Probe probe = probe(file);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.player.TrackQuality$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                TrackQuality.$r8$lambda$j1Tnmng1YqD1A9xbJq1i80jz9yc(document, d, probe, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$j1Tnmng1YqD1A9xbJq1i80jz9yc(TLRPC.Document document, double d, Probe probe, Utilities.Callback callback) {
        Info infoDescribe = describe(document, d, probe);
        cache.put(Long.valueOf(document.id), infoDescribe);
        callback.run(infoDescribe);
    }

    private static Info describe(TLRPC.Document document, double d, Probe probe) {
        String fromDocument;
        Info info = new Info();
        info.probed = probe != null;
        if (probe == null || (fromDocument = probe.format) == null) {
            fromDocument = formatFromDocument(document);
        }
        info.format = fromDocument;
        long j = probe != null ? probe.bitrate : 0L;
        if (j <= 0) {
            if (document.size > 0 && d > 1.0d) {
                j = (long) ((r5 * 8) / d);
            }
        }
        info.bitrateKbps = (int) Math.round(j / 1000.0d);
        if (probe != null) {
            info.sampleRate = probe.sampleRate;
            info.bitsPerSample = probe.bitsPerSample;
        }
        return info;
    }

    private static String formatFromDocument(TLRPC.Document document) {
        Locale locale;
        String lowerCase;
        String documentFileName = FileLoader.getDocumentFileName(document);
        int iLastIndexOf = documentFileName != null ? documentFileName.lastIndexOf(46) : -1;
        if (iLastIndexOf >= 0 && iLastIndexOf < documentFileName.length() - 1) {
            String strSubstring = documentFileName.substring(iLastIndexOf + 1);
            locale = Locale.ROOT;
            lowerCase = strSubstring.toLowerCase(locale);
            lowerCase.getClass();
            switch (lowerCase) {
                case "aac":
                case "m4a":
                    return "AAC";
                case "oga":
                case "ogg":
                    return "OGG";
                default:
                    if (lowerCase.length() <= 4) {
                        return lowerCase.toUpperCase(locale);
                    }
                    return null;
            }
        }
        return formatFromMime(document.mime_type);
    }

    private static String formatFromMime(String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        switch (lowerCase) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
    
        if ("audio/raw".equals(r6) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
    
        r4 = formatFromHeader(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
    
        r4 = formatFromMime(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        r2.format = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (r5.containsKey("sample-rate") == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r2.sampleRate = r5.getInteger("sample-rate");
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
    
        if (r5.containsKey("bitrate") == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005b, code lost:
    
        r2.bitrate = r5.getInteger("bitrate");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Probe probe(File file) {
        Probe probe = new Probe();
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            try {
                mediaExtractor.setDataSource(file.getAbsolutePath());
                int i = 0;
                while (true) {
                    if (i >= mediaExtractor.getTrackCount()) {
                        break;
                    }
                    MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
                    String string = trackFormat.getString("mime");
                    if (string != null && string.startsWith("audio/")) {
                        break;
                    }
                    i++;
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            mediaExtractor.release();
            if ("FLAC".equals(probe.format)) {
                probe.bitsPerSample = readFlacBitsPerSample(file);
            }
            return probe;
        } catch (Throwable th) {
            mediaExtractor.release();
            throw th;
        }
    }

    private static String formatFromHeader(File file) {
        FileInputStream fileInputStream;
        byte[] bArr;
        String str;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                bArr = new byte[12];
            } finally {
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        if (fileInputStream.read(bArr) == 12) {
            byte b2 = bArr[0];
            if (b2 == 102 && bArr[1] == 76 && bArr[2] == 97 && bArr[3] == 67) {
                str = "FLAC";
            } else if (b2 == 82 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 70 && bArr[8] == 87 && bArr[9] == 65 && bArr[10] == 86 && bArr[11] == 69) {
                str = "WAV";
            } else {
                if (b2 == 70 && bArr[1] == 79 && bArr[2] == 82 && bArr[3] == 77 && bArr[8] == 65 && bArr[9] == 73) {
                    if (bArr[10] == 70) {
                        str = "AIFF";
                    }
                }
                fileInputStream.close();
                return null;
            }
            fileInputStream.close();
            return str;
        }
        fileInputStream.close();
        return null;
        FileLog.m1040e(e);
        return null;
    }

    private static int readFlacBitsPerSample(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[26];
                if (fileInputStream.read(bArr) == 26 && bArr[0] == 102 && bArr[1] == 76 && bArr[2] == 97 && bArr[3] == 67 && (bArr[4] & ByteCompanionObject.MAX_VALUE) == 0) {
                    int i = ((((bArr[21] & UByte.MAX_VALUE) | ((bArr[20] & UByte.MAX_VALUE) << 8)) >> 4) & 31) + 1;
                    fileInputStream.close();
                    return i;
                }
                fileInputStream.close();
                return 0;
            } finally {
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
            return 0;
        }
    }

    public static final class Probe {
        long bitrate;
        int bitsPerSample;
        String format;
        int sampleRate;

        private Probe() {
        }
    }
}
