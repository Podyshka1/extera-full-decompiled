package okhttp3;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.CompressionInterceptor;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public final class Gzip implements CompressionInterceptor.DecompressionAlgorithm {
    public static final Gzip INSTANCE = new Gzip();

    private Gzip() {
    }

    @Override // okhttp3.CompressionInterceptor.DecompressionAlgorithm
    public String getEncoding() {
        return "gzip";
    }

    @Override // okhttp3.CompressionInterceptor.DecompressionAlgorithm
    public Source decompress(BufferedSource compressedSource) {
        Intrinsics.checkNotNullParameter(compressedSource, "compressedSource");
        return new GzipSource(compressedSource);
    }
}
