package org.telegram.utils.recorder.round;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import kotlin.UByte;
import org.telegram.messenger.video.MP4Builder;
import org.telegram.messenger.video.Mp4Movie;
import org.vosk.Model$$ExternalSyntheticBUOutline0;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes8.dex */
final class RoundVideoMp4Writer {
    private MediaFormat audioFormat;
    private long audioSamples;
    private long availableSize;
    private MP4Builder builder;
    private final RoundVideoDiagnostics diagnostics;
    private final File file;
    private boolean finished;
    private boolean firstVideoSampleLogged;
    private final boolean includeAudio;
    private final Listener listener;
    private long liveSegmentBaseUs;
    private final int outputSize;
    private boolean suppressAvailableNotifications;
    private ByteBuffer videoConversionBuffer;
    private MediaFormat videoFormat;
    private long videoSamples;
    private final ArrayList<PendingSample> pendingSamples = new ArrayList<>();
    private final TrackTimeline videoTimeline = new TrackTimeline(33333);
    private final TrackTimeline audioTimeline = new TrackTimeline(21333);
    private int videoTrack = -1;
    private int audioTrack = -1;
    private long liveSegmentOffsetUs = Long.MIN_VALUE;
    private final MediaCodec.BufferInfo convertedVideoInfo = new MediaCodec.BufferInfo();

    public interface Listener {
        void onBytesAvailable(long j);
    }

    public RoundVideoMp4Writer(File file, int i, boolean z, RoundVideoDiagnostics roundVideoDiagnostics, Listener listener) {
        this.file = file;
        this.outputSize = i;
        this.includeAudio = z;
        this.diagnostics = roundVideoDiagnostics;
        this.listener = listener;
    }

    public File getFile() {
        return this.file;
    }

    public synchronized void setTrackFormat(boolean z, MediaFormat mediaFormat) {
        try {
            if (this.finished) {
                return;
            }
            if (this.builder != null) {
                MediaFormat mediaFormat2 = z ? this.videoFormat : this.audioFormat;
                if ((!z || sameCodecSpecificData(mediaFormat2, mediaFormat, "csd-0", "csd-1")) && (z || !this.includeAudio || sameCodecSpecificData(mediaFormat2, mediaFormat, "csd-0"))) {
                    return;
                } else {
                    throw new IOException((z ? "Video" : "Audio").concat(" codec configuration changed between segments"));
                }
            }
            if (z) {
                this.videoFormat = mediaFormat;
            } else if (this.includeAudio) {
                this.audioFormat = mediaFormat;
            }
            initializeIfReady();
        } finally {
        }
    }

