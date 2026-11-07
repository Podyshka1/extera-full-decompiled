package androidx.media3.extractor.mp3;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;

/* JADX INFO: loaded from: classes4.dex */
final class XingFrame {
    public final long dataSize;
    public final int encoderDelay;
    public final int encoderPadding;
    public final long frameCount;
    public final MpegAudioUtil.Header header;
    public final Mp3InfoReplayGain replayGain;
    public final long[] tableOfContents;

    private XingFrame(MpegAudioUtil.Header header, long j, long j2, long[] jArr, Mp3InfoReplayGain mp3InfoReplayGain, int i, int i2) {
        this.header = new MpegAudioUtil.Header(header);
        this.frameCount = j;
        this.dataSize = j2;
        this.tableOfContents = jArr;
        this.replayGain = mp3InfoReplayGain;
        this.encoderDelay = i;
        this.encoderPadding = i2;
    }

    public static XingFrame parse(MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        long[] jArr;
        int i;
        int i2;
        int i3 = parsableByteArray.readInt();
        int unsignedIntToInt = (i3 & 1) != 0 ? parsableByteArray.readUnsignedIntToInt() : -1;
        long unsignedInt = (i3 & 2) != 0 ? parsableByteArray.readUnsignedInt() : -1L;
        Mp3InfoReplayGain mp3InfoReplayGain = null;
        if ((i3 & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i4 = 0; i4 < 100; i4++) {
                jArr2[i4] = parsableByteArray.readUnsignedByte();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((i3 & 8) != 0) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.bytesLeft() >= 24) {
            parsableByteArray.skipBytes(11);
            mp3InfoReplayGain = Mp3InfoReplayGain.parse(parsableByteArray.readFloat(), parsableByteArray.readUnsignedShort(), parsableByteArray.readUnsignedShort());
            parsableByteArray.skipBytes(2);
            int unsignedInt24 = parsableByteArray.readUnsignedInt24();
            i2 = unsignedInt24 & 4095;
            i = (16773120 & unsignedInt24) >> 12;
        } else {
            i = -1;
            i2 = -1;
        }
        return new XingFrame(header, unsignedIntToInt, unsignedInt, jArr, mp3InfoReplayGain, i, i2);
    }

    public long computeDurationUs() {
        long j = this.frameCount;
        if (j == -1 || j == 0) {
            return -9223372036854775807L;
        }
        MpegAudioUtil.Header header = this.header;
        return Util.sampleCountToDurationUs((j * ((long) header.samplesPerFrame)) - 1, header.sampleRate);
    }

    public Metadata getMetadata() {
        Mp3InfoReplayGain mp3InfoReplayGain = this.replayGain;
        if (mp3InfoReplayGain != null) {
            return new Metadata(mp3InfoReplayGain);
        }
        return null;
    }
}
