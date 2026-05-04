package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import org.telegram.messenger.MediaController;

/* JADX INFO: loaded from: classes4.dex */
final class StreamFormatChunk implements AviChunk {
    public final Format format;

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return 1718776947;
    }

    public static AviChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
        if (i == 2) {
            return parseBitmapInfoHeader(parsableByteArray);
        }
        if (i == 1) {
            return parseWaveFormatEx(parsableByteArray);
        }
        Log.m329w("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + Util.getTrackTypeString(i));
        return null;
    }

    public StreamFormatChunk(Format format) {
        this.format = format;
    }

    private static AviChunk parseBitmapInfoHeader(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        int littleEndianInt = parsableByteArray.readLittleEndianInt();
        int littleEndianInt2 = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(4);
        int littleEndianInt3 = parsableByteArray.readLittleEndianInt();
        String mimeTypeFromCompression = getMimeTypeFromCompression(littleEndianInt3);
        if (mimeTypeFromCompression == null) {
            Log.m329w("StreamFormatChunk", "Ignoring track with unsupported compression " + littleEndianInt3);
            return null;
        }
        Format.Builder builder = new Format.Builder();
        builder.setWidth(littleEndianInt).setHeight(littleEndianInt2).setSampleMimeType(mimeTypeFromCompression);
        return new StreamFormatChunk(builder.build());
    }

    private static AviChunk parseWaveFormatEx(ParsableByteArray parsableByteArray) {
        int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        String mimeTypeFromTag = getMimeTypeFromTag(littleEndianUnsignedShort);
        if (mimeTypeFromTag == null) {
            Log.m329w("StreamFormatChunk", "Ignoring track with unsupported format tag " + littleEndianUnsignedShort);
            return null;
        }
        int littleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort();
        int littleEndianInt = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(6);
        int pcmEncoding = Util.getPcmEncoding(parsableByteArray.readUnsignedShort());
        int littleEndianUnsignedShort3 = parsableByteArray.readLittleEndianUnsignedShort();
        byte[] bArr = new byte[littleEndianUnsignedShort3];
        parsableByteArray.readBytes(bArr, 0, littleEndianUnsignedShort3);
        Format.Builder builder = new Format.Builder();
        builder.setSampleMimeType(mimeTypeFromTag).setChannelCount(littleEndianUnsignedShort2).setSampleRate(littleEndianInt);
        if ("audio/raw".equals(mimeTypeFromTag) && pcmEncoding != 0) {
            builder.setPcmEncoding(pcmEncoding);
        }
        if (MediaController.AUDIO_MIME_TYPE.equals(mimeTypeFromTag) && littleEndianUnsignedShort3 > 0) {
            builder.setInitializationData(ImmutableList.m483of((Object) bArr));
        }
        return new StreamFormatChunk(builder.build());
    }

    private static String getMimeTypeFromTag(int i) {
        if (i == 1) {
            return "audio/raw";
        }
        if (i == 85) {
            return "audio/mpeg";
        }
        if (i == 255) {
            return MediaController.AUDIO_MIME_TYPE;
        }
        if (i == 8192) {
            return "audio/ac3";
        }
        if (i != 8193) {
            return null;
        }
        return "audio/vnd.dts";
    }

    private static String getMimeTypeFromCompression(int i) {
        switch (i) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return "video/mp4v-es";
            case 826496577:
            case 828601953:
            case 875967048:
                return MediaController.VIDEO_MIME_TYPE;
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }
}
