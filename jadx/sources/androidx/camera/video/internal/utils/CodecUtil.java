package androidx.camera.video.internal.utils;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.util.LruCache;
import androidx.camera.video.internal.encoder.EncoderConfig;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CodecUtil {
    public static final CodecUtil INSTANCE = new CodecUtil();
    private static final LruCache codecInfoCache = new LruCache(10);

    private CodecUtil() {
    }

    public static final MediaCodec createCodec(EncoderConfig encoderConfig) {
        Intrinsics.checkNotNullParameter(encoderConfig, "encoderConfig");
        CodecUtil codecUtil = INSTANCE;
        String mimeType = encoderConfig.getMimeType();
        Intrinsics.checkNotNullExpressionValue(mimeType, "getMimeType(...)");
        return codecUtil.createCodec(mimeType);
    }

    public static final MediaCodecInfo findCodecAndGetCodecInfo(String mimeType) {
        Object obj;
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        LruCache lruCache = codecInfoCache;
        synchronized (lruCache) {
            obj = lruCache.get(mimeType);
            Unit unit = Unit.INSTANCE;
        }
        if (obj != null) {
            return (MediaCodecInfo) obj;
        }
        MediaCodec mediaCodecCreateCodec = null;
        try {
            mediaCodecCreateCodec = INSTANCE.createCodec(mimeType);
            MediaCodecInfo codecInfo = mediaCodecCreateCodec.getCodecInfo();
            synchronized (lruCache) {
            }
            mediaCodecCreateCodec.release();
            return codecInfo;
        } catch (Throwable th) {
            if (mediaCodecCreateCodec != null) {
                mediaCodecCreateCodec.release();
            }
            throw th;
        }
    }

    private final MediaCodec createCodec(String str) throws InvalidConfigException {
        try {
            MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(str);
            Intrinsics.checkNotNull(mediaCodecCreateEncoderByType);
            return mediaCodecCreateEncoderByType;
        } catch (IOException e) {
            throw new InvalidConfigException(e);
        } catch (IllegalArgumentException e2) {
            throw new InvalidConfigException(e2);
        }
    }
}
