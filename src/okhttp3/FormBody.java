package okhttp3;

import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB%\b\u0000\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\tJ\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\b\u0010\n¨\u0006\u001e"}, d2 = {"Lokhttp3/FormBody;", "Lokhttp3/RequestBody;", "encodedNames", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "encodedValues", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "size", _UrlKt.FRAGMENT_ENCODE_SET, "()I", "-deprecated_size", "encodedName", "index", "name", "encodedValue", "value", "contentType", "Lokhttp3/MediaType;", "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "writeTo", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/BufferedSink;", "writeOrCountBytes", "countBytes", _UrlKt.FRAGMENT_ENCODE_SET, "Builder", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
public final class FormBody extends RequestBody {
    private final List<String> encodedNames;
    private final List<String> encodedValues;
    private static final MediaType CONTENT_TYPE = MediaType.INSTANCE.get("application/x-www-form-urlencoded");

    public FormBody(List<String> list, List<String> list2) {
        this.encodedNames = _UtilJvmKt.toImmutableList(list);
        this.encodedValues = _UtilJvmKt.toImmutableList(list2);
    }

    @JvmName(name = "size")
    public final int size() {
        return this.encodedNames.size();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m4711deprecated_size() {
        return size();
    }

    public final String encodedName(int index) {
        return this.encodedNames.get(index);
    }

    public final String name(int index) {
        return _UrlKt.percentDecode$default(encodedName(index), 0, 0, true, 3, null);
    }

    public final String encodedValue(int index) {
        return this.encodedValues.get(index);
    }

    public final String value(int index) {
        return _UrlKt.percentDecode$default(encodedValue(index), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: contentType */
    public MediaType getContentType() {
        return CONTENT_TYPE;
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink sink) throws EOFException {
        writeOrCountBytes(sink, false);
    }

    private final long writeOrCountBytes(BufferedSink sink, boolean countBytes) throws EOFException {
        Buffer buffer = countBytes ? new Buffer() : sink.getBufferField();
        int size = this.encodedNames.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                buffer.writeByte(38);
            }
            buffer.writeUtf8(this.encodedNames.get(i));
            buffer.writeByte(61);
            buffer.writeUtf8(this.encodedValues.get(i));
        }
        if (!countBytes) {
            return 0L;
        }
        long size2 = buffer.getSize();
        buffer.clear();
        return size2;
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bJ\u0016\u0010\r\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bJ\u0006\u0010\u000e\u001a\u00020\u000fR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/FormBody$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "charset", "Ljava/nio/charset/Charset;", "<init>", "(Ljava/nio/charset/Charset;)V", "names", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "values", "add", "name", "value", "addEncoded", "build", "Lokhttp3/FormBody;", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        /* JADX WARN: Multi-variable type inference failed */
        @JvmOverloads
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @JvmOverloads
        public Builder(Charset charset) {
            this.charset = charset;
            this.names = new ArrayList();
            this.values = new ArrayList();
        }

        public /* synthetic */ Builder(Charset charset, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : charset);
        }

        public final Builder add(String name, String value) {
            this.names.add(_UrlKt.canonicalizeWithCharset$default(name, 0, 0, _UrlKt.FORM_ENCODE_SET, false, false, false, false, this.charset, 91, null));
            this.values.add(_UrlKt.canonicalizeWithCharset$default(value, 0, 0, _UrlKt.FORM_ENCODE_SET, false, false, false, false, this.charset, 91, null));
            return this;
        }

        public final Builder addEncoded(String name, String value) {
            this.names.add(_UrlKt.canonicalizeWithCharset$default(name, 0, 0, _UrlKt.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            this.values.add(_UrlKt.canonicalizeWithCharset$default(value, 0, 0, _UrlKt.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            return this;
        }

        public final FormBody build() {
            return new FormBody(this.names, this.values);
        }
    }
}