    public synchronized void writeSample(boolean z, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, long j) {
        try {
            if (!this.finished && (z || this.includeAudio)) {
                if (bufferInfo.size > 0) {
                    MediaCodec.BufferInfo bufferInfoCopyInfo = copyInfo(z, bufferInfo, j);
                    if (this.builder == null) {
                        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bufferInfo.size);
                        byteBuffer.position(bufferInfo.offset);
                        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                        byteBufferAllocateDirect.put(byteBuffer).flip();
                        bufferInfoCopyInfo.offset = 0;
                        this.pendingSamples.add(new PendingSample(z, byteBufferAllocateDirect, bufferInfoCopyInfo));
                        return;
                    }
                    writeSampleInternal(z, byteBuffer, bufferInfoCopyInfo);
                }
            }
        } finally {
        }
    }

    public synchronized void createPreview(File file) {
        requireBuilder();
        long jNanoTime = System.nanoTime();
        try {
            this.builder.finishMovie(file);
            this.diagnostics.log("MP4 preview written: file=" + file.getName() + ", size=" + file.length() + ", elapsedMs=" + elapsedMs(jNanoTime));
        } catch (Exception e) {
            throw asIOException("Unable to create preview MP4", e);
        }
    }

    public synchronized void finish() {
        if (this.finished) {
            return;
        }
        requireBuilder();
        long jNanoTime = System.nanoTime();
        try {
            this.builder.finishMovie();
            this.finished = true;
            notifyAvailable(this.file.length());
            this.diagnostics.log("MP4 finalized: file=" + this.file.getName() + ", size=" + this.file.length() + ", videoSamples=" + this.videoSamples + ", audioSamples=" + this.audioSamples + ", elapsedMs=" + elapsedMs(jNanoTime));
        } catch (Exception e) {
            throw asIOException("Unable to finish MP4", e);
        }
    }

    public synchronized void closeForReplacement() {
        this.suppressAvailableNotifications = true;
        try {
            finish();
        } finally {
            this.suppressAvailableNotifications = false;
        }
    }

    private void initializeIfReady() throws IOException {
        if (this.videoFormat == null) {
            return;
        }
        if (this.includeAudio && this.audioFormat == null) {
            return;
        }
        Mp4Movie mp4Movie = new Mp4Movie();
        mp4Movie.setCacheFile(this.file);
        int i = this.outputSize;
        mp4Movie.setSize(i, i);
        try {
            int i2 = 0;
            MP4Builder mP4BuilderCreateMovie = new MP4Builder().createMovie(mp4Movie, true, false);
            this.builder = mP4BuilderCreateMovie;
            this.videoTrack = mP4BuilderCreateMovie.addTrack(this.videoFormat, false);
            if (this.includeAudio) {
                this.audioTrack = this.builder.addTrack(this.audioFormat, true);
            }
            this.diagnostics.log("MP4 initialized: file=" + this.file.getName() + ", output=" + this.outputSize + "x" + this.outputSize + ", includeAudio=" + this.includeAudio + ", pendingSamples=" + this.pendingSamples.size());
            while (true) {
                int size = this.pendingSamples.size();
                ArrayList<PendingSample> arrayList = this.pendingSamples;
                if (i2 < size) {
                    PendingSample pendingSample = arrayList.get(i2);
                    writeSampleInternal(pendingSample.video, pendingSample.data, pendingSample.info);
                    i2++;
                } else {
                    arrayList.clear();
                    return;
                }
            }
        } catch (Exception e) {
            throw asIOException("Unable to initialize MP4", e);
        }
    }

    private void writeSampleInternal(boolean z, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws IOException {
        ByteBuffer byteBuffer2;
        MediaCodec.BufferInfo bufferInfo2;
        if (z) {
            try {
                strDescribeVideoSample = this.firstVideoSampleLogged ? null : describeVideoSample(byteBuffer, bufferInfo);
                normalizeVideoSample(byteBuffer, bufferInfo);
                byteBuffer2 = this.videoConversionBuffer;
                bufferInfo2 = this.convertedVideoInfo;
                if (!this.firstVideoSampleLogged) {
                    this.firstVideoSampleLogged = true;
                    this.diagnostics.log("first video sample prepared: " + strDescribeVideoSample + ", outputSize=" + bufferInfo2.size);
                }
            } catch (Exception e) {
                if (!z) {
                    strDescribeVideoSample = describeSample(byteBuffer, bufferInfo);
                } else if (strDescribeVideoSample == null) {
                    strDescribeVideoSample = describeVideoSampleSafely(byteBuffer, bufferInfo);
                }
                RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
                StringBuilder sb = new StringBuilder("MP4 sample write failed: track=");
                String str = MediaStreamTrack.AUDIO_TRACK_KIND;
                sb.append(z ? MediaStreamTrack.VIDEO_TRACK_KIND : MediaStreamTrack.AUDIO_TRACK_KIND);
                sb.append(", ");
                sb.append(strDescribeVideoSample);
                roundVideoDiagnostics.error(sb.toString(), e);
                StringBuilder sb2 = new StringBuilder("Unable to write ");
                if (z) {
                    str = MediaStreamTrack.VIDEO_TRACK_KIND;
                }
                sb2.append(str);
                sb2.append(" MP4 sample: ");
                sb2.append(strDescribeVideoSample);
                throw new IOException(sb2.toString(), e);
            }
        } else {
            byteBuffer2 = byteBuffer;
            bufferInfo2 = bufferInfo;
        }
        long jWriteSampleData = this.builder.writeSampleData(z ? this.videoTrack : this.audioTrack, byteBuffer2, bufferInfo2, false);
        if (z) {
            this.videoSamples++;
        } else {
            this.audioSamples++;
        }
        if (jWriteSampleData > 0) {
            notifyAvailable(jWriteSampleData);
        }
    }

    private void notifyAvailable(long j) {
        if (j <= this.availableSize) {
            return;
        }
        this.availableSize = j;
        if (this.suppressAvailableNotifications) {
            return;
        }
        this.listener.onBytesAvailable(j);
    }

    private void requireBuilder() throws IOException {
        if (this.builder != null) {
            return;
        }
        Model$$ExternalSyntheticBUOutline0.m1107m("MP4 tracks are not initialized");
    }

    private static long elapsedMs(long j) {
        return (System.nanoTime() - j) / 1000000;
    }

    private MediaCodec.BufferInfo copyInfo(boolean z, MediaCodec.BufferInfo bufferInfo, long j) {
        long jMax;
        TrackTimeline trackTimeline = z ? this.videoTimeline : this.audioTimeline;
        if (j < 0) {
            jMax = Math.max(0L, j + bufferInfo.presentationTimeUs);
        } else {
            if (this.liveSegmentOffsetUs != j) {
                this.liveSegmentOffsetUs = j;
                this.liveSegmentBaseUs = Math.max(j, Math.max(this.videoTimeline.nextPresentationTimeUs(), this.audioTimeline.nextPresentationTimeUs()));
                this.videoTimeline.startSegment();
                this.audioTimeline.startSegment();
            }
            if (trackTimeline.firstSourcePresentationTimeUs == Long.MIN_VALUE) {
                trackTimeline.firstSourcePresentationTimeUs = bufferInfo.presentationTimeUs;
            }
            jMax = this.liveSegmentBaseUs + Math.max(0L, bufferInfo.presentationTimeUs - trackTimeline.firstSourcePresentationTimeUs);
        }
        long j2 = jMax;
        trackTimeline.add(bufferInfo.presentationTimeUs, j2);
        MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
        bufferInfo2.set(bufferInfo.offset, bufferInfo.size, j2, bufferInfo.flags);
        return bufferInfo2;
    }

    /* JADX WARN: Finally extract failed */
    private void normalizeVideoSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws IOException {
        validateSampleRange(byteBuffer, bufferInfo);
        int i = bufferInfo.offset;
        int i2 = bufferInfo.size + i;
        int iFindStartCode = findStartCode(byteBuffer, i, i2);
        if (iFindStartCode != bufferInfo.offset) {
            copyVideoSample(byteBuffer, bufferInfo);
            return;
        }
        int i3 = 0;
        int i4 = iFindStartCode;
        int i5 = 0;
        while (i4 >= 0) {
            int iStartCodeLength = i4 + startCodeLength(byteBuffer, i4, i2);
            int iFindStartCode2 = findStartCode(byteBuffer, iStartCodeLength, i2);
            int i6 = iFindStartCode2 < 0 ? i2 : iFindStartCode2;
            if (i6 > iStartCodeLength) {
                i3++;
                i5 += (i6 + 4) - iStartCodeLength;
            }
            i4 = iFindStartCode2;
        }
        if (i3 == 0) {
            Model$$ExternalSyntheticBUOutline0.m1107m("Annex-B video sample contains no NAL units");
            return;
        }
        ensureVideoConversionCapacity(i5);
        this.videoConversionBuffer.clear();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        while (iFindStartCode >= 0) {
            try {
                int iStartCodeLength2 = iFindStartCode + startCodeLength(byteBuffer, iFindStartCode, i2);
                int iFindStartCode3 = findStartCode(byteBuffer, iStartCodeLength2, i2);
                int i7 = iFindStartCode3 < 0 ? i2 : iFindStartCode3;
                if (i7 > iStartCodeLength2) {
                    this.videoConversionBuffer.putInt(i7 - iStartCodeLength2);
                    byteBuffer.position(iStartCodeLength2);
                    byteBuffer.limit(i7);
                    this.videoConversionBuffer.put(byteBuffer);
                }
                iFindStartCode = iFindStartCode3;
            } catch (Throwable th) {
                byteBuffer.limit(iLimit);
                byteBuffer.position(iPosition);
                throw th;
            }
        }
        byteBuffer.limit(iLimit);
        byteBuffer.position(iPosition);
        this.videoConversionBuffer.flip();
        this.convertedVideoInfo.set(0, this.videoConversionBuffer.remaining(), bufferInfo.presentationTimeUs, bufferInfo.flags);
    }

    private void copyVideoSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        ensureVideoConversionCapacity(bufferInfo.size);
        this.videoConversionBuffer.clear();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        try {
            byteBuffer.position(bufferInfo.offset);
            byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
            this.videoConversionBuffer.put(byteBuffer);
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
            this.videoConversionBuffer.flip();
            this.convertedVideoInfo.set(0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
        } catch (Throwable th) {
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
            throw th;
        }
    }

    private void ensureVideoConversionCapacity(int i) {
        ByteBuffer byteBuffer = this.videoConversionBuffer;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.videoConversionBuffer = ByteBuffer.allocateDirect(i);
        }
    }

    private static int findStartCode(ByteBuffer byteBuffer, int i, int i2) {
        int i3;
        while (true) {
            int i4 = i + 2;
            if (i4 >= i2) {
                return -1;
            }
            if (byteBuffer.get(i) == 0 && byteBuffer.get(i + 1) == 0 && (byteBuffer.get(i4) == 1 || ((i3 = i + 3) < i2 && byteBuffer.get(i4) == 0 && byteBuffer.get(i3) == 1))) {
                break;
            }
            i++;
        }
        return i;
    }

    private static int startCodeLength(ByteBuffer byteBuffer, int i, int i2) {
        return (i + 3 >= i2 || byteBuffer.get(i + 2) != 0) ? 3 : 4;
    }

    private static void validateSampleRange(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws IOException {
        int i = bufferInfo.offset;
        int i2 = bufferInfo.size;
        long j = ((long) i) + ((long) i2);
        if (i < 0 || i2 < 0 || j > byteBuffer.limit()) {
            throw new IOException("Invalid codec buffer range: offset=" + bufferInfo.offset + ", size=" + bufferInfo.size + ", position=" + byteBuffer.position() + ", limit=" + byteBuffer.limit() + ", capacity=" + byteBuffer.capacity());
        }
    }

    private static String describeVideoSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws IOException {
        int iStartCodeLength;
        validateSampleRange(byteBuffer, bufferInfo);
        int i = bufferInfo.offset;
        int i2 = bufferInfo.size + i;
        int iFindStartCode = findStartCode(byteBuffer, i, i2);
        int i3 = 0;
        if (iFindStartCode == bufferInfo.offset) {
            iStartCodeLength = startCodeLength(byteBuffer, iFindStartCode, i2);
            while (iFindStartCode >= 0) {
                i3++;
                iFindStartCode = findStartCode(byteBuffer, iFindStartCode + startCodeLength(byteBuffer, iFindStartCode, i2), i2);
            }
        } else {
            iStartCodeLength = 0;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(describeSample(byteBuffer, bufferInfo));
        sb.append(", format=");
        sb.append(i3 > 0 ? "annex-b" : "avcc");
        sb.append(", nalCount=");
        sb.append(i3);
        sb.append(", firstPrefix=");
        sb.append(iStartCodeLength);
        sb.append(", head=");
        sb.append(sampleHead(byteBuffer, bufferInfo.offset, i2));
        return sb.toString();
    }

    private static String describeVideoSampleSafely(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        try {
            return describeVideoSample(byteBuffer, bufferInfo);
        } catch (Exception unused) {
            return describeSample(byteBuffer, bufferInfo);
        }
    }

    private static String describeSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        return "offset=" + bufferInfo.offset + ", size=" + bufferInfo.size + ", ptsUs=" + bufferInfo.presentationTimeUs + ", flags=" + bufferInfo.flags + ", position=" + byteBuffer.position() + ", limit=" + byteBuffer.limit() + ", capacity=" + byteBuffer.capacity();
    }

    private static String sampleHead(ByteBuffer byteBuffer, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(16, i2 - i);
        for (int i3 = 0; i3 < iMin; i3++) {
            if (i3 > 0) {
                sb.append(' ');
            }
            int i4 = byteBuffer.get(i + i3) & UByte.MAX_VALUE;
            if (i4 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i4));
        }
        return sb.toString();
    }

    private static boolean sameCodecSpecificData(MediaFormat mediaFormat, MediaFormat mediaFormat2, String... strArr) {
        if (mediaFormat == null) {
            return false;
        }
        for (String str : strArr) {
            if (!sameBytes(mediaFormat.getByteBuffer(str), mediaFormat2.getByteBuffer(str))) {
                return false;
            }
        }
        return true;
    }

    private static boolean sameBytes(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (byteBuffer == null || byteBuffer2 == null) {
            return byteBuffer == byteBuffer2;
        }
        int iCodecSpecificDataOffset = codecSpecificDataOffset(byteBuffer);
        int iCodecSpecificDataOffset2 = codecSpecificDataOffset(byteBuffer2);
        int iLimit = byteBuffer.limit() - iCodecSpecificDataOffset;
        if (iLimit != byteBuffer2.limit() - iCodecSpecificDataOffset2) {
            return false;
        }
        for (int i = 0; i < iLimit; i++) {
            if (byteBuffer.get(iCodecSpecificDataOffset + i) != byteBuffer2.get(iCodecSpecificDataOffset2 + i)) {
                return false;
            }
        }
        return true;
    }

    private static int codecSpecificDataOffset(ByteBuffer byteBuffer) {
        if (byteBuffer.limit() >= 4 && byteBuffer.get(0) == 0 && byteBuffer.get(1) == 0 && byteBuffer.get(2) == 0 && byteBuffer.get(3) == 1) {
            return 4;
        }
        return (byteBuffer.limit() >= 3 && byteBuffer.get(0) == 0 && byteBuffer.get(1) == 0 && byteBuffer.get(2) == 1) ? 3 : 0;
    }

    private static IOException asIOException(String str, Exception exc) {
        return new IOException(str, exc);
    }

    public static final class PendingSample {
        final ByteBuffer data;
        final MediaCodec.BufferInfo info;
        final boolean video;

        public PendingSample(boolean z, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            this.video = z;
            this.data = byteBuffer;
            this.info = bufferInfo;
        }
    }

    public static final class TrackTimeline {
        final long defaultDurationUs;
        long sampleDurationUs;
        long firstSourcePresentationTimeUs = Long.MIN_VALUE;
        long previousSourcePresentationTimeUs = Long.MIN_VALUE;
        long lastPresentationTimeUs = Long.MIN_VALUE;

        public TrackTimeline(long j) {
            this.defaultDurationUs = j;
            this.sampleDurationUs = j;
        }

        public void startSegment() {
            this.firstSourcePresentationTimeUs = Long.MIN_VALUE;
            this.previousSourcePresentationTimeUs = Long.MIN_VALUE;
        }

        public void add(long j, long j2) {
            long j3 = this.previousSourcePresentationTimeUs;
            if (j3 != Long.MIN_VALUE) {
                long j4 = j - j3;
                if (j4 > 0 && j4 < 1000000) {
                    this.sampleDurationUs = j4;
                }
            }
            this.previousSourcePresentationTimeUs = j;
            this.lastPresentationTimeUs = Math.max(this.lastPresentationTimeUs, j2);
        }

        public long nextPresentationTimeUs() {
            long j = this.lastPresentationTimeUs;
            if (j == Long.MIN_VALUE) {
                return 0L;
            }
            return j + Math.max(1L, this.sampleDurationUs);
        }
    }
}
