package androidx.media3.decoder.ffmpeg;

import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.video.DecoderVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* JADX INFO: loaded from: classes3.dex */
public final class ExperimentalFfmpegVideoRenderer extends DecoderVideoRenderer {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final int DEFAULT_INPUT_BUFFER_SIZE = ((Util.ceilDivide(1280, 64) * Util.ceilDivide(720, 64)) * 6144) / 2;
    private ExperimentalFfmpegVideoDecoder decoder;
    private final int numInputBuffers;
    private final int numOutputBuffers;
    private final int threads;

    public ExperimentalFfmpegVideoRenderer(long j, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(j, handler, videoRendererEventListener, i, Runtime.getRuntime().availableProcessors(), 4, 4);
    }

    public ExperimentalFfmpegVideoRenderer(long j, Handler handler, VideoRendererEventListener videoRendererEventListener, int i, int i2, int i3, int i4) {
        super(j, handler, videoRendererEventListener, i);
        this.threads = i2;
        this.numInputBuffers = i3;
        this.numOutputBuffers = i4;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return "ExperimentalFfmpegVideoRenderer";
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int supportsFormat(Format format) {
        String str = format.sampleMimeType;
        if (!FfmpegLibrary.isAvailable() || !MimeTypes.isVideo(str)) {
            return RendererCapabilities.create(0);
        }
        if (!FfmpegLibrary.supportsFormat(str)) {
            return RendererCapabilities.create(1);
        }
        if (format.cryptoType != 0) {
            return RendererCapabilities.create(2);
        }
        return RendererCapabilities.create(4, 8, 0);
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public Decoder<DecoderInputBuffer, VideoDecoderOutputBuffer, FfmpegDecoderException> createDecoder(Format format, CryptoConfig cryptoConfig) {
        TraceUtil.beginSection("createFfmpegVideoDecoder");
        int i = format.maxInputSize;
        if (i == -1) {
            i = DEFAULT_INPUT_BUFFER_SIZE;
        }
        int i2 = i;
        ExperimentalFfmpegVideoDecoder experimentalFfmpegVideoDecoder = new ExperimentalFfmpegVideoDecoder(this.numInputBuffers, this.numOutputBuffers, i2, Math.max(this.threads, 1), format);
        this.decoder = experimentalFfmpegVideoDecoder;
        TraceUtil.endSection();
        return experimentalFfmpegVideoDecoder;
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public void renderOutputBufferToSurface(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) {
        try {
            ExperimentalFfmpegVideoDecoder experimentalFfmpegVideoDecoder = this.decoder;
            if (experimentalFfmpegVideoDecoder == null) {
                throw new FfmpegDecoderException("Failed to render output buffer to surface: decoder is not initialized.");
            }
            experimentalFfmpegVideoDecoder.renderToSurface(videoDecoderOutputBuffer, surface);
        } finally {
            videoDecoderOutputBuffer.release();
        }
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public void setDecoderOutputMode(int i) {
        ExperimentalFfmpegVideoDecoder experimentalFfmpegVideoDecoder = this.decoder;
        if (experimentalFfmpegVideoDecoder != null) {
            experimentalFfmpegVideoDecoder.setOutputMode(i);
        }
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public DecoderReuseEvaluation canReuseDecoder(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 8);
    }
}
