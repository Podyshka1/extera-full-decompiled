package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Assertions;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class TeeAudioProcessor extends BaseAudioProcessor {
    private final AudioBufferSink audioBufferSink;

    public interface AudioBufferSink {
        void flush(int i, int i2, int i3);

        void handleBuffer(ByteBuffer byteBuffer);
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) {
        return audioFormat;
    }

    public TeeAudioProcessor(AudioBufferSink audioBufferSink) {
        this.audioBufferSink = (AudioBufferSink) Assertions.checkNotNull(audioBufferSink);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining == 0) {
            return;
        }
        this.audioBufferSink.handleBuffer(byteBuffer.asReadOnlyBuffer());
        replaceOutputBuffer(iRemaining).put(byteBuffer).flip();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    protected void onFlush() {
        flushSinkIfActive();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    protected void onQueueEndOfStream() {
        flushSinkIfActive();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    protected void onReset() {
        flushSinkIfActive();
    }

    private void flushSinkIfActive() {
        if (isActive()) {
            AudioBufferSink audioBufferSink = this.audioBufferSink;
            AudioProcessor.AudioFormat audioFormat = this.inputAudioFormat;
            audioBufferSink.flush(audioFormat.sampleRate, audioFormat.channelCount, audioFormat.encoding);
        }
    }
}
