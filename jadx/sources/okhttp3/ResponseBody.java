package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Internal;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion;
    public static final ResponseBody EMPTY;
    private Reader reader;

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j, BufferedSource bufferedSource) {
        return Companion.create(mediaType, j, bufferedSource);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final ResponseBody create(BufferedSource bufferedSource, MediaType mediaType, long j) {
        return Companion.create(bufferedSource, mediaType, j);
    }

    public static final ResponseBody create(ByteString byteString, MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract BufferedSource source();

    public final InputStream byteStream() {
        return source().inputStream();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Throwable] */
    private final <T> T consumeSource(ResponseBody responseBody, Function1<? super BufferedSource, ? extends T> function1, Function1<? super T, Integer> function12) throws IOException {
        ?? r7;
        long jContentLength = responseBody.contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + jContentLength);
        }
        BufferedSource bufferedSourceSource = responseBody.source();
        Object obj = (Object) null;
        try {
            Object objInvoke = function1.invoke(bufferedSourceSource);
            InlineMarker.finallyStart(1);
            if (bufferedSourceSource != null) {
                try {
                    bufferedSourceSource.close();
                } catch (Throwable 
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getCodeVar()" because "ssaVar" is null
                    	at jadx.core.codegen.RegionGen.makeCatchBlock(RegionGen.java:372)
                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:335)
                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:305)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:284)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:412)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                    */
                /*
                    this = this;
                    long r0 = r6.contentLength()
                    r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
                    int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                    if (r2 > 0) goto L75
                    okio.BufferedSource r6 = r6.source()
                    r2 = 0
                    r3 = 1
                    java.lang.Object r7 = r7.invoke(r6)     // Catch: java.lang.Throwable -> L26
                    kotlin.jvm.internal.InlineMarker.finallyStart(r3)
                    if (r6 == 0) goto L1f
                    r6.close()     // Catch: java.lang.Throwable -> L1e
                    goto L1f
                L1e:
                    r2 = move-exception
                L1f:
                    kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
                    r4 = r2
                    r2 = r7
                    r7 = r4
                    goto L37
                L26:
                    r7 = move-exception
                    kotlin.jvm.internal.InlineMarker.finallyStart(r3)
                    if (r6 == 0) goto L34
                    r6.close()     // Catch: java.lang.Throwable -> L30
                    goto L34
                L30:
                    r6 = move-exception
                    kotlin.ExceptionsKt.addSuppressed(r7, r6)
                L34:
                    kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
                L37:
                    if (r7 != 0) goto L74
                    java.lang.Object r6 = r8.invoke(r2)
                    java.lang.Number r6 = (java.lang.Number) r6
                    int r6 = r6.intValue()
                    r7 = -1
                    int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                    if (r7 == 0) goto L73
                    long r7 = (long) r6
                    int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                    if (r7 != 0) goto L4f
                    goto L73
                L4f:
                    java.io.IOException r7 = new java.io.IOException
                    java.lang.StringBuilder r8 = new java.lang.StringBuilder
                    r8.<init>()
                    java.lang.String r2 = "Content-Length ("
                    r8.append(r2)
                    r8.append(r0)
                    java.lang.String r0 = ") and stream length ("
                    r8.append(r0)
                    r8.append(r6)
                    java.lang.String r6 = ") disagree"
                    r8.append(r6)
                    java.lang.String r6 = r8.toString()
                    r7.<init>(r6)
                    throw r7
                L73:
                    return r2
                L74:
                    throw r7
                L75:
                    java.io.IOException r6 = new java.io.IOException
                    java.lang.StringBuilder r7 = new java.lang.StringBuilder
                    r7.<init>()
                    java.lang.String r8 = "Cannot buffer entire body for content length: "
                    r7.append(r8)
                    r7.append(r0)
                    java.lang.String r7 = r7.toString()
                    r6.<init>(r7)
                    throw r6
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.ResponseBody.consumeSource(okhttp3.ResponseBody, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):java.lang.Object");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r4v9 */
            public final ByteString byteString() throws IOException {
                long jContentLength = contentLength();
                if (jContentLength > 2147483647L) {
                    throw new IOException("Cannot buffer entire body for content length: " + jContentLength);
                }
                BufferedSource bufferedSourceSource = source();
                ByteString th = null;
                try {
                    ByteString byteString = bufferedSourceSource.readByteString();
                    if (bufferedSourceSource != null) {
                        try {
                            bufferedSourceSource.close();
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    th = th;
                    th = byteString;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedSourceSource != null) {
                        try {
                            bufferedSourceSource.close();
                        } catch (Throwable th4) {
                            ExceptionsKt.addSuppressed(th, th4);
                        }
                    }
                }
                if (th != 0) {
                    throw th;
                }
                int size = th.size();
                if (jContentLength == -1 || jContentLength == size) {
                    return th;
                }
                throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + size + ") disagree");
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r4v9 */
            public final byte[] bytes() throws IOException {
                long jContentLength = contentLength();
                if (jContentLength > 2147483647L) {
                    throw new IOException("Cannot buffer entire body for content length: " + jContentLength);
                }
                BufferedSource bufferedSourceSource = source();
                byte[] th = null;
                try {
                    byte[] byteArray = bufferedSourceSource.readByteArray();
                    if (bufferedSourceSource != null) {
                        try {
                            bufferedSourceSource.close();
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    th = th;
                    th = byteArray;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedSourceSource != null) {
                        try {
                            bufferedSourceSource.close();
                        } catch (Throwable th4) {
                            ExceptionsKt.addSuppressed(th, th4);
                        }
                    }
                }
                if (th != 0) {
                    throw th;
                }
                int length = th.length;
                if (jContentLength == -1 || jContentLength == length) {
                    return th;
                }
                throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + length + ") disagree");
            }

            public final Reader charStream() {
                Reader reader = this.reader;
                if (reader != null) {
                    return reader;
                }
                BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
                this.reader = bomAwareReader;
                return bomAwareReader;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable] */
            /* JADX WARN: Type inference failed for: r2v5 */
            public final String string() {
                BufferedSource bufferedSourceSource = source();
                String th = null;
                try {
                    String string = bufferedSourceSource.readString(_UtilJvmKt.readBomAsCharset(bufferedSourceSource, charset()));
                    if (bufferedSourceSource != null) {
                        try {
                            bufferedSourceSource.close();
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    th = th;
                    th = string;
                } catch (Throwable th3) {
                    th = th3;
                    if (bufferedSourceSource != null) {
                        try {
                            bufferedSourceSource.close();
                        } catch (Throwable th4) {
                            ExceptionsKt.addSuppressed(th, th4);
                        }
                    }
                }
                if (th == 0) {
                    return th;
                }
                throw th;
            }

            private final Charset charset() {
                return Internal.charsetOrUtf8(contentType());
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                _UtilCommonKt.closeQuietly(source());
            }

            public static final class BomAwareReader extends Reader {
                private final Charset charset;
                private boolean closed;
                private Reader delegate;
                private final BufferedSource source;

                public BomAwareReader(BufferedSource source, Charset charset) {
                    Intrinsics.checkNotNullParameter(source, "source");
                    Intrinsics.checkNotNullParameter(charset, "charset");
                    this.source = source;
                    this.charset = charset;
                }

                @Override // java.io.Reader
                public int read(char[] cbuf, int i, int i2) throws IOException {
                    Intrinsics.checkNotNullParameter(cbuf, "cbuf");
                    if (this.closed) {
                        throw new IOException("Stream closed");
                    }
                    Reader inputStreamReader = this.delegate;
                    if (inputStreamReader == null) {
                        inputStreamReader = new InputStreamReader(this.source.inputStream(), _UtilJvmKt.readBomAsCharset(this.source, this.charset));
                        this.delegate = inputStreamReader;
                    }
                    return inputStreamReader.read(cbuf, i, i2);
                }

                @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.closed = true;
                    Reader reader = this.delegate;
                    if (reader != null) {
                        reader.close();
                    } else {
                        this.source.close();
                    }
                }
            }

            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i, Object obj) {
                    if ((i & 1) != 0) {
                        mediaType = null;
                    }
                    return companion.create(str, mediaType);
                }

                public final ResponseBody create(String str, MediaType mediaType) {
                    Intrinsics.checkNotNullParameter(str, "<this>");
                    Pair pairChooseCharset = Internal.chooseCharset(mediaType);
                    Charset charset = (Charset) pairChooseCharset.component1();
                    MediaType mediaType2 = (MediaType) pairChooseCharset.component2();
                    Buffer bufferWriteString = new Buffer().writeString(str, charset);
                    return create(bufferWriteString, mediaType2, bufferWriteString.size());
                }

                public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
                    if ((i & 1) != 0) {
                        mediaType = null;
                    }
                    return companion.create(bArr, mediaType);
                }

                public final ResponseBody create(byte[] bArr, MediaType mediaType) {
                    Intrinsics.checkNotNullParameter(bArr, "<this>");
                    return create(new Buffer().write(bArr), mediaType, bArr.length);
                }

                public static /* synthetic */ ResponseBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i, Object obj) {
                    if ((i & 1) != 0) {
                        mediaType = null;
                    }
                    return companion.create(byteString, mediaType);
                }

                public final ResponseBody create(ByteString byteString, MediaType mediaType) {
                    Intrinsics.checkNotNullParameter(byteString, "<this>");
                    return create(new Buffer().write(byteString), mediaType, byteString.size());
                }

                public static /* synthetic */ ResponseBody create$default(Companion companion, BufferedSource bufferedSource, MediaType mediaType, long j, int i, Object obj) {
                    if ((i & 1) != 0) {
                        mediaType = null;
                    }
                    if ((i & 2) != 0) {
                        j = -1;
                    }
                    return companion.create(bufferedSource, mediaType, j);
                }

                public final ResponseBody create(final BufferedSource bufferedSource, final MediaType mediaType, final long j) {
                    Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
                    return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                        @Override // okhttp3.ResponseBody
                        public MediaType contentType() {
                            return mediaType;
                        }

                        @Override // okhttp3.ResponseBody
                        public long contentLength() {
                            return j;
                        }

                        @Override // okhttp3.ResponseBody
                        public BufferedSource source() {
                            return bufferedSource;
                        }
                    };
                }

                public final ResponseBody create(MediaType mediaType, String content) {
                    Intrinsics.checkNotNullParameter(content, "content");
                    return create(content, mediaType);
                }

                public final ResponseBody create(MediaType mediaType, byte[] content) {
                    Intrinsics.checkNotNullParameter(content, "content");
                    return create(content, mediaType);
                }

                public final ResponseBody create(MediaType mediaType, ByteString content) {
                    Intrinsics.checkNotNullParameter(content, "content");
                    return create(content, mediaType);
                }

                public final ResponseBody create(MediaType mediaType, long j, BufferedSource content) {
                    Intrinsics.checkNotNullParameter(content, "content");
                    return create(content, mediaType, j);
                }
            }

            static {
                Companion companion = new Companion(null);
                Companion = companion;
                EMPTY = Companion.create$default(companion, ByteString.EMPTY, (MediaType) null, 1, (Object) null);
            }
        }
