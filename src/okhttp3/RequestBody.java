package okhttp3;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;
import okio.BufferedSink;
import okio.ByteString;
import okio.FileSystem;
import okio.HashingSink;
import okio.Okio;
import okio.Path;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0012"}, d2 = {"Lokhttp3/RequestBody;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "contentType", "Lokhttp3/MediaType;", "contentLength", _UrlKt.FRAGMENT_ENCODE_SET, "writeTo", _UrlKt.FRAGMENT_ENCODE_SET, "sink", "Lokio/BufferedSink;", "isDuplex", _UrlKt.FRAGMENT_ENCODE_SET, "isOneShot", "sha256", "Lokio/ByteString;", "Companion", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class RequestBody {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @JvmField
    public static final RequestBody EMPTY;

    @JvmStatic
    @JvmName(name = "create")
    public static final RequestBody create(File file, MediaType mediaType) {
        return INSTANCE.create(file, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final RequestBody create(FileDescriptor fileDescriptor, MediaType mediaType) {
        return INSTANCE.create(fileDescriptor, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final RequestBody create(String str, MediaType mediaType) {
        return INSTANCE.create(str, mediaType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @ReplaceWith(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
    @JvmStatic
    public static final RequestBody create(MediaType mediaType, File file) {
        return INSTANCE.create(mediaType, file);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    public static final RequestBody create(MediaType mediaType, String str) {
        return INSTANCE.create(mediaType, str);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    public static final RequestBody create(MediaType mediaType, ByteString byteString) {
        return INSTANCE.create(mediaType, byteString);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @JvmOverloads
    public static final RequestBody create(MediaType mediaType, byte[] bArr) {
        return INSTANCE.create(mediaType, bArr);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @JvmOverloads
    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i) {
        return INSTANCE.create(mediaType, bArr, i);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @JvmOverloads
    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i, int i2) {
        return INSTANCE.create(mediaType, bArr, i, i2);
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final RequestBody create(ByteString byteString, MediaType mediaType) {
        return INSTANCE.create(byteString, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    public static final RequestBody create(Path path, FileSystem fileSystem, MediaType mediaType) {
        return INSTANCE.create(path, fileSystem, mediaType);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public static final RequestBody create(byte[] bArr) {
        return INSTANCE.create(bArr);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public static final RequestBody create(byte[] bArr, MediaType mediaType) {
        return INSTANCE.create(bArr, mediaType);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i) {
        return INSTANCE.create(bArr, mediaType, i);
    }

    @JvmStatic
    @JvmOverloads
    @JvmName(name = "create")
    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i, int i2) {
        return INSTANCE.create(bArr, mediaType, i, i2);
    }

    public long contentLength() {
        return -1L;
    }

    /* JADX INFO: renamed from: contentType */
    public abstract MediaType get$contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(BufferedSink sink);

    public final ByteString sha256() {
        HashingSink hashingSinkSha256 = HashingSink.INSTANCE.sha256(Okio.blackhole());
        BufferedSink bufferedSinkBuffer = Okio.buffer(hashingSinkSha256);
        try {
            writeTo(bufferedSinkBuffer);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedSinkBuffer, null);
            return hashingSinkSha256.hash();
        } finally {
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0006\u001a\u00020\u0005*\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0002\b\nJ\u001d\u0010\u0006\u001a\u00020\u0005*\u00020\u000b2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0002\b\nJ\u001d\u0010\u0006\u001a\u00020\u0005*\u00020\f2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0002\b\nJ1\u0010\u0006\u001a\u00020\u0005*\u00020\r2\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\nJ\u001d\u0010\u0011\u001a\u00020\u0005*\u00020\u00122\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0002\b\nJ%\u0010\u0011\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0002\b\nJ\u001a\u0010\n\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0016\u001a\u00020\u0007H\u0007J\u001a\u0010\n\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0016\u001a\u00020\u000bH\u0007J.\u0010\n\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0016\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0007J\u001a\u0010\n\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0017\u001a\u00020\u0012H\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lokhttp3/RequestBody$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "EMPTY", "Lokhttp3/RequestBody;", "toRequestBody", _UrlKt.FRAGMENT_ENCODE_SET, "contentType", "Lokhttp3/MediaType;", "create", "Lokio/ByteString;", "Ljava/io/FileDescriptor;", _UrlKt.FRAGMENT_ENCODE_SET, "offset", _UrlKt.FRAGMENT_ENCODE_SET, "byteCount", "asRequestBody", "Ljava/io/File;", "Lokio/Path;", "fileSystem", "Lokio/FileSystem;", "content", "file", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        @JvmOverloads
        public final RequestBody create(MediaType mediaType, byte[] bArr) {
            return create$default(this, mediaType, bArr, 0, 0, 12, (Object) null);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        @JvmOverloads
        public final RequestBody create(MediaType mediaType, byte[] bArr, int i) {
            return create$default(this, mediaType, bArr, i, 0, 8, (Object) null);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName(name = "create")
        public final RequestBody create(byte[] bArr) {
            return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName(name = "create")
        public final RequestBody create(byte[] bArr, MediaType mediaType) {
            return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName(name = "create")
        public final RequestBody create(byte[] bArr, MediaType mediaType, int i) {
            return create$default(this, bArr, mediaType, i, 0, 4, (Object) null);
        }

        private Companion() {
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        public final RequestBody create(String str, MediaType mediaType) {
            Pair<Charset, MediaType> pairChooseCharset = Internal.chooseCharset(mediaType);
            Charset charsetComponent1 = pairChooseCharset.component1();
            MediaType mediaTypeComponent2 = pairChooseCharset.component2();
            byte[] bytes = str.getBytes(charsetComponent1);
            return create(bytes, mediaTypeComponent2, 0, bytes.length);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        public final RequestBody create(final ByteString byteString, final MediaType mediaType) {
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                /* JADX INFO: renamed from: contentType, reason: from getter */
                public MediaType get$contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return byteString.size();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    sink.write(byteString);
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, FileDescriptor fileDescriptor, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(fileDescriptor, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        public final RequestBody create(final FileDescriptor fileDescriptor, final MediaType mediaType) {
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public boolean isOneShot() {
                    return true;
                }

                @Override // okhttp3.RequestBody
                /* JADX INFO: renamed from: contentType, reason: from getter */
                public MediaType get$contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    FileInputStream fileInputStream = new FileInputStream(fileDescriptor);
                    try {
                        sink.getBufferField().writeAll(Okio.source(fileInputStream));
                        CloseableKt.closeFinally(fileInputStream, null);
                    } finally {
                    }
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                mediaType = null;
            }
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return companion.create(bArr, mediaType, i, i2);
        }

        @JvmStatic
        @JvmOverloads
        @JvmName(name = "create")
        public final RequestBody create(final byte[] bArr, final MediaType mediaType, final int i, final int i2) {
            _UtilCommonKt.checkOffsetAndCount(bArr.length, i, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$3
                @Override // okhttp3.RequestBody
                /* JADX INFO: renamed from: contentType, reason: from getter */
                public MediaType get$contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    sink.write(bArr, i, i2);
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, File file, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(file, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        public final RequestBody create(final File file, final MediaType mediaType) {
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                /* JADX INFO: renamed from: contentType, reason: from getter */
                public MediaType get$contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Source source = Okio.source(file);
                    try {
                        sink.writeAll(source);
                        CloseableKt.closeFinally(source, null);
                    } finally {
                    }
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, Path path, FileSystem fileSystem, MediaType mediaType, int i, Object obj) {
            if ((i & 2) != 0) {
                mediaType = null;
            }
            return companion.create(path, fileSystem, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        public final RequestBody create(final Path path, final FileSystem fileSystem, final MediaType mediaType) {
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$2
                @Override // okhttp3.RequestBody
                /* JADX INFO: renamed from: contentType, reason: from getter */
                public MediaType get$contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    Long size = fileSystem.metadata(path).getSize();
                    if (size != null) {
                        return size.longValue();
                    }
                    return -1L;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Source source = fileSystem.source(path);
                    try {
                        sink.writeAll(source);
                        CloseableKt.closeFinally(source, null);
                    } finally {
                    }
                }
            };
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        public final RequestBody create(MediaType contentType, String content) {
            return create(content, contentType);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        public final RequestBody create(MediaType contentType, ByteString content) {
            return create(content, contentType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, MediaType mediaType, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                i = 0;
            }
            if ((i3 & 8) != 0) {
                i2 = bArr.length;
            }
            return companion.create(mediaType, bArr, i, i2);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        @JvmOverloads
        public final RequestBody create(MediaType contentType, byte[] content, int offset, int byteCount) {
            return create(content, contentType, offset, byteCount);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @ReplaceWith(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
        @JvmStatic
        public final RequestBody create(MediaType contentType, File file) {
            return create(file, contentType);
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        EMPTY = Companion.create$default(companion, ByteString.EMPTY, (MediaType) null, 1, (Object) null);
    }
}
