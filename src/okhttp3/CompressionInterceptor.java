package okhttp3;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0018B\u001b\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0015\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0014J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u0017R\u001b\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lokhttp3/CompressionInterceptor;", "Lokhttp3/Interceptor;", "algorithms", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;", "<init>", "([Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;)V", "getAlgorithms", "()[Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;", "[Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;", "acceptEncoding", _UrlKt.FRAGMENT_ENCODE_SET, "getAcceptEncoding$okhttp", "()Ljava/lang/String;", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "decompress", "response", "decompress$okhttp", "lookupDecompressor", "encoding", "lookupDecompressor$okhttp", "DecompressionAlgorithm", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCompressionInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompressionInterceptor.kt\nokhttp3/CompressionInterceptor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,96:1\n11561#2:97\n11896#2,3:98\n*S KotlinDebug\n*F\n+ 1 CompressionInterceptor.kt\nokhttp3/CompressionInterceptor\n*L\n39#1:97\n39#1:98,3\n*E\n"})
public class CompressionInterceptor implements Interceptor {
    private final String acceptEncoding;
    private final DecompressionAlgorithm[] algorithms;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;", _UrlKt.FRAGMENT_ENCODE_SET, "encoding", _UrlKt.FRAGMENT_ENCODE_SET, "getEncoding", "()Ljava/lang/String;", "decompress", "Lokio/Source;", "compressedSource", "Lokio/BufferedSource;", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public interface DecompressionAlgorithm {
        Source decompress(BufferedSource compressedSource);

        String getEncoding();
    }

    public CompressionInterceptor(DecompressionAlgorithm... decompressionAlgorithmArr) {
        this.algorithms = decompressionAlgorithmArr;
        ArrayList arrayList = new ArrayList(decompressionAlgorithmArr.length);
        for (DecompressionAlgorithm decompressionAlgorithm : decompressionAlgorithmArr) {
            arrayList.add(decompressionAlgorithm.getEncoding());
        }
        this.acceptEncoding = CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null);
    }

    public final DecompressionAlgorithm[] getAlgorithms() {
        return this.algorithms;
    }

    /* JADX INFO: renamed from: getAcceptEncoding$okhttp, reason: from getter */
    public final String getAcceptEncoding() {
        return this.acceptEncoding;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        if (!(this.algorithms.length == 0) && chain.request().header("Accept-Encoding") == null) {
            return decompress$okhttp(chain.proceed(chain.request().newBuilder().header("Accept-Encoding", this.acceptEncoding).build()));
        }
        return chain.proceed(chain.request());
    }

    public final Response decompress$okhttp(Response response) {
        DecompressionAlgorithm decompressionAlgorithmLookupDecompressor$okhttp;
        if (!HttpHeaders.promisesBody(response)) {
            return response;
        }
        ResponseBody responseBodyBody = response.body();
        String strHeader$default = Response.header$default(response, "Content-Encoding", null, 2, null);
        return (strHeader$default == null || (decompressionAlgorithmLookupDecompressor$okhttp = lookupDecompressor$okhttp(strHeader$default)) == null) ? response : response.newBuilder().removeHeader("Content-Encoding").removeHeader("Content-Length").body(ResponseBody.INSTANCE.create(Okio.buffer(decompressionAlgorithmLookupDecompressor$okhttp.decompress(responseBodyBody.get$this_asResponseBody())), responseBodyBody.get$contentType(), -1L)).build();
    }

    public final DecompressionAlgorithm lookupDecompressor$okhttp(String encoding) {
        for (DecompressionAlgorithm decompressionAlgorithm : this.algorithms) {
            if (StringsKt.equals(decompressionAlgorithm.getEncoding(), encoding, true)) {
                return decompressionAlgorithm;
            }
        }
        return null;
    }
}
