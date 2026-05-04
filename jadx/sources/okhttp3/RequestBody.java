package okhttp3;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okio.BufferedSink;
import okio.ByteString;
import okio.FileSystem;
import okio.HashingSink;
import okio.Okio;
import okio.Path;
import okio.Source;

/* JADX INFO: loaded from: classes.dex */
public abstract class RequestBody {
    public static final Companion Companion;
    public static final RequestBody EMPTY;

    public static final RequestBody create(File file, MediaType mediaType) {
        return Companion.create(file, mediaType);
    }

    public static final RequestBody create(FileDescriptor fileDescriptor, MediaType mediaType) {
        return Companion.create(fileDescriptor, mediaType);
    }

    public static final RequestBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final RequestBody create(MediaType mediaType, File file) {
        return Companion.create(mediaType, file);
    }

    public static final RequestBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final RequestBody create(MediaType mediaType, ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i) {
        return Companion.create(mediaType, bArr, i);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i, int i2) {
        return Companion.create(mediaType, bArr, i, i2);
    }

    public static final RequestBody create(ByteString byteString, MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    public static final RequestBody create(Path path, FileSystem fileSystem, MediaType mediaType) {
        return Companion.create(path, fileSystem, mediaType);
    }

    public static final RequestBody create(byte[] bArr) {
        return Companion.create(bArr);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i) {
        return Companion.create(bArr, mediaType, i);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i, int i2) {
        return Companion.create(bArr, mediaType, i, i2);
    }

    public long contentLength() {
        return -1L;
    }

    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(BufferedSink bufferedSink);

    public final ByteString sha256() {
        HashingSink hashingSinkSha256 = HashingSink.Companion.sha256(Okio.blackhole());
        BufferedSink bufferedSinkBuffer = Okio.buffer(hashingSinkSha256);
        try {
            writeTo(bufferedSinkBuffer);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedSinkBuffer, null);
            return hashingSinkSha256.hash();
        } finally {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RequestBody create(MediaType mediaType, byte[] content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create$default(this, mediaType, content, 0, 0, 12, (Object) null);
        }

        public final RequestBody create(MediaType mediaType, byte[] content, int i) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create$default(this, mediaType, content, i, 0, 8, (Object) null);
        }

        public final RequestBody create(byte[] bArr) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType, int i) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
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

        public final RequestBody create(String str, MediaType mediaType) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Pair pairChooseCharset = Internal.chooseCharset(mediaType);
            Charset charset = (Charset) pairChooseCharset.component1();
            MediaType mediaType2 = (MediaType) pairChooseCharset.component2();
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            return create(bytes, mediaType2, 0, bytes.length);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        public final RequestBody create(final ByteString byteString, final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(byteString, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return byteString.size();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
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

        public final RequestBody create(final FileDescriptor fileDescriptor, final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(fileDescriptor, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public boolean isOneShot() {
                    return true;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    FileInputStream fileInputStream = new FileInputStream(fileDescriptor);
                    try {
                        sink.getBuffer().writeAll(Okio.source(fileInputStream));
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

        public final RequestBody create(final byte[] bArr, final MediaType mediaType, final int i, final int i2) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            _UtilCommonKt.checkOffsetAndCount(bArr.length, i, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$3
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
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

        public final RequestBody create(final File file, final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(BufferedSink sink) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
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

        public final RequestBody create(final Path path, final FileSystem fileSystem, final MediaType mediaType) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$2
                @Override // okhttp3.RequestBody
                public MediaType contentType() {
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
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    Source source = fileSystem.source(path);
                    try {
                        sink.writeAll(source);
                        CloseableKt.closeFinally(source, null);
                    } finally {
                    }
                }
            };
        }

        public final RequestBody create(MediaType mediaType, String content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        public final RequestBody create(MediaType mediaType, ByteString content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType);
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

        public final RequestBody create(MediaType mediaType, byte[] content, int i, int i2) {
            Intrinsics.checkNotNullParameter(content, "content");
            return create(content, mediaType, i, i2);
        }

        public final RequestBody create(MediaType mediaType, File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return create(file, mediaType);
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        EMPTY = Companion.create$default(companion, ByteString.EMPTY, (MediaType) null, 1, (Object) null);
    }
}
