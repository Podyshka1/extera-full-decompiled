package androidx.media3.common.audio;

import com.google.android.gms.cast.MediaError;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class Sonic {
    private double accumulatedSpeedAdjustmentError;
    private final int channelCount;
    private final SonicImpl<?> impl;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private int outputFrameCount;
    private final float pitch;
    private int pitchFrameCount;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    public interface SonicImpl<T> {
        int bytesPerSample();

        void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i);

        void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i);

        void downSampleInput(int i, int i2);

        void ensureAdditionalFramesInInputBuffer(int i);

        void ensureAdditionalFramesInOutputBuffer(int i);

        void ensureAdditionalFramesInPitchBuffer(int i);

        int findPitchPeriodInRangeWithDownsampleBuffer(int i, int i2, int i3);

        int findPitchPeriodInRangeWithInputBuffer(int i, int i2, int i3);

        void flush();

        T getInputBuffer();

        T getOutputBuffer();

        T getPitchBuffer();

        void interpolateFrame(int i, long j, long j2);

        boolean isPreviousPeriodBetter();

        void overlapAdd(int i, int i2, int i3, int i4, int i5);

        void updatePreviousMinDiff();

        void zeroInputBuffer(int i, int i2);
    }

    public Sonic(int i, int i2, float f, float f2, int i3, boolean z) {
        this.inputSampleRateHz = i;
        this.channelCount = i2;
        this.speed = f;
        this.pitch = f2;
        this.rate = i / i3;
        this.minPeriod = i / MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
        int i4 = i / 65;
        this.maxPeriod = i4;
        this.maxRequiredFrameCount = i4 * 2;
        this.impl = z ? new SonicFloatImpl() : new SonicShortImpl();
    }

    public int getPendingInputBytes() {
        return this.inputFrameCount * this.channelCount * this.impl.bytesPerSample();
    }

    public void queueInput(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        int iBytesPerSample = iRemaining / (this.channelCount * this.impl.bytesPerSample());
        this.impl.ensureAdditionalFramesInInputBuffer(iBytesPerSample);
        this.impl.copyBufferToInputBuffer(byteBuffer, iRemaining);
        this.inputFrameCount += iBytesPerSample;
        processStreamInput();
    }

    public void getOutput(ByteBuffer byteBuffer) {
        Preconditions.checkState(this.outputFrameCount >= 0);
        int iMin = Math.min(byteBuffer.remaining() / (this.channelCount * this.impl.bytesPerSample()), this.outputFrameCount);
        this.impl.copyOutputToByteBuffer(byteBuffer, iMin);
        this.outputFrameCount -= iMin;
        System.arraycopy(this.impl.getOutputBuffer(), iMin * this.channelCount, this.impl.getOutputBuffer(), 0, this.outputFrameCount * this.channelCount);
    }

    public void queueEndOfStream() {
        int i = this.inputFrameCount;
        float f = this.speed;
        float f2 = this.pitch;
        double d = f / f2;
        double d2 = this.rate * f2;
        int i2 = this.remainingInputToCopyFrameCount;
        int i3 = this.outputFrameCount + ((int) ((((((((double) (i - i2)) / d) + ((double) i2)) + this.accumulatedSpeedAdjustmentError) + ((double) this.pitchFrameCount)) / d2) + 0.5d));
        this.accumulatedSpeedAdjustmentError = 0.0d;
        this.impl.ensureAdditionalFramesInInputBuffer((this.maxRequiredFrameCount * 2) + i);
        this.impl.zeroInputBuffer(i * this.channelCount, this.maxRequiredFrameCount * 2);
        this.inputFrameCount += this.maxRequiredFrameCount * 2;
        processStreamInput();
        if (this.outputFrameCount > i3) {
            this.outputFrameCount = Math.max(i3, 0);
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.accumulatedSpeedAdjustmentError = 0.0d;
        this.impl.flush();
    }

    public int getOutputSize() {
        Preconditions.checkState(this.outputFrameCount >= 0);
        return this.outputFrameCount * this.channelCount * this.impl.bytesPerSample();
    }

    private void copyToOutput(int i, int i2) {
        this.impl.ensureAdditionalFramesInOutputBuffer(i2);
        Object inputBuffer = this.impl.getInputBuffer();
        int i3 = i * this.channelCount;
        Object outputBuffer = this.impl.getOutputBuffer();
        int i4 = this.outputFrameCount;
        int i5 = this.channelCount;
        System.arraycopy(inputBuffer, i3, outputBuffer, i4 * i5, i5 * i2);
        this.outputFrameCount += i2;
    }

    private int copyInputToOutput(int i) {
        int iMin = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(i, iMin);
        this.remainingInputToCopyFrameCount -= iMin;
        return iMin;
    }

    private int findPitchPeriod(int i) {
        int iFindPitchPeriodInRangeWithDownsampleBuffer;
        int i2 = this.inputSampleRateHz;
        int i3 = i2 > 4000 ? i2 / 4000 : 1;
        if (this.channelCount == 1 && i3 == 1) {
            iFindPitchPeriodInRangeWithDownsampleBuffer = this.impl.findPitchPeriodInRangeWithInputBuffer(i, this.minPeriod, this.maxPeriod);
        } else {
            this.impl.downSampleInput(i, i3);
            int iFindPitchPeriodInRangeWithDownsampleBuffer2 = this.impl.findPitchPeriodInRangeWithDownsampleBuffer(0, this.minPeriod / i3, this.maxPeriod / i3);
            if (i3 != 1) {
                int i4 = iFindPitchPeriodInRangeWithDownsampleBuffer2 * i3;
                int i5 = i3 * 4;
                int i6 = i4 - i5;
                int i7 = i4 + i5;
                int i8 = this.minPeriod;
                if (i6 < i8) {
                    i6 = i8;
                }
                int i9 = this.maxPeriod;
                if (i7 > i9) {
                    i7 = i9;
                }
                int i10 = this.channelCount;
                SonicImpl<?> sonicImpl = this.impl;
                if (i10 == 1) {
                    iFindPitchPeriodInRangeWithDownsampleBuffer = sonicImpl.findPitchPeriodInRangeWithInputBuffer(i, i6, i7);
                } else {
                    sonicImpl.downSampleInput(i, 1);
                    iFindPitchPeriodInRangeWithDownsampleBuffer = this.impl.findPitchPeriodInRangeWithDownsampleBuffer(0, i6, i7);
                }
            } else {
                iFindPitchPeriodInRangeWithDownsampleBuffer = iFindPitchPeriodInRangeWithDownsampleBuffer2;
            }
        }
        int i11 = this.impl.isPreviousPeriodBetter() ? this.prevPeriod : iFindPitchPeriodInRangeWithDownsampleBuffer;
        this.impl.updatePreviousMinDiff();
        this.prevPeriod = iFindPitchPeriodInRangeWithDownsampleBuffer;
        return i11;
    }

    private void adjustRate(float f, int i) {
        int i2;
        int i3;
        if (this.outputFrameCount == i) {
            return;
        }
        int i4 = this.inputSampleRateHz;
        long j = (long) (i4 / f);
        long j2 = i4;
        while (j != 0 && j2 != 0 && j % 2 == 0 && j2 % 2 == 0) {
            j /= 2;
            j2 /= 2;
        }
        moveNewSamplesToPitchBuffer(i);
        int i5 = 0;
        while (true) {
            int i6 = this.pitchFrameCount;
            if (i5 < i6 - 1) {
                while (true) {
                    i2 = this.oldRatePosition;
                    long j3 = ((long) (i2 + 1)) * j;
                    i3 = this.newRatePosition;
                    if (j3 <= ((long) i3) * j2) {
                        break;
                    }
                    this.impl.ensureAdditionalFramesInOutputBuffer(1);
                    this.impl.interpolateFrame(i5, j2, j);
                    this.newRatePosition++;
                    this.outputFrameCount++;
                }
                int i7 = i2 + 1;
                this.oldRatePosition = i7;
                if (i7 == j2) {
                    this.oldRatePosition = 0;
                    Preconditions.checkState(((long) i3) == j);
                    this.newRatePosition = 0;
                }
                i5++;
            } else {
                removePitchFrames(i6 - 1);
                return;
            }
        }
    }

    private void moveNewSamplesToPitchBuffer(int i) {
        int i2 = this.outputFrameCount - i;
        this.impl.ensureAdditionalFramesInPitchBuffer(i2);
        Object outputBuffer = this.impl.getOutputBuffer();
        int i3 = this.channelCount * i;
        Object pitchBuffer = this.impl.getPitchBuffer();
        int i4 = this.pitchFrameCount;
        int i5 = this.channelCount;
        System.arraycopy(outputBuffer, i3, pitchBuffer, i4 * i5, i5 * i2);
        this.outputFrameCount = i;
        this.pitchFrameCount += i2;
    }

    private void removePitchFrames(int i) {
        if (i == 0) {
            return;
        }
        System.arraycopy(this.impl.getPitchBuffer(), this.channelCount * i, this.impl.getPitchBuffer(), 0, (this.pitchFrameCount - i) * this.channelCount);
        this.pitchFrameCount -= i;
    }

    private int skipPitchPeriod(int i, double d, int i2) {
        int i3;
        double d2 = this.accumulatedSpeedAdjustmentError;
        if (d >= 2.0d) {
            double d3 = (((double) i2) / (d - 1.0d)) + d2;
            int iRound = (int) Math.round(d3);
            this.accumulatedSpeedAdjustmentError = d3 - ((double) iRound);
            i3 = iRound;
        } else {
            double d4 = ((((double) i2) * (2.0d - d)) / (d - 1.0d)) + d2;
            int iRound2 = (int) Math.round(d4);
            this.remainingInputToCopyFrameCount = iRound2;
            this.accumulatedSpeedAdjustmentError = d4 - ((double) iRound2);
            i3 = i2;
        }
        this.impl.ensureAdditionalFramesInOutputBuffer(i3);
        this.impl.overlapAdd(i3, this.channelCount, this.outputFrameCount, i, i + i2);
        this.outputFrameCount += i3;
        return i3;
    }

    private int insertPitchPeriod(int i, double d, int i2) {
        int iRound;
        double d2 = this.accumulatedSpeedAdjustmentError;
        if (d < 0.5d) {
            double d3 = ((((double) i2) * d) / (1.0d - d)) + d2;
            iRound = (int) Math.round(d3);
            this.accumulatedSpeedAdjustmentError = d3 - ((double) iRound);
        } else {
            double d4 = ((((double) i2) * ((2.0d * d) - 1.0d)) / (1.0d - d)) + d2;
            int iRound2 = (int) Math.round(d4);
            this.remainingInputToCopyFrameCount = iRound2;
            this.accumulatedSpeedAdjustmentError = d4 - ((double) iRound2);
            iRound = i2;
        }
        int i3 = i2 + iRound;
        this.impl.ensureAdditionalFramesInOutputBuffer(i3);
        Object inputBuffer = this.impl.getInputBuffer();
        int i4 = this.channelCount * i;
        Object outputBuffer = this.impl.getOutputBuffer();
        int i5 = this.outputFrameCount;
        int i6 = this.channelCount;
        System.arraycopy(inputBuffer, i4, outputBuffer, i5 * i6, i6 * i2);
        this.impl.overlapAdd(iRound, this.channelCount, this.outputFrameCount + i2, i + i2, i);
        this.outputFrameCount += i3;
        return iRound;
    }

    private void changeSpeed(double d) {
        int iInsertPitchPeriod;
        int i = this.inputFrameCount;
        if (i < this.maxRequiredFrameCount) {
            return;
        }
        int i2 = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                iInsertPitchPeriod = copyInputToOutput(i2);
            } else {
                int iFindPitchPeriod = findPitchPeriod(i2);
                if (d > 1.0d) {
                    iInsertPitchPeriod = iFindPitchPeriod + skipPitchPeriod(i2, d, iFindPitchPeriod);
                } else {
                    iInsertPitchPeriod = insertPitchPeriod(i2, d, iFindPitchPeriod);
                }
            }
            i2 += iInsertPitchPeriod;
        } while (this.maxRequiredFrameCount + i2 <= i);
        removeProcessedInputFrames(i2);
    }

    private void removeProcessedInputFrames(int i) {
        int i2 = this.inputFrameCount - i;
        System.arraycopy(this.impl.getInputBuffer(), i * this.channelCount, this.impl.getInputBuffer(), 0, this.channelCount * i2);
        this.inputFrameCount = i2;
    }

    private void processStreamInput() {
        int i = this.outputFrameCount;
        float f = this.speed;
        float f2 = this.pitch;
        double d = f / f2;
        float f3 = this.rate * f2;
        if (d > 1.0000100135803223d || d < 0.9999899864196777d) {
            changeSpeed(d);
        } else {
            copyToOutput(0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f3 != 1.0f) {
            adjustRate(f3, i);
        }
    }

    public final class SonicFloatImpl implements SonicImpl<float[]> {
        private final float[] downSampleBuffer;
        private float[] inputBuffer;
        private double maxDiff;
        private double minDiff;
        private float[] outputBuffer;
        private float[] pitchBuffer;
        private double prevMinDiff;

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int bytesPerSample() {
            return 4;
        }

        public SonicFloatImpl() {
            this.downSampleBuffer = new float[Sonic.this.maxRequiredFrameCount];
            this.inputBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.outputBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.pitchBuffer = new float[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void interpolateFrame(int i, long j, long j2) {
            int i2 = 0;
            while (i2 < Sonic.this.channelCount) {
                SonicFloatImpl sonicFloatImpl = this;
                this.outputBuffer[(Sonic.this.outputFrameCount * Sonic.this.channelCount) + i2] = sonicFloatImpl.interpolate(this.pitchBuffer, (Sonic.this.channelCount * i) + i2, j, j2);
                i2++;
                this = sonicFloatImpl;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public boolean isPreviousPeriodBetter() {
            if (this.minDiff == 0.0d || Sonic.this.prevPeriod == 0) {
                return false;
            }
            double d = this.maxDiff;
            double d2 = this.minDiff;
            return d <= d2 * 3.0d && d2 * 2.0d > this.prevMinDiff * 3.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void downSampleInput(int i, int i2) {
            int i3 = Sonic.this.maxRequiredFrameCount / i2;
            int i4 = Sonic.this.channelCount * i2;
            int i5 = i * Sonic.this.channelCount;
            for (int i6 = 0; i6 < i3; i6++) {
                double d = 0.0d;
                for (int i7 = 0; i7 < i4; i7++) {
                    d += (double) this.inputBuffer[(i6 * i4) + i5 + i7];
                }
                this.downSampleBuffer[i6] = (float) (d / ((double) i4));
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithDownsampleBuffer(int i, int i2, int i3) {
            return findPitchPeriodInRange(this.downSampleBuffer, i, i2, i3);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithInputBuffer(int i, int i2, int i3) {
            return findPitchPeriodInRange(this.inputBuffer, i, i2, i3);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void flush() {
            this.prevMinDiff = 0.0d;
            this.minDiff = 0.0d;
            this.maxDiff = 0.0d;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void overlapAdd(int i, int i2, int i3, int i4, int i5) {
            float[] fArr = this.outputBuffer;
            float[] fArr2 = this.inputBuffer;
            overlapAdd(i, i2, fArr, i3, fArr2, i4, fArr2, i5);
        }

        private void overlapAdd(int i, int i2, float[] fArr, int i3, float[] fArr2, int i4, float[] fArr3, int i5) {
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = (i3 * i2) + i6;
                int i8 = (i5 * i2) + i6;
                int i9 = (i4 * i2) + i6;
                for (int i10 = 0; i10 < i; i10++) {
                    fArr[i7] = ((fArr2[i9] * (i - i10)) + (fArr3[i8] * i10)) / i;
                    i7 += i2;
                    i9 += i2;
                    i8 += i2;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void updatePreviousMinDiff() {
            this.prevMinDiff = this.minDiff;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInInputBuffer(int i) {
            this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, Sonic.this.inputFrameCount, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInOutputBuffer(int i) {
            this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, Sonic.this.outputFrameCount, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInPitchBuffer(int i) {
            this.pitchBuffer = ensureSpaceForAdditionalFrames(this.pitchBuffer, Sonic.this.pitchFrameCount, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void zeroInputBuffer(int i, int i2) {
            for (int i3 = 0; i3 < Sonic.this.channelCount * i2; i3++) {
                this.inputBuffer[i + i3] = 0.0f;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i) {
            byteBuffer.asFloatBuffer().get(this.inputBuffer, Sonic.this.inputFrameCount * Sonic.this.channelCount, i / bytesPerSample());
            byteBuffer.position(byteBuffer.position() + i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i) {
            byteBuffer.asFloatBuffer().put(this.outputBuffer, 0, Sonic.this.channelCount * i);
            byteBuffer.position(byteBuffer.position() + (i * bytesPerSample() * Sonic.this.channelCount));
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getInputBuffer() {
            return this.inputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getOutputBuffer() {
            return this.outputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public float[] getPitchBuffer() {
            return this.pitchBuffer;
        }

        private float interpolate(float[] fArr, int i, long j, long j2) {
            float f = fArr[i];
            float f2 = fArr[i + Sonic.this.channelCount];
            long j3 = ((long) Sonic.this.newRatePosition) * j;
            long j4 = ((long) Sonic.this.oldRatePosition) * j2;
            long j5 = ((long) (Sonic.this.oldRatePosition + 1)) * j2;
            long j6 = j5 - j3;
            return ((j6 * f) + ((r3 - j6) * f2)) / (j5 - j4);
        }

        private int findPitchPeriodInRange(float[] fArr, int i, int i2, int i3) {
            int i4 = Sonic.this.channelCount * i;
            double d = 1.0d;
            int i5 = 0;
            double d2 = 0.0d;
            int i6 = 255;
            int i7 = i2;
            while (i7 <= i3) {
                double dAbs = 0.0d;
                for (int i8 = 0; i8 < i7; i8++) {
                    dAbs += (double) Math.abs(fArr[i4 + i8] - fArr[(i4 + i7) + i8]);
                }
                int i9 = i4;
                double d3 = i7;
                if (((double) i5) * dAbs < d * d3) {
                    i5 = i7;
                    d = dAbs;
                }
                if (((double) i6) * dAbs > d3 * d2) {
                    i6 = i7;
                    d2 = dAbs;
                }
                i7++;
                i4 = i9;
            }
            this.minDiff = d / ((double) i5);
            this.maxDiff = d2 / ((double) i6);
            return i5;
        }

        private float[] ensureSpaceForAdditionalFrames(float[] fArr, int i, int i2) {
            int length = fArr.length / Sonic.this.channelCount;
            return i + i2 <= length ? fArr : Arrays.copyOf(fArr, (((length * 3) / 2) + i2) * Sonic.this.channelCount);
        }
    }

    public final class SonicShortImpl implements SonicImpl<short[]> {
        private final short[] downSampleBuffer;
        private short[] inputBuffer;
        private int maxDiff;
        private int minDiff;
        private short[] outputBuffer;
        private short[] pitchBuffer;
        private int prevMinDiff;

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int bytesPerSample() {
            return 2;
        }

        public SonicShortImpl() {
            this.downSampleBuffer = new short[Sonic.this.maxRequiredFrameCount];
            this.inputBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.outputBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
            this.pitchBuffer = new short[Sonic.this.maxRequiredFrameCount * Sonic.this.channelCount];
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void interpolateFrame(int i, long j, long j2) {
            int i2 = 0;
            while (i2 < Sonic.this.channelCount) {
                SonicShortImpl sonicShortImpl = this;
                this.outputBuffer[(Sonic.this.outputFrameCount * Sonic.this.channelCount) + i2] = sonicShortImpl.interpolate(this.pitchBuffer, (Sonic.this.channelCount * i) + i2, j, j2);
                i2++;
                this = sonicShortImpl;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public boolean isPreviousPeriodBetter() {
            if (this.minDiff == 0 || Sonic.this.prevPeriod == 0) {
                return false;
            }
            int i = this.maxDiff;
            int i2 = this.minDiff;
            return i <= i2 * 3 && i2 * 2 > this.prevMinDiff * 3;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void downSampleInput(int i, int i2) {
            short[] sArr = this.inputBuffer;
            int i3 = Sonic.this.maxRequiredFrameCount / i2;
            int i4 = Sonic.this.channelCount * i2;
            int i5 = i * Sonic.this.channelCount;
            for (int i6 = 0; i6 < i3; i6++) {
                int i7 = 0;
                for (int i8 = 0; i8 < i4; i8++) {
                    i7 += sArr[(i6 * i4) + i5 + i8];
                }
                this.downSampleBuffer[i6] = (short) (i7 / i4);
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithDownsampleBuffer(int i, int i2, int i3) {
            return findPitchPeriodInRange(this.downSampleBuffer, i, i2, i3);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public int findPitchPeriodInRangeWithInputBuffer(int i, int i2, int i3) {
            return findPitchPeriodInRange(this.inputBuffer, i, i2, i3);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void flush() {
            this.prevMinDiff = 0;
            this.minDiff = 0;
            this.maxDiff = 0;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void overlapAdd(int i, int i2, int i3, int i4, int i5) {
            short[] sArr = this.outputBuffer;
            short[] sArr2 = this.inputBuffer;
            overlapAdd(i, i2, sArr, i3, sArr2, i4, sArr2, i5);
        }

        private void overlapAdd(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = (i3 * i2) + i6;
                int i8 = (i5 * i2) + i6;
                int i9 = (i4 * i2) + i6;
                for (int i10 = 0; i10 < i; i10++) {
                    sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                    i7 += i2;
                    i9 += i2;
                    i8 += i2;
                }
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void updatePreviousMinDiff() {
            this.prevMinDiff = this.minDiff;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInInputBuffer(int i) {
            this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, Sonic.this.inputFrameCount, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInOutputBuffer(int i) {
            this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, Sonic.this.outputFrameCount, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void ensureAdditionalFramesInPitchBuffer(int i) {
            this.pitchBuffer = ensureSpaceForAdditionalFrames(this.pitchBuffer, Sonic.this.pitchFrameCount, i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void zeroInputBuffer(int i, int i2) {
            for (int i3 = 0; i3 < Sonic.this.channelCount * i2; i3++) {
                this.inputBuffer[i + i3] = 0;
            }
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyBufferToInputBuffer(ByteBuffer byteBuffer, int i) {
            byteBuffer.asShortBuffer().get(this.inputBuffer, Sonic.this.inputFrameCount * Sonic.this.channelCount, i / 2);
            byteBuffer.position(byteBuffer.position() + i);
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public void copyOutputToByteBuffer(ByteBuffer byteBuffer, int i) {
            byteBuffer.asShortBuffer().put(this.outputBuffer, 0, Sonic.this.channelCount * i);
            byteBuffer.position(byteBuffer.position() + (i * bytesPerSample() * Sonic.this.channelCount));
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getInputBuffer() {
            return this.inputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getOutputBuffer() {
            return this.outputBuffer;
        }

        @Override // androidx.media3.common.audio.Sonic.SonicImpl
        public short[] getPitchBuffer() {
            return this.pitchBuffer;
        }

        private int findPitchPeriodInRange(short[] sArr, int i, int i2, int i3) {
            int i4 = i * Sonic.this.channelCount;
            int i5 = 255;
            int i6 = 1;
            int i7 = 0;
            int i8 = 0;
            while (i2 <= i3) {
                int iAbs = 0;
                for (int i9 = 0; i9 < i2; i9++) {
                    iAbs += Math.abs(sArr[i4 + i9] - sArr[(i4 + i2) + i9]);
                }
                if (iAbs * i7 < i6 * i2) {
                    i7 = i2;
                    i6 = iAbs;
                }
                if (iAbs * i5 > i8 * i2) {
                    i5 = i2;
                    i8 = iAbs;
                }
                i2++;
            }
            this.minDiff = i6 / i7;
            this.maxDiff = i8 / i5;
            return i7;
        }

        private short interpolate(short[] sArr, int i, long j, long j2) {
            short s = sArr[i];
            short s2 = sArr[i + Sonic.this.channelCount];
            long j3 = ((long) Sonic.this.newRatePosition) * j;
            long j4 = ((long) Sonic.this.oldRatePosition) * j2;
            long j5 = ((long) (Sonic.this.oldRatePosition + 1)) * j2;
            long j6 = j5 - j3;
            long j7 = j5 - j4;
            return (short) (((((long) s) * j6) + ((j7 - j6) * ((long) s2))) / j7);
        }

        private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i, int i2) {
            int length = sArr.length / Sonic.this.channelCount;
            return i + i2 <= length ? sArr : Arrays.copyOf(sArr, (((length * 3) / 2) + i2) * Sonic.this.channelCount);
        }
    }
}
