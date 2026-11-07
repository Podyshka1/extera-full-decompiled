package androidx.media3.common.audio;

import androidx.media3.common.util.Assertions;
import com.google.android.gms.cast.MediaError;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class Sonic {
    private double accumulatedSpeedAdjustmentError;
    private final int channelCount;
    private final short[] downSampleBuffer;
    private short[] inputBuffer;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private int maxDiff;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private int minDiff;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private short[] outputBuffer;
    private int outputFrameCount;
    private final float pitch;
    private short[] pitchBuffer;
    private int pitchFrameCount;
    private int prevMinDiff;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    public Sonic(int i, int i2, float f, float f2, int i3) {
        this.inputSampleRateHz = i;
        this.channelCount = i2;
        this.speed = f;
        this.pitch = f2;
        this.rate = i / i3;
        this.minPeriod = i / MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
        int i4 = i / 65;
        this.maxPeriod = i4;
        int i5 = i4 * 2;
        this.maxRequiredFrameCount = i5;
        this.downSampleBuffer = new short[i5];
        this.inputBuffer = new short[i5 * i2];
        this.outputBuffer = new short[i5 * i2];
        this.pitchBuffer = new short[i5 * i2];
    }

    public int getPendingInputBytes() {
        return this.inputFrameCount * this.channelCount * 2;
    }

    public void queueInput(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.channelCount;
        int i2 = iRemaining / i;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.inputBuffer, this.inputFrameCount, i2);
        this.inputBuffer = sArrEnsureSpaceForAdditionalFrames;
        shortBuffer.get(sArrEnsureSpaceForAdditionalFrames, this.inputFrameCount * this.channelCount, ((i * i2) * 2) / 2);
        this.inputFrameCount += i2;
        processStreamInput();
    }

    public void getOutput(ShortBuffer shortBuffer) {
        Assertions.checkState(this.outputFrameCount >= 0);
        int iMin = Math.min(shortBuffer.remaining() / this.channelCount, this.outputFrameCount);
        shortBuffer.put(this.outputBuffer, 0, this.channelCount * iMin);
        int i = this.outputFrameCount - iMin;
        this.outputFrameCount = i;
        short[] sArr = this.outputBuffer;
        int i2 = this.channelCount;
        System.arraycopy(sArr, iMin * i2, sArr, 0, i * i2);
    }

    public void queueEndOfStream() {
        int i;
        int i2 = this.inputFrameCount;
        float f = this.speed;
        float f2 = this.pitch;
        double d = f / f2;
        double d2 = this.rate * f2;
        int i3 = this.remainingInputToCopyFrameCount;
        int i4 = this.outputFrameCount + ((int) ((((((((double) (i2 - i3)) / d) + ((double) i3)) + this.accumulatedSpeedAdjustmentError) + ((double) this.pitchFrameCount)) / d2) + 0.5d));
        this.accumulatedSpeedAdjustmentError = 0.0d;
        this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, i2, (this.maxRequiredFrameCount * 2) + i2);
        int i5 = 0;
        while (true) {
            i = this.maxRequiredFrameCount;
            int i6 = this.channelCount;
            if (i5 >= i * 2 * i6) {
                break;
            }
            this.inputBuffer[(i6 * i2) + i5] = 0;
            i5++;
        }
        this.inputFrameCount += i * 2;
        processStreamInput();
        if (this.outputFrameCount > i4) {
            this.outputFrameCount = Math.max(i4, 0);
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
        this.prevMinDiff = 0;
        this.minDiff = 0;
        this.maxDiff = 0;
        this.accumulatedSpeedAdjustmentError = 0.0d;
    }

    public int getOutputSize() {
        Assertions.checkState(this.outputFrameCount >= 0);
        return this.outputFrameCount * this.channelCount * 2;
    }

    private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.channelCount;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    private void removeProcessedInputFrames(int i) {
        int i2 = this.inputFrameCount - i;
        short[] sArr = this.inputBuffer;
        int i3 = this.channelCount;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.inputFrameCount = i2;
    }

    private void copyToOutput(short[] sArr, int i, int i2) {
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i2);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i3 = this.channelCount;
        System.arraycopy(sArr, i * i3, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i3, i3 * i2);
        this.outputFrameCount += i2;
    }

    private int copyInputToOutput(int i) {
        int iMin = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(this.inputBuffer, i, iMin);
        this.remainingInputToCopyFrameCount -= iMin;
        return iMin;
    }

    private void downSampleInput(short[] sArr, int i, int i2) {
        int i3 = this.maxRequiredFrameCount / i2;
        int i4 = this.channelCount;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.downSampleBuffer[i7] = (short) (i8 / i5);
        }
    }

    private int findPitchPeriodInRange(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.channelCount;
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

    private boolean previousPeriodBetter(int i, int i2) {
        return i != 0 && this.prevPeriod != 0 && i2 <= i * 3 && i * 2 > this.prevMinDiff * 3;
    }

    private int findPitchPeriod(short[] sArr, int i) {
        int iFindPitchPeriodInRange;
        int i2 = this.inputSampleRateHz;
        int i3 = i2 > 4000 ? i2 / 4000 : 1;
        if (this.channelCount == 1 && i3 == 1) {
            iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i, this.minPeriod, this.maxPeriod);
        } else {
            downSampleInput(sArr, i, i3);
            int iFindPitchPeriodInRange2 = findPitchPeriodInRange(this.downSampleBuffer, 0, this.minPeriod / i3, this.maxPeriod / i3);
            if (i3 != 1) {
                int i4 = iFindPitchPeriodInRange2 * i3;
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
                if (this.channelCount == 1) {
                    iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i, i6, i7);
                } else {
                    downSampleInput(sArr, i, 1);
                    iFindPitchPeriodInRange = findPitchPeriodInRange(this.downSampleBuffer, 0, i6, i7);
                }
            } else {
                iFindPitchPeriodInRange = iFindPitchPeriodInRange2;
            }
        }
        int i10 = previousPeriodBetter(this.minDiff, this.maxDiff) ? this.prevPeriod : iFindPitchPeriodInRange;
        this.prevMinDiff = this.minDiff;
        this.prevPeriod = iFindPitchPeriodInRange;
        return i10;
    }

    private void moveNewSamplesToPitchBuffer(int i) {
        int i2 = this.outputFrameCount - i;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.pitchBuffer, this.pitchFrameCount, i2);
        this.pitchBuffer = sArrEnsureSpaceForAdditionalFrames;
        short[] sArr = this.outputBuffer;
        int i3 = this.channelCount;
        System.arraycopy(sArr, i * i3, sArrEnsureSpaceForAdditionalFrames, this.pitchFrameCount * i3, i3 * i2);
        this.outputFrameCount = i;
        this.pitchFrameCount += i2;
    }

    private void removePitchFrames(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.pitchBuffer;
        int i2 = this.channelCount;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.pitchFrameCount - i) * i2);
        this.pitchFrameCount -= i;
    }

    private short interpolate(short[] sArr, int i, long j, long j2) {
        short s = sArr[i];
        short s2 = sArr[i + this.channelCount];
        long j3 = ((long) this.newRatePosition) * j;
        int i2 = this.oldRatePosition;
        long j4 = ((long) (i2 + 1)) * j2;
        long j5 = j4 - j3;
        long j6 = j4 - (((long) i2) * j2);
        return (short) (((((long) s) * j5) + ((j6 - j5) * ((long) s2))) / j6);
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
                    this.outputBuffer = this.ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, 1);
                    int i7 = 0;
                    while (true) {
                        int i8 = this.channelCount;
                        if (i7 < i8) {
                            Sonic sonic = this;
                            this.outputBuffer[(this.outputFrameCount * i8) + i7] = sonic.interpolate(this.pitchBuffer, (i8 * i5) + i7, j2, j);
                            i7++;
                            this = sonic;
                        }
                    }
                    Sonic sonic2 = this;
                    sonic2.newRatePosition++;
                    sonic2.outputFrameCount++;
                    this = sonic2;
                }
                Sonic sonic3 = this;
                int i9 = i2 + 1;
                sonic3.oldRatePosition = i9;
                if (i9 == j2) {
                    sonic3.oldRatePosition = 0;
                    Assertions.checkState(((long) i3) == j);
                    sonic3.newRatePosition = 0;
                }
                i5++;
                this = sonic3;
            } else {
                this.removePitchFrames(i6 - 1);
                return;
            }
        }
    }

    private int skipPitchPeriod(short[] sArr, int i, double d, int i2) {
        int iRound;
        double d2 = this.accumulatedSpeedAdjustmentError;
        if (d >= 2.0d) {
            double d3 = (((double) i2) / (d - 1.0d)) + d2;
            iRound = (int) Math.round(d3);
            this.accumulatedSpeedAdjustmentError = d3 - ((double) iRound);
        } else {
            double d4 = ((((double) i2) * (2.0d - d)) / (d - 1.0d)) + d2;
            int iRound2 = (int) Math.round(d4);
            this.remainingInputToCopyFrameCount = iRound2;
            this.accumulatedSpeedAdjustmentError = d4 - ((double) iRound2);
            iRound = i2;
        }
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, iRound);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i3 = iRound;
        overlapAdd(i3, this.channelCount, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount, sArr, i, sArr, i + i2);
        this.outputFrameCount += i3;
        return i3;
    }

    private int insertPitchPeriod(short[] sArr, int i, double d, int i2) {
        int i3;
        double d2 = this.accumulatedSpeedAdjustmentError;
        if (d < 0.5d) {
            double d3 = ((((double) i2) * d) / (1.0d - d)) + d2;
            int iRound = (int) Math.round(d3);
            this.accumulatedSpeedAdjustmentError = d3 - ((double) iRound);
            i3 = iRound;
        } else {
            double d4 = ((((double) i2) * ((2.0d * d) - 1.0d)) / (1.0d - d)) + d2;
            int iRound2 = (int) Math.round(d4);
            this.remainingInputToCopyFrameCount = iRound2;
            this.accumulatedSpeedAdjustmentError = d4 - ((double) iRound2);
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i4);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i5 = this.channelCount;
        System.arraycopy(sArr, i * i5, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i5, i5 * i2);
        overlapAdd(i3, this.channelCount, this.outputBuffer, this.outputFrameCount + i2, sArr, i + i2, sArr, i);
        this.outputFrameCount += i4;
        return i3;
    }

    private void changeSpeed(double d) {
        Sonic sonic;
        double d2;
        int i = this.inputFrameCount;
        if (i < this.maxRequiredFrameCount) {
            return;
        }
        int iInsertPitchPeriod = 0;
        while (true) {
            if (this.remainingInputToCopyFrameCount > 0) {
                iInsertPitchPeriod += this.copyInputToOutput(iInsertPitchPeriod);
                sonic = this;
                d2 = d;
            } else {
                int iFindPitchPeriod = this.findPitchPeriod(this.inputBuffer, iInsertPitchPeriod);
                short[] sArr = this.inputBuffer;
                if (d > 1.0d) {
                    sonic = this;
                    d2 = d;
                    iInsertPitchPeriod += iFindPitchPeriod + sonic.skipPitchPeriod(sArr, iInsertPitchPeriod, d2, iFindPitchPeriod);
                } else {
                    sonic = this;
                    d2 = d;
                    iInsertPitchPeriod += sonic.insertPitchPeriod(sArr, iInsertPitchPeriod, d2, iFindPitchPeriod);
                }
            }
            if (sonic.maxRequiredFrameCount + iInsertPitchPeriod > i) {
                sonic.removeProcessedInputFrames(iInsertPitchPeriod);
                return;
            } else {
                this = sonic;
                d = d2;
            }
        }
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
            copyToOutput(this.inputBuffer, 0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f3 != 1.0f) {
            adjustRate(f3, i);
        }
    }

    private static void overlapAdd(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
}
