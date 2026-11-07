package org.telegram.utils.camera.roundvideo;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.telegram.messenger.video.MP4Builder;
import org.telegram.messenger.video.Mp4Movie;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes6.dex */
final class RoundVideoMp4Writer {
    private MediaFormat audioFormat;
    private long audioSamples;
    private long availableSize;
    private MP4Builder builder;
    private final RoundVideoDiagnostics diagnostics;
    private final File file;
    private boolean finished;
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

    /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void writeSampleInternal(boolean z, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) throws IOException {
        boolean z2;
        if (z) {
            try {
                int iNormalizeVideoSample = normalizeVideoSample(byteBuffer, bufferInfo);
                z2 = false;
                if (iNormalizeVideoSample == 2) {
                    byteBuffer = this.videoConversionBuffer;
                    bufferInfo = this.convertedVideoInfo;
                } else if (iNormalizeVideoSample != 0) {
                    z2 = z;
                }
            } catch (Exception e) {
                throw asIOException("Unable to write MP4 sample", e);
            }
        }
        long jWriteSampleData = this.builder.writeSampleData(z ? this.videoTrack : this.audioTrack, byteBuffer, bufferInfo, z2);
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
        Model$$ExternalSyntheticBUOutline0.m1054m("MP4 tracks are not initialized");
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
    private int normalizeVideoSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        int i = bufferInfo.offset;
        int i2 = bufferInfo.size + i;
        int iFindStartCode = findStartCode(byteBuffer, i, i2);
        if (iFindStartCode != bufferInfo.offset) {
            return 0;
        }
        int iStartCodeLength = startCodeLength(byteBuffer, iFindStartCode, i2);
        int iFindStartCode2 = findStartCode(byteBuffer, iFindStartCode + iStartCodeLength, i2);
        if (iStartCodeLength == 4 && iFindStartCode2 < 0) {
            return 1;
        }
        int i3 = iFindStartCode;
        int i4 = 0;
        int i5 = 0;
        while (i3 >= 0) {
            int iStartCodeLength2 = i3 + startCodeLength(byteBuffer, i3, i2);
            int iFindStartCode3 = findStartCode(byteBuffer, iStartCodeLength2, i2);
            int i6 = iFindStartCode3 < 0 ? i2 : iFindStartCode3;
            if (i6 > iStartCodeLength2) {
                i4++;
                i5 += (i6 + 4) - iStartCodeLength2;
            }
            i3 = iFindStartCode3;
        }
        if (i4 == 0) {
            return 0;
        }
        ensureVideoConversionCapacity(i5);
        this.videoConversionBuffer.clear();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        while (iFindStartCode >= 0) {
            try {
                int iStartCodeLength3 = iFindStartCode + startCodeLength(byteBuffer, iFindStartCode, i2);
                int iFindStartCode4 = findStartCode(byteBuffer, iStartCodeLength3, i2);
                int i7 = iFindStartCode4 < 0 ? i2 : iFindStartCode4;
                if (i7 > iStartCodeLength3) {
                    this.videoConversionBuffer.putInt(i7 - iStartCodeLength3);
                    byteBuffer.position(iStartCodeLength3);
                    byteBuffer.limit(i7);
                    this.videoConversionBuffer.put(byteBuffer);
                }
                iFindStartCode = iFindStartCode4;
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
        return 2;
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
        if (exc instanceof IOException) {
            return (IOException) exc;
        }
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
