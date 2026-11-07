package androidx.media3.decoder.ffmpeg;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DecoderAudioRenderer;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class FfmpegAudioRenderer extends DecoderAudioRenderer<FfmpegAudioDecoder> {
    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    public FfmpegAudioRenderer(Handler handler, AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        super(handler, audioRendererEventListener, audioSink);
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return "FfmpegAudioRenderer";
    }

    @Override // androidx.media3.exoplayer.audio.DecoderAudioRenderer
    public int supportsFormatInternal(Format format) {
        String str = (String) Preconditions.checkNotNull(format.sampleMimeType);
        if (!FfmpegLibrary.isAvailable() || !MimeTypes.isAudio(str)) {
            return 0;
        }
        if (!FfmpegLibrary.supportsFormat(str)) {
            return 1;
        }
        if (sinkSupportsFormat(format, 2) || sinkSupportsFormat(format, 4)) {
            return format.cryptoType != 0 ? 2 : 4;
        }
        return 1;
    }

    @Override // androidx.media3.exoplayer.audio.DecoderAudioRenderer
    public FfmpegAudioDecoder createDecoder(Format format, CryptoConfig cryptoConfig) {
        TraceUtil.beginSection("createFfmpegAudioDecoder");
        int i = format.maxInputSize;
        if (i == -1) {
            i = 5760;
        }
        FfmpegAudioDecoder ffmpegAudioDecoder = new FfmpegAudioDecoder(format, 16, 16, i, shouldOutputFloat(format));
        TraceUtil.endSection();
        return ffmpegAudioDecoder;
    }

    @Override // androidx.media3.exoplayer.audio.DecoderAudioRenderer
    public Format getOutputFormat(FfmpegAudioDecoder ffmpegAudioDecoder) {
        Preconditions.checkNotNull(ffmpegAudioDecoder);
        return new Format.Builder().setSampleMimeType("audio/raw").setChannelCount(ffmpegAudioDecoder.getChannelCount()).setSampleRate(ffmpegAudioDecoder.getSampleRate()).setPcmEncoding(ffmpegAudioDecoder.getEncoding()).build();
    }

    private boolean sinkSupportsFormat(Format format, int i) {
        return sinkSupportsFormat(Util.getPcmFormat(i, format.channelCount, format.sampleRate));
    }

    private boolean shouldOutputFloat(Format format) {
        if (!sinkSupportsFormat(format, 2)) {
            return true;
        }
        if (getSinkFormatSupport(Util.getPcmFormat(4, format.channelCount, format.sampleRate)) != 2) {
            return false;
        }
        return !"audio/ac3".equals(format.sampleMimeType);
    }
}
