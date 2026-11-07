package retrofit2;

import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.io.EOFException;
import java.util.regex.Pattern;
import kotlin.UByte;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.AsyncTimeout$$ExternalSyntheticBUOutline0;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes3.dex */
final class RequestBuilder {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final Pattern PATH_TRAVERSAL = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");
    private final HttpUrl baseUrl;
    private RequestBody body;
    private MediaType contentType;
    private FormBody.Builder formBuilder;
    private final boolean hasBody;
    private final Headers.Builder headersBuilder;
    private final String method;
    private MultipartBody.Builder multipartBuilder;
    private String relativeUrl;
    private final Request.Builder requestBuilder = new Request.Builder();
    private HttpUrl.Builder urlBuilder;

    public RequestBuilder(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.method = str;
        this.baseUrl = httpUrl;
        this.relativeUrl = str2;
        this.contentType = mediaType;
        this.hasBody = z;
        if (headers != null) {
            this.headersBuilder = headers.newBuilder();
        } else {
            this.headersBuilder = new Headers.Builder();
        }
        if (z2) {
            this.formBuilder = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.multipartBuilder = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    public void setRelativeUrl(Object obj) {
        this.relativeUrl = obj.toString();
    }

    public void addHeader(String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.contentType = MediaType.get(str2);
                return;
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Malformed content type: " + str2, e);
            }
        }
        Headers.Builder builder = this.headersBuilder;
        if (z) {
            builder.addUnsafeNonAscii(str, str2);
        } else {
            builder.add(str, str2);
        }
    }

    public void addHeaders(Headers headers) {
        this.headersBuilder.addAll(headers);
    }

    public void addPathParam(String str, String str2, boolean z) {
        if (this.relativeUrl == null) {
            AsyncTimeout$$ExternalSyntheticBUOutline0.m914m();
            return;
        }
        String strCanonicalizeForPath = canonicalizeForPath(str2, z);
        String strReplace = this.relativeUrl.replace("{" + str + "}", strCanonicalizeForPath);
        if (PATH_TRAVERSAL.matcher(strReplace).matches()) {
            Native$$ExternalSyntheticBUOutline5.m493m("@Path parameters shouldn't perform path traversal ('.' or '..'): ", str2);
        } else {
            this.relativeUrl = strReplace;
        }
    }

    private static String canonicalizeForPath(String str, boolean z) throws EOFException {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt < 127 && " \"<>^`{}|\\?#".indexOf(iCodePointAt) == -1 && (z || (iCodePointAt != 47 && iCodePointAt != 37))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, iCharCount);
                canonicalizeForPath(buffer, str, iCharCount, length, z);
                return buffer.readUtf8();
            }
        }
        return str;
    }

    private static void canonicalizeForPath(Buffer buffer, String str, int i, int i2, boolean z) throws EOFException {
        Buffer buffer2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    long size = buffer2.getSize();
                    for (long j = 0; j < size; j++) {
                        byte b2 = buffer2.getByte(j);
                        int i3 = b2 & UByte.MAX_VALUE;
                        buffer.writeByte(37);
                        char[] cArr = HEX_DIGITS;
                        buffer.writeByte((int) cArr[(i3 >> 4) & 15]);
                        buffer.writeByte((int) cArr[b2 & 15]);
                    }
                    buffer2.clear();
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public void addQueryParam(String str, String str2, boolean z) {
        String str3 = this.relativeUrl;
        if (str3 != null) {
            HttpUrl.Builder builderNewBuilder = this.baseUrl.newBuilder(str3);
            this.urlBuilder = builderNewBuilder;
            if (builderNewBuilder == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(this.baseUrl);
                Utils$$ExternalSyntheticBUOutline1.m1069m(sb, ", Relative: ", this.relativeUrl);
                return;
            }
            this.relativeUrl = null;
        }
        HttpUrl.Builder builder = this.urlBuilder;
        if (z) {
            builder.addEncodedQueryParameter(str, str2);
        } else {
            builder.addQueryParameter(str, str2);
        }
    }

    public void addFormField(String str, String str2, boolean z) {
        FormBody.Builder builder = this.formBuilder;
        if (z) {
            builder.addEncoded(str, str2);
        } else {
            builder.add(str, str2);
        }
    }

    public void addPart(Headers headers, RequestBody requestBody) {
        this.multipartBuilder.addPart(headers, requestBody);
    }

    public void addPart(MultipartBody.Part part) {
        this.multipartBuilder.addPart(part);
    }

    public void setBody(RequestBody requestBody) {
        this.body = requestBody;
    }

    public <T> void addTag(Class<T> cls, T t) {
        this.requestBuilder.tag(cls, t);
    }

    public Request.Builder get() {
        HttpUrl httpUrlResolve;
        HttpUrl.Builder builder = this.urlBuilder;
        if (builder != null) {
            httpUrlResolve = builder.build();
        } else {
            httpUrlResolve = this.baseUrl.resolve(this.relativeUrl);
            if (httpUrlResolve == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(this.baseUrl);
                Utils$$ExternalSyntheticBUOutline1.m1069m(sb, ", Relative: ", this.relativeUrl);
                return null;
            }
        }
        RequestBody contentTypeOverridingRequestBody = this.body;
        if (contentTypeOverridingRequestBody == null) {
            FormBody.Builder builder2 = this.formBuilder;
            if (builder2 != null) {
                contentTypeOverridingRequestBody = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.multipartBuilder;
                if (builder3 != null) {
                    contentTypeOverridingRequestBody = builder3.build();
                } else if (this.hasBody) {
                    contentTypeOverridingRequestBody = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.contentType;
        if (mediaType != null) {
            if (contentTypeOverridingRequestBody != null) {
                contentTypeOverridingRequestBody = new ContentTypeOverridingRequestBody(contentTypeOverridingRequestBody, mediaType);
            } else {
                this.headersBuilder.add("Content-Type", mediaType.toString());
            }
        }
        return this.requestBuilder.url(httpUrlResolve).headers(this.headersBuilder.build()).method(this.method, contentTypeOverridingRequestBody);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class ContentTypeOverridingRequestBody extends RequestBody {
        private final MediaType contentType;
        private final RequestBody delegate;

        public ContentTypeOverridingRequestBody(RequestBody requestBody, MediaType mediaType) {
            this.delegate = requestBody;
            this.contentType = mediaType;
        }

        @Override // okhttp3.RequestBody
        /* JADX INFO: renamed from: contentType */
        public MediaType get$contentType() {
            return this.contentType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) {
            this.delegate.writeTo(bufferedSink);
        }
    }
}
