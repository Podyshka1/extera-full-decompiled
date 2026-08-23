package com.google.android.exoplayer2.ext.flac;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DecoderAudioRenderer;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.extractor.FlacStreamMetadata;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public final class LibflacAudioRenderer extends DecoderAudioRenderer<FlacDecoder> {
    private static final int METADATA_BLOCK_HEADER_SIZE = 4;
    private static final int NUM_BUFFERS = 16;
    private static final int STREAM_MARKER_SIZE = 4;
    private static final String TAG = "LibflacAudioRenderer";

    @Override // com.google.android.exoplayer2.Renderer
    public /* bridge */ /* synthetic */ void setPlaybackSpeed(float f, float f2) {
        super.setPlaybackSpeed(f, f2);
    }

    public LibflacAudioRenderer() {
        this((Handler) null, (AudioRendererEventListener) null, new AudioProcessor[0]);
    }

    public LibflacAudioRenderer(Handler handler, AudioRendererEventListener audioRendererEventListener, AudioProcessor... audioProcessorArr) {
        super(handler, audioRendererEventListener, audioProcessorArr);
    }

    public LibflacAudioRenderer(Handler handler, AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        super(handler, audioRendererEventListener, audioSink);
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.audio.DecoderAudioRenderer
    public int supportsFormatInternal(Format format) {
        Format outputFormat;
        if (!FlacLibrary.isAvailable() || !"audio/flac".equalsIgnoreCase(format.sampleMimeType)) {
            return 0;
        }
        if (format.initializationData.isEmpty()) {
            outputFormat = Util.getPcmFormat(2, format.channelCount, format.sampleRate);
        } else {
            outputFormat = getOutputFormat(new FlacStreamMetadata(format.initializationData.get(0), 8));
        }
        if (sinkSupportsFormat(outputFormat)) {
            return format.cryptoType != 0 ? 2 : 4;
        }
        return 1;
    }

    @Override // com.google.android.exoplayer2.audio.DecoderAudioRenderer
    public FlacDecoder createDecoder(Format format, CryptoConfig cryptoConfig) {
        TraceUtil.beginSection("createFlacDecoder");
        FlacDecoder flacDecoder = new FlacDecoder(16, 16, format.maxInputSize, format.initializationData);
        TraceUtil.endSection();
        return flacDecoder;
    }

    @Override // com.google.android.exoplayer2.audio.DecoderAudioRenderer
    public Format getOutputFormat(FlacDecoder flacDecoder) {
        return getOutputFormat(flacDecoder.getStreamMetadata());
    }

    private static Format getOutputFormat(FlacStreamMetadata flacStreamMetadata) {
        return Util.getPcmFormat(Util.getPcmEncoding(flacStreamMetadata.bitsPerSample), flacStreamMetadata.channels, flacStreamMetadata.sampleRate);
    }
}
