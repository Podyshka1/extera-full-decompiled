package androidx.media3.exoplayer.image;

import android.content.Context;
import android.graphics.Point;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BitmapUtil;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.image.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class BitmapFactoryImageDecoder extends SimpleDecoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> implements ImageDecoder {
    private final Context context;
    private final int maxOutputSize;

    @Deprecated
    public interface BitmapDecoder {
    }

    @Override // androidx.media3.decoder.SimpleDecoder, androidx.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ ImageOutputBuffer dequeueOutputBuffer() {
        return (ImageOutputBuffer) super.dequeueOutputBuffer();
    }

    public static final class Factory implements ImageDecoder.Factory {
        private final Context context;
        private int maxOutputSize;

        public Factory(Context context) {
            this(context, null);
        }

        private Factory(Context context, BitmapDecoder bitmapDecoder) {
            this.context = context;
            this.maxOutputSize = -1;
        }

        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public int supportsFormat(Format format) {
            String str = format.sampleMimeType;
            if (str == null || !MimeTypes.isImage(str)) {
                return RendererCapabilities.create(0);
            }
            if (Util.isBitmapFactorySupportedMimeType(format.sampleMimeType)) {
                return RendererCapabilities.create(4);
            }
            return RendererCapabilities.create(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.image.ImageDecoder.Factory
        public BitmapFactoryImageDecoder createImageDecoder() {
            return new BitmapFactoryImageDecoder(this.context, null, this.maxOutputSize);
        }
    }

    private BitmapFactoryImageDecoder(Context context, BitmapDecoder bitmapDecoder, int i) {
        super(new DecoderInputBuffer[1], new ImageOutputBuffer[1]);
        this.context = context;
        this.maxOutputSize = i;
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return "BitmapFactoryImageDecoder";
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public DecoderInputBuffer createInputBuffer() {
        return new DecoderInputBuffer(1);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public ImageOutputBuffer createOutputBuffer() {
        return new ImageOutputBuffer() { // from class: androidx.media3.exoplayer.image.BitmapFactoryImageDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public void release() {
                BitmapFactoryImageDecoder.this.releaseOutputBuffer(this);
            }
        };
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public ImageDecoderException createUnexpectedDecodeException(Throwable th) {
        return new ImageDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    public ImageDecoderException decode(DecoderInputBuffer decoderInputBuffer, ImageOutputBuffer imageOutputBuffer, boolean z) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.data);
        Assertions.checkState(byteBuffer.hasArray());
        Assertions.checkArgument(byteBuffer.arrayOffset() == 0);
        try {
            int iMax = this.maxOutputSize;
            if (iMax == -1) {
                Context context = this.context;
                if (context != null) {
                    Point currentDisplayModeSize = Util.getCurrentDisplayModeSize(context);
                    int i = currentDisplayModeSize.x;
                    int i2 = currentDisplayModeSize.y;
                    Format format = decoderInputBuffer.format;
                    if (format != null) {
                        int i3 = format.tileCountHorizontal;
                        if (i3 != -1) {
                            i *= i3;
                        }
                        int i4 = format.tileCountVertical;
                        if (i4 != -1) {
                            i2 *= i4;
                        }
                    }
                    iMax = (Math.max(i, i2) * 2) - 1;
                } else {
                    iMax = 4096;
                }
            }
            imageOutputBuffer.bitmap = BitmapUtil.decode(byteBuffer.array(), byteBuffer.remaining(), null, iMax);
            imageOutputBuffer.timeUs = decoderInputBuffer.timeUs;
            return null;
        } catch (ParserException e) {
            return new ImageDecoderException("Could not decode image data with BitmapFactory.", e);
        } catch (IOException e2) {
            return new ImageDecoderException(e2);
        }
    }
}
