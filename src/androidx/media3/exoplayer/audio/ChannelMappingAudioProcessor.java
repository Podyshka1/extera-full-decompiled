package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.BaseAudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.telegram.ui.WearAuthSheet$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class ChannelMappingAudioProcessor extends BaseAudioProcessor {
    private int[] outputChannels;
    private int[] pendingOutputChannels;

    public void setChannelMap(int[] iArr) {
        this.pendingOutputChannels = iArr;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.pendingOutputChannels;
        if (iArr == null) {
            return AudioProcessor.AudioFormat.NOT_SET;
        }
        if (!Util.isEncodingLinearPcm(audioFormat.encoding)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        boolean z = audioFormat.channelCount != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= audioFormat.channelCount) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", audioFormat);
            }
            z |= i2 != i;
            i++;
        }
        if (z) {
            return new AudioProcessor.AudioFormat(audioFormat.sampleRate, iArr.length, audioFormat.encoding);
        }
        return AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) Assertions.checkNotNull(this.outputChannels);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferReplaceOutputBuffer = replaceOutputBuffer(((iLimit - iPosition) / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                int byteDepth = (Util.getByteDepth(this.inputAudioFormat.encoding) * i) + iPosition;
                int i2 = this.inputAudioFormat.encoding;
                if (i2 == 2) {
                    byteBufferReplaceOutputBuffer.putShort(byteBuffer.getShort(byteDepth));
                } else if (i2 == 3) {
                    byteBufferReplaceOutputBuffer.put(byteBuffer.get(byteDepth));
                } else if (i2 == 4) {
                    byteBufferReplaceOutputBuffer.putFloat(byteBuffer.getFloat(byteDepth));
                } else if (i2 == 21) {
                    Util.putInt24(byteBufferReplaceOutputBuffer, Util.getInt24(byteBuffer, byteDepth));
                } else {
                    if (i2 != 22) {
                        if (i2 != 268435456) {
                            if (i2 != 1342177280) {
                                if (i2 != 1610612736) {
                                    WearAuthSheet$$ExternalSyntheticBUOutline0.m1051m("Unexpected encoding: ", this.inputAudioFormat.encoding);
                                    return;
                                }
                            }
                            Util.putInt24(byteBufferReplaceOutputBuffer, Util.getInt24(byteBuffer, byteDepth));
                        }
                        byteBufferReplaceOutputBuffer.putShort(byteBuffer.getShort(byteDepth));
                    }
                    byteBufferReplaceOutputBuffer.putInt(byteBuffer.getInt(byteDepth));
                }
            }
            iPosition += this.inputAudioFormat.bytesPerFrame;
        }
        byteBuffer.position(iLimit);
        byteBufferReplaceOutputBuffer.flip();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onFlush() {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }
}
