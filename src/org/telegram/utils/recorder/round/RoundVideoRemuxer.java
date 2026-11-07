package org.telegram.utils.recorder.round;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import org.telegram.tgnet.TLObject;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes8.dex */
abstract class RoundVideoRemuxer {

    public static final class Result {
        final long durationMs;
        final long startMs;

        public Result(long j, long j2) {
            this.startMs = j;
            this.durationMs = j2;
        }
    }

    public static Result copyRange(File file, RoundVideoMp4Writer roundVideoMp4Writer, long j, long j2, boolean z) throws IOException {
        long durationUs = getDurationUs(file);
        long jMax = Math.max(0L, j * 1000);
        long jMin = Math.min(durationUs, Math.max(jMax, j2 * 1000));
        long jFindVideoSyncStart = findVideoSyncStart(file, jMax, jMin);
        if (jFindVideoSyncStart < 0 || jFindVideoSyncStart >= jMin) {
            Model$$ExternalSyntheticBUOutline0.m1107m("Trim range has no video sync sample");
            return null;
        }
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            mediaExtractor.setDataSource(file.getAbsolutePath());
            int iFindTrack = findTrack(mediaExtractor, true);
            int iFindTrack2 = findTrack(mediaExtractor, false);
            if (iFindTrack < 0 || (z && iFindTrack2 < 0)) {
                throw new IOException("Source file has no required tracks");
            }
            roundVideoMp4Writer.setTrackFormat(true, mediaExtractor.getTrackFormat(iFindTrack));
            if (z) {
                roundVideoMp4Writer.setTrackFormat(false, mediaExtractor.getTrackFormat(iFindTrack2));
            }
            mediaExtractor.release();
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(TLObject.FLAG_21);
            copyTrack(file, roundVideoMp4Writer, true, jFindVideoSyncStart, jMin, byteBufferAllocateDirect);
            if (z) {
                copyTrack(file, roundVideoMp4Writer, false, jFindVideoSyncStart, jMin, byteBufferAllocateDirect);
            }
            return new Result(jFindVideoSyncStart / 1000, (jMin - jFindVideoSyncStart) / 1000);
        } catch (Throwable th) {
            mediaExtractor.release();
            throw th;
        }
    }

    public static long getDurationMs(File file) {
        return getDurationUs(file) / 1000;
    }

    public static void erase(File file) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                randomAccessFile.setLength(0L);
                randomAccessFile.close();
            } finally {
            }
        } catch (IOException unused) {
        }
        if (file.exists()) {
            file.delete();
        }
    }

    private static void copyTrack(File file, RoundVideoMp4Writer roundVideoMp4Writer, boolean z, long j, long j2, ByteBuffer byteBuffer) {
        boolean z2 = z;
        MediaExtractor mediaExtractor = new MediaExtractor();
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        try {
            mediaExtractor.setDataSource(file.getAbsolutePath());
            int iFindTrack = findTrack(mediaExtractor, z2);
            if (iFindTrack < 0) {
                throw new IOException("Source track disappeared");
            }
            mediaExtractor.selectTrack(iFindTrack);
            mediaExtractor.seekTo(j, z2 ? 1 : 2);
            while (mediaExtractor.getSampleTime() >= 0 && mediaExtractor.getSampleTime() < j) {
                mediaExtractor.advance();
            }
            while (mediaExtractor.getSampleTime() >= 0 && mediaExtractor.getSampleTime() < j2) {
                byteBuffer.clear();
                int sampleData = mediaExtractor.readSampleData(byteBuffer, 0);
                if (sampleData >= 0) {
                    bufferInfo.set(0, sampleData, mediaExtractor.getSampleTime(), mediaExtractor.getSampleFlags());
                    roundVideoMp4Writer.writeSample(z2, byteBuffer, bufferInfo, -j);
                    mediaExtractor.advance();
                    z2 = z;
                }
            }
        } finally {
            mediaExtractor.release();
        }
    }

    private static long findVideoSyncStart(File file, long j, long j2) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            mediaExtractor.setDataSource(file.getAbsolutePath());
            int iFindTrack = findTrack(mediaExtractor, true);
            long j3 = -1;
            if (iFindTrack < 0) {
                return -1L;
            }
            mediaExtractor.selectTrack(iFindTrack);
            mediaExtractor.seekTo(j, 1);
            long sampleTime = mediaExtractor.getSampleTime();
            if (sampleTime >= 0 && sampleTime < j2) {
                j3 = sampleTime;
            }
            return j3;
        } finally {
            mediaExtractor.release();
        }
    }

    private static long getDurationUs(File file) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            mediaExtractor.setDataSource(file.getAbsolutePath());
            long jMax = 0;
            for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
                if (trackFormat.containsKey("durationUs")) {
                    jMax = Math.max(jMax, trackFormat.getLong("durationUs"));
                }
            }
            return jMax;
        } finally {
            mediaExtractor.release();
        }
    }

    private static int findTrack(MediaExtractor mediaExtractor, boolean z) {
        String str = z ? "video/" : "audio/";
        for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
            String string = mediaExtractor.getTrackFormat(i).getString("mime");
            if (string != null && string.startsWith(str)) {
                return i;
            }
        }
        return -1;
    }
}
