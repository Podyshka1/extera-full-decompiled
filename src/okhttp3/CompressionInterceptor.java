package okhttp3;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.internal.http.HttpHeaders;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public class CompressionInterceptor implements Interceptor {
    private final String acceptEncoding;
    private final DecompressionAlgorithm[] algorithms;

    public interface DecompressionAlgorithm {
        Source decompress(BufferedSource bufferedSource);

        String getEncoding();
    }

    public CompressionInterceptor(DecompressionAlgorithm... algorithms) {
        Intrinsics.checkNotNullParameter(algorithms, "algorithms");
        this.algorithms = algorithms;
        ArrayList arrayList = new ArrayList(algorithms.length);
        for (DecompressionAlgorithm decompressionAlgorithm : algorithms) {
            arrayList.add(decompressionAlgorithm.getEncoding());
        }
        this.acceptEncoding = CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null);
    }

    public final DecompressionAlgorithm[] getAlgorithms() {
        return this.algorithms;
    }

    public final String getAcceptEncoding$okhttp() {
        return this.acceptEncoding;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        if (!(this.algorithms.length == 0) && chain.request().header("Accept-Encoding") == null) {
            return decompress$okhttp(chain.proceed(chain.request().newBuilder().header("Accept-Encoding", this.acceptEncoding).build()));
        }
        return chain.proceed(chain.request());
    }

    public final Response decompress$okhttp(Response response) {
        DecompressionAlgorithm decompressionAlgorithmLookupDecompressor$okhttp;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.promisesBody(response)) {
            return response;
        }
        ResponseBody responseBodyBody = response.body();
        String strHeader$default = Response.header$default(response, "Content-Encoding", null, 2, null);
        return (strHeader$default == null || (decompressionAlgorithmLookupDecompressor$okhttp = lookupDecompressor$okhttp(strHeader$default)) == null) ? response : response.newBuilder().removeHeader("Content-Encoding").removeHeader("Content-Length").body(ResponseBody.Companion.create(Okio.buffer(decompressionAlgorithmLookupDecompressor$okhttp.decompress(responseBodyBody.source())), responseBodyBody.contentType(), -1L)).build();
    }

    public final DecompressionAlgorithm lookupDecompressor$okhttp(String encoding) {
        Intrinsics.checkNotNullParameter(encoding, "encoding");
        for (DecompressionAlgorithm decompressionAlgorithm : this.algorithms) {
            if (StringsKt.equals(decompressionAlgorithm.getEncoding(), encoding, true)) {
                return decompressionAlgorithm;
            }
        }
        return null;
    }
}
