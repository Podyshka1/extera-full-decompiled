package okhttp3.internal.http2;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 ¡\u00012\u00020\u00012\u00020\u0002:\b\u009e\u0001\u009f\u0001 \u0001¡\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010V\u001a\u00020\u0011J\u0010\u0010W\u001a\u0004\u0018\u00010\u00122\u0006\u0010X\u001a\u00020\u0011J\u0017\u0010Y\u001a\u0004\u0018\u00010\u00122\u0006\u0010Z\u001a\u00020\u0011H\u0000¢\u0006\u0002\b[J\u0015\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020+H\u0000¢\u0006\u0002\b_J$\u0010`\u001a\u00020\u00122\u0006\u0010a\u001a\u00020\u00112\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\bJ\u001c\u0010f\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\bJ&\u0010f\u001a\u00020\u00122\u0006\u0010a\u001a\u00020\u00112\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\bH\u0002J+\u0010g\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010h\u001a\u00020\b2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0002\bjJ(\u0010k\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010h\u001a\u00020\b2\b\u0010l\u001a\u0004\u0018\u00010m2\u0006\u0010n\u001a\u00020+J\u001d\u0010o\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010p\u001a\u00020qH\u0000¢\u0006\u0002\brJ\u001d\u0010s\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010t\u001a\u00020qH\u0000¢\u0006\u0002\buJ\u001d\u0010v\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010w\u001a\u00020+H\u0000¢\u0006\u0002\bxJ\u001e\u0010y\u001a\u00020]2\u0006\u0010z\u001a\u00020\b2\u0006\u0010{\u001a\u00020\u00112\u0006\u0010|\u001a\u00020\u0011J\u0006\u0010}\u001a\u00020]J\u0006\u0010y\u001a\u00020]J\u0006\u0010~\u001a\u00020]J\u0006\u0010\u007f\u001a\u00020]J\u000f\u0010\u0080\u0001\u001a\u00020]2\u0006\u0010t\u001a\u00020qJ\t\u0010\u0081\u0001\u001a\u00020]H\u0016J-\u0010\u0081\u0001\u001a\u00020]2\u0007\u0010\u0082\u0001\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u00020q2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0000¢\u0006\u0003\b\u0086\u0001J\u0015\u0010\u0087\u0001\u001a\u00020]2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0002J\u0014\u0010\u0089\u0001\u001a\u00020]2\t\b\u0002\u0010\u008a\u0001\u001a\u00020\bH\u0007J\u0010\u0010\u008b\u0001\u001a\u00020]2\u0007\u0010\u008c\u0001\u001a\u000207J\u0010\u0010\u008d\u0001\u001a\u00020\b2\u0007\u0010\u008e\u0001\u001a\u00020+J\u000f\u0010\u008f\u0001\u001a\u00020]H\u0000¢\u0006\u0003\b\u0090\u0001J\u0017\u0010\u0091\u0001\u001a\u00020\b2\u0006\u0010Z\u001a\u00020\u0011H\u0000¢\u0006\u0003\b\u0092\u0001J%\u0010\u0093\u0001\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0003\b\u0094\u0001J.\u0010\u0095\u0001\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0007\u0010\u0096\u0001\u001a\u00020\bH\u0000¢\u0006\u0003\b\u0097\u0001J2\u0010\u0098\u0001\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0006\u0010n\u001a\u00020\u00112\u0007\u0010\u0096\u0001\u001a\u00020\bH\u0000¢\u0006\u0003\b\u009b\u0001J\u001f\u0010\u009c\u0001\u001a\u00020]2\u0006\u0010Z\u001a\u00020\u00112\u0006\u0010p\u001a\u00020qH\u0000¢\u0006\u0003\b\u009d\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u000e\u0010!\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\u000203X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0011\u00106\u001a\u000207¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u001a\u0010:\u001a\u000207X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00109\"\u0004\b<\u0010=R\u0011\u0010>\u001a\u00020?¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u001e\u0010C\u001a\u00020+2\u0006\u0010B\u001a\u00020+@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u001e\u0010F\u001a\u00020+2\u0006\u0010B\u001a\u00020+@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bG\u0010ER\u0014\u0010H\u001a\u00020IX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0011\u0010L\u001a\u00020M¢\u0006\b\n\u0000\u001a\u0004\bN\u0010OR\u0015\u0010P\u001a\u00060QR\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\bR\u0010SR\u0014\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00110UX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006¢\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "Lokhttp3/internal/concurrent/Lockable;", "builder", "Lokhttp3/internal/http2/Http2Connection$Builder;", "<init>", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "client", _UrlKt.FRAGMENT_ENCODE_SET, "getClient$okhttp", "()Z", "listener", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "streams", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Http2Stream;", "getStreams$okhttp", "()Ljava/util/Map;", "connectionName", _UrlKt.FRAGMENT_ENCODE_SET, "getConnectionName$okhttp", "()Ljava/lang/String;", "lastGoodStreamId", "getLastGoodStreamId$okhttp", "()I", "setLastGoodStreamId$okhttp", "(I)V", "nextStreamId", "getNextStreamId$okhttp", "setNextStreamId$okhttp", "isShutdown", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "writerQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "pushQueue", "settingsListenerQueue", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "intervalPingsSent", _UrlKt.FRAGMENT_ENCODE_SET, "intervalPongsReceived", "degradedPingsSent", "degradedPongsReceived", "awaitPingsSent", "awaitPongsReceived", "degradedPongDeadlineNs", "flowControlListener", "Lokhttp3/internal/http2/FlowControlListener;", "getFlowControlListener$okhttp", "()Lokhttp3/internal/http2/FlowControlListener;", "okHttpSettings", "Lokhttp3/internal/http2/Settings;", "getOkHttpSettings", "()Lokhttp3/internal/http2/Settings;", "peerSettings", "getPeerSettings", "setPeerSettings", "(Lokhttp3/internal/http2/Settings;)V", "readBytes", "Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "getReadBytes", "()Lokhttp3/internal/http2/flowcontrol/WindowCounter;", "value", "writeBytesTotal", "getWriteBytesTotal", "()J", "writeBytesMaximum", "getWriteBytesMaximum", "socket", "Lokhttp3/internal/connection/BufferedSocket;", "getSocket$okhttp", "()Lokhttp3/internal/connection/BufferedSocket;", "writer", "Lokhttp3/internal/http2/Http2Writer;", "getWriter", "()Lokhttp3/internal/http2/Http2Writer;", "readerRunnable", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "currentPushRequests", _UrlKt.FRAGMENT_ENCODE_SET, "openStreamCount", "getStream", "id", "removeStream", "streamId", "removeStream$okhttp", "updateConnectionFlowControl", _UrlKt.FRAGMENT_ENCODE_SET, "read", "updateConnectionFlowControl$okhttp", "pushStream", "associatedStreamId", "requestHeaders", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "out", "newStream", "writeHeaders", "outFinished", "alternating", "writeHeaders$okhttp", "writeData", "buffer", "Lokio/Buffer;", "byteCount", "writeSynResetLater", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "writeSynResetLater$okhttp", "writeSynReset", "statusCode", "writeSynReset$okhttp", "writeWindowUpdateLater", "unacknowledgedBytesRead", "writeWindowUpdateLater$okhttp", "writePing", "reply", "payload1", "payload2", "writePingAndAwaitPong", "awaitPong", "flush", "shutdown", "close", "connectionCode", "streamCode", "cause", "Ljava/io/IOException;", "close$okhttp", "failConnection", "e", "start", "sendConnectionPreface", "setSettings", "settings", "isHealthy", "nowNs", "sendDegradedPingLater", "sendDegradedPingLater$okhttp", "pushedStream", "pushedStream$okhttp", "pushRequestLater", "pushRequestLater$okhttp", "pushHeadersLater", "inFinished", "pushHeadersLater$okhttp", "pushDataLater", "source", "Lokio/BufferedSource;", "pushDataLater$okhttp", "pushResetLater", "pushResetLater$okhttp", "Builder", "ReaderRunnable", "Listener", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1042:1\n63#2:1043\n63#2:1044\n63#2:1045\n38#2:1046\n63#2:1047\n63#2:1049\n63#2:1050\n63#2:1051\n34#2:1052\n63#2:1053\n63#2:1054\n34#2:1055\n63#2:1056\n63#2:1057\n49#2,4:1058\n63#2:1067\n63#2:1087\n63#2:1088\n63#2:1089\n63#2:1090\n63#2:1091\n63#2:1092\n63#2:1095\n63#2:1101\n63#2:1107\n63#2:1111\n1#3:1048\n228#4,5:1062\n228#4,5:1071\n228#4,5:1077\n228#4,5:1082\n228#4,2:1093\n230#4,3:1096\n228#4,2:1099\n230#4,3:1102\n228#4,2:1105\n230#4,3:1108\n37#5,2:1068\n13805#6:1070\n13806#6:1076\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n174#1:1043\n176#1:1044\n179#1:1045\n183#1:1046\n190#1:1047\n242#1:1049\n243#1:1050\n313#1:1051\n321#1:1052\n394#1:1053\n405#1:1054\n407#1:1055\n424#1:1056\n426#1:1057\n452#1:1058,4\n459#1:1067\n519#1:1087\n520#1:1088\n531#1:1089\n557#1:1090\n914#1:1091\n152#1:1092\n926#1:1095\n944#1:1101\n971#1:1107\n985#1:1111\n454#1:1062,5\n467#1:1071,5\n473#1:1077,5\n478#1:1082,5\n923#1:1093,2\n923#1:1096,3\n941#1:1099,2\n941#1:1102,3\n967#1:1105,2\n967#1:1108,3\n461#1:1068,2\n466#1:1070\n466#1:1076\n*E\n"})
public final class Http2Connection implements Closeable, Lockable {
    public static final int AWAIT_PING = 3;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;
    private final String connectionName;
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private final FlowControlListener flowControlListener;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;
    private final Listener listener;
    private int nextStreamId;
    private final Settings okHttpSettings;
    private Settings peerSettings;
    private final PushObserver pushObserver;
    private final TaskQueue pushQueue;
    private final WindowCounter readBytes;
    private final ReaderRunnable readerRunnable;
    private final TaskQueue settingsListenerQueue;
    private final BufferedSocket socket;
    private final Map<Integer, Http2Stream> streams;
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;
    private final Http2Writer writer;
    private final TaskQueue writerQueue;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "onStream", _UrlKt.FRAGMENT_ENCODE_SET, "stream", "Lokhttp3/internal/http2/Http2Stream;", "onSettings", "connection", "Lokhttp3/internal/http2/Http2Connection;", "settings", "Lokhttp3/internal/http2/Settings;", "Companion", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static abstract class Listener {

        @JvmField
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream stream) {
                stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        public void onSettings(Http2Connection connection, Settings settings) {
        }

        public abstract void onStream(Http2Stream stream);
    }

    public final boolean pushedStream$okhttp(int streamId) {
        return streamId != 0 && (streamId & 1) == 0;
    }

    @JvmOverloads
    public final void start() {
        start$default(this, false, 1, null);
    }

    public final void close$okhttp(ErrorCode connectionCode, ErrorCode streamCode, IOException cause) {
        int i;
        Object[] array;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m909m(Thread.currentThread().getName(), " MUST NOT hold lock on ", this);
            return;
        }
        try {
            shutdown(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (this.streams.isEmpty()) {
                    array = null;
                } else {
                    array = this.streams.values().toArray(new Http2Stream[0]);
                    this.streams.clear();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(streamCode, cause);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException unused3) {
        }
        try {
            this.socket.cancel();
        } catch (IOException unused4) {
        }
        this.writerQueue.shutdown();
        this.pushQueue.shutdown();
        this.settingsListenerQueue.shutdown();
    }

    public Http2Connection(Builder builder) {
        boolean client = builder.getClient();
        this.client = client;
        this.listener = builder.getListener();
        this.streams = new LinkedHashMap();
        String connectionName$okhttp = builder.getConnectionName$okhttp();
        this.connectionName = connectionName$okhttp;
        this.nextStreamId = builder.getClient() ? 3 : 2;
        TaskRunner taskRunner = builder.getTaskRunner();
        this.taskRunner = taskRunner;
        TaskQueue taskQueueNewQueue = taskRunner.newQueue();
        this.writerQueue = taskQueueNewQueue;
        this.pushQueue = taskRunner.newQueue();
        this.settingsListenerQueue = taskRunner.newQueue();
        this.pushObserver = builder.getPushObserver();
        this.flowControlListener = builder.getFlowControlListener();
        Settings settings = new Settings();
        if (builder.getClient()) {
            settings.set(4, 16777216);
        }
        this.okHttpSettings = settings;
        this.peerSettings = DEFAULT_SETTINGS;
        this.readBytes = new WindowCounter(0);
        this.writeBytesMaximum = this.peerSettings.getInitialWindowSize();
        BufferedSocket socket$okhttp = builder.getSocket$okhttp();
        this.socket = socket$okhttp;
        this.writer = new Http2Writer(socket$okhttp.getSink(), client);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(socket$okhttp.getSource(), client));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis() != 0) {
            final long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis());
            taskQueueNewQueue.schedule(connectionName$okhttp + " ping", nanos, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Long.valueOf(Http2Connection.$r8$lambda$Z28XoadYOXbYtyd3_4baGfxpKWM(this.f$0, nanos));
                }
            });
        }
    }

    public static long $r8$lambda$Z28XoadYOXbYtyd3_4baGfxpKWM(Http2Connection http2Connection, long j) {
        boolean z;
        synchronized (http2Connection) {
            long j2 = http2Connection.intervalPongsReceived;
            long j3 = http2Connection.intervalPingsSent;
            if (j2 < j3) {
                z = true;
            } else {
                http2Connection.intervalPingsSent = j3 + 1;
                z = false;
            }
        }
        if (z) {
            http2Connection.failConnection(null);
            return -1L;
        }
        http2Connection.writePing(false, 1, 0);
        return j;
    }

    public final void awaitPong() {
        synchronized (this) {
            while (this.awaitPongsReceived < this.awaitPingsSent) {
                try {
                    wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Http2Stream getStream(int id) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = this.streams.get(Integer.valueOf(id));
        }
        return http2Stream;
    }

    public final boolean isHealthy(long nowNs) {
        synchronized (this) {
            if (this.isShutdown) {
                return false;
            }
            if (this.degradedPongsReceived < this.degradedPingsSent) {
                if (nowNs >= this.degradedPongDeadlineNs) {
                    return false;
                }
            }
            return true;
        }
    }

    public final int openStreamCount() {
        int size;
        synchronized (this) {
            size = this.streams.size();
        }
        return size;
    }

    public final void pushRequestLater$okhttp(final int streamId, final List<Header> requestHeaders) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(streamId))) {
                writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(streamId));
            TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + streamId + "] onRequest", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Http2Connection.$r8$lambda$BmmSWn00knWMLDPauw0U0_44Io0(this.f$0, streamId, requestHeaders);
                }
            }, 6, null);
        }
    }

    public final Http2Stream removeStream$okhttp(int streamId) {
        Http2Stream http2StreamRemove;
        synchronized (this) {
            http2StreamRemove = this.streams.remove(Integer.valueOf(streamId));
            notifyAll();
        }
        return http2StreamRemove;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            long j = this.degradedPongsReceived;
            long j2 = this.degradedPingsSent;
            if (j < j2) {
                return;
            }
            this.degradedPingsSent = j2 + 1;
            this.degradedPongDeadlineNs = System.nanoTime() + 1000000000;
            Unit unit = Unit.INSTANCE;
            TaskQueue.execute$default(this.writerQueue, this.connectionName + " ping", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Http2Connection.$r8$lambda$cu_a_P82SDW32jURw83_HhRGWmE(this.f$0);
                }
            }, 6, null);
        }
    }

    public final void updateConnectionFlowControl$okhttp(long read) {
        synchronized (this) {
            try {
                WindowCounter.update$default(this.readBytes, read, 0L, 2, null);
                long unacknowledged = this.readBytes.getUnacknowledged();
                if (unacknowledged >= this.okHttpSettings.getInitialWindowSize() / 2) {
                    writeWindowUpdateLater$okhttp(0, unacknowledged);
                    WindowCounter.update$default(this.readBytes, 0L, unacknowledged, 1, null);
                }
                this.flowControlListener.receivingConnectionWindowChanged(this.readBytes);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void writePing() {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }

    /* JADX INFO: renamed from: getClient$okhttp, reason: from getter */
    public final boolean getClient() {
        return this.client;
    }

    /* JADX INFO: renamed from: getListener$okhttp, reason: from getter */
    public final Listener getListener() {
        return this.listener;
    }

    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    /* JADX INFO: renamed from: getConnectionName$okhttp, reason: from getter */
    public final String getConnectionName() {
        return this.connectionName;
    }

    /* JADX INFO: renamed from: getLastGoodStreamId$okhttp, reason: from getter */
    public final int getLastGoodStreamId() {
        return this.lastGoodStreamId;
    }

    public final void setLastGoodStreamId$okhttp(int i) {
        this.lastGoodStreamId = i;
    }

    /* JADX INFO: renamed from: getNextStreamId$okhttp, reason: from getter */
    public final int getNextStreamId() {
        return this.nextStreamId;
    }

    public final void setNextStreamId$okhttp(int i) {
        this.nextStreamId = i;
    }

    /* JADX INFO: renamed from: getFlowControlListener$okhttp, reason: from getter */
    public final FlowControlListener getFlowControlListener() {
        return this.flowControlListener;
    }

    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final void setPeerSettings(Settings settings) {
        this.peerSettings = settings;
    }

    public final WindowCounter getReadBytes() {
        return this.readBytes;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    /* JADX INFO: renamed from: getSocket$okhttp, reason: from getter */
    public final BufferedSocket getSocket() {
        return this.socket;
    }

    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    public final Http2Stream pushStream(int associatedStreamId, List<Header> requestHeaders, boolean out) {
        if (this.client) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Client cannot push requests.");
            return null;
        }
        return newStream(associatedStreamId, requestHeaders, out);
    }

    public final Http2Stream newStream(List<Header> requestHeaders, boolean out) {
        return newStream(0, requestHeaders, out);
    }

    private final Http2Stream newStream(int associatedStreamId, List<Header> requestHeaders, boolean out) {
        Http2Connection http2Connection;
        Throwable th;
        int i;
        Http2Stream http2Stream;
        boolean z;
        boolean z2 = !out;
        synchronized (this.writer) {
            try {
                synchronized (this) {
                    try {
                        if (this.nextStreamId > 1073741823) {
                            try {
                                shutdown(ErrorCode.REFUSED_STREAM);
                            } catch (Throwable th2) {
                                th = th2;
                                http2Connection = this;
                            }
                        }
                        try {
                            if (this.isShutdown) {
                                throw new ConnectionShutdownException();
                            }
                            i = this.nextStreamId;
                            this.nextStreamId = i + 2;
                            http2Stream = new Http2Stream(i, this, z2, false, null);
                            z = !out || this.writeBytesTotal >= this.writeBytesMaximum || http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum();
                            if (http2Stream.isOpen()) {
                                this.streams.put(Integer.valueOf(i), http2Stream);
                            }
                            Unit unit = Unit.INSTANCE;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        http2Connection = this;
                    }
                    th = th;
                    throw th;
                }
                if (associatedStreamId == 0) {
                    this.writer.headers(z2, i, requestHeaders);
                } else {
                    if (this.client) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                    }
                    this.writer.pushPromise(associatedStreamId, i, requestHeaders);
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        if (z) {
            this.writer.flush();
        }
        return http2Stream;
    }

    public final void writeHeaders$okhttp(int streamId, boolean outFinished, List<Header> alternating) {
        this.writer.headers(outFinished, streamId, alternating);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.writer.maxDataLength());
        r6 = r2;
        r8.writeBytesTotal += r6;
        r4 = kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void writeData(int streamId, boolean outFinished, Buffer buffer, long byteCount) {
        int iMin;
        long j;
        if (byteCount == 0) {
            this.writer.data(outFinished, streamId, buffer, 0);
            return;
        }
        while (byteCount > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j2 = this.writeBytesTotal;
                            long j3 = this.writeBytesMaximum;
                            if (j2 < j3) {
                                break;
                            } else if (this.streams.containsKey(Integer.valueOf(streamId))) {
                                wait();
                            } else {
                                throw new IOException("stream closed");
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    throw th;
                }
            }
            byteCount -= j;
            this.writer.data(outFinished && byteCount == 0, streamId, buffer, iMin);
        }
    }

    public final void writeSynResetLater$okhttp(final int streamId, final ErrorCode errorCode) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + streamId + "] writeSynReset", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Http2Connection.$r8$lambda$ztxaN52Zhu5JliTkHluCVoFr0Rw(this.f$0, streamId, errorCode);
            }
        }, 6, null);
    }

    public static Unit $r8$lambda$ztxaN52Zhu5JliTkHluCVoFr0Rw(Http2Connection http2Connection, int i, ErrorCode errorCode) {
        try {
            http2Connection.writeSynReset$okhttp(i, errorCode);
        } catch (IOException e) {
            http2Connection.failConnection(e);
        }
        return Unit.INSTANCE;
    }

    public final void writeSynReset$okhttp(int streamId, ErrorCode statusCode) {
        this.writer.rstStream(streamId, statusCode);
    }

    public final void writeWindowUpdateLater$okhttp(final int streamId, final long unacknowledgedBytesRead) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + streamId + "] windowUpdate", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Http2Connection.m4821$r8$lambda$RDrtX_1LOc8QQSkh6EyfSti1CI(this.f$0, streamId, unacknowledgedBytesRead);
            }
        }, 6, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$RDrtX_1LOc8QQSkh6EyfS-ti1CI, reason: not valid java name */
    public static Unit m4821$r8$lambda$RDrtX_1LOc8QQSkh6EyfSti1CI(Http2Connection http2Connection, int i, long j) {
        try {
            http2Connection.writer.windowUpdate(i, j);
        } catch (IOException e) {
            http2Connection.failConnection(e);
        }
        return Unit.INSTANCE;
    }

    public final void writePing(boolean reply, int payload1, int payload2) {
        try {
            this.writer.ping(reply, payload1, payload2);
        } catch (IOException e) {
            failConnection(e);
        }
    }

    public final void writePingAndAwaitPong() {
        writePing();
        awaitPong();
    }

    public final void flush() {
        this.writer.flush();
    }

    public final void shutdown(ErrorCode statusCode) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                int i = this.lastGoodStreamId;
                Unit unit = Unit.INSTANCE;
                this.writer.goAway(i, statusCode, _UtilCommonKt.EMPTY_BYTE_ARRAY);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void failConnection(IOException e) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        close$okhttp(errorCode, errorCode, e);
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        http2Connection.start(z);
    }

    @JvmOverloads
    public final void start(boolean sendConnectionPreface) {
        if (sendConnectionPreface) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            if (this.okHttpSettings.getInitialWindowSize() != 65535) {
                this.writer.windowUpdate(0, r9 - 65535);
            }
        }
        TaskQueue.execute$default(this.taskRunner.newQueue(), this.connectionName, 0L, false, this.readerRunnable, 6, null);
    }

    public final void setSettings(Settings settings) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
                Unit unit = Unit.INSTANCE;
            }
            this.writer.settings(settings);
        }
    }

    public static Unit $r8$lambda$cu_a_P82SDW32jURw83_HhRGWmE(Http2Connection http2Connection) {
        http2Connection.writePing(false, 2, 0);
        return Unit.INSTANCE;
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020!J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-J\u0006\u00103\u001a\u000204R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020'X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010,\u001a\u00020-X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00065"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "client", _UrlKt.FRAGMENT_ENCODE_SET, "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "<init>", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "socket", "Lokhttp3/internal/connection/BufferedSocket;", "getSocket$okhttp", "()Lokhttp3/internal/connection/BufferedSocket;", "setSocket$okhttp", "(Lokhttp3/internal/connection/BufferedSocket;)V", "connectionName", _UrlKt.FRAGMENT_ENCODE_SET, "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", "listener", "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "pingIntervalMillis", _UrlKt.FRAGMENT_ENCODE_SET, "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "flowControlListener", "Lokhttp3/internal/http2/FlowControlListener;", "getFlowControlListener$okhttp", "()Lokhttp3/internal/http2/FlowControlListener;", "setFlowControlListener$okhttp", "(Lokhttp3/internal/http2/FlowControlListener;)V", "peerName", "build", "Lokhttp3/internal/http2/Http2Connection;", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Builder {
        private boolean client;
        public String connectionName;
        private int pingIntervalMillis;
        public BufferedSocket socket;
        private final TaskRunner taskRunner;
        private Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        private PushObserver pushObserver = PushObserver.CANCEL;
        private FlowControlListener flowControlListener = FlowControlListener.None.INSTANCE;

        public Builder(boolean z, TaskRunner taskRunner) {
            this.client = z;
            this.taskRunner = taskRunner;
        }

        /* JADX INFO: renamed from: getClient$okhttp, reason: from getter */
        public final boolean getClient() {
            return this.client;
        }

        public final void setClient$okhttp(boolean z) {
            this.client = z;
        }

        /* JADX INFO: renamed from: getTaskRunner$okhttp, reason: from getter */
        public final TaskRunner getTaskRunner() {
            return this.taskRunner;
        }

        public final BufferedSocket getSocket$okhttp() {
            BufferedSocket bufferedSocket = this.socket;
            if (bufferedSocket != null) {
                return bufferedSocket;
            }
            return null;
        }

        public final void setSocket$okhttp(BufferedSocket bufferedSocket) {
            this.socket = bufferedSocket;
        }

        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str != null) {
                return str;
            }
            return null;
        }

        public final void setConnectionName$okhttp(String str) {
            this.connectionName = str;
        }

        /* JADX INFO: renamed from: getListener$okhttp, reason: from getter */
        public final Listener getListener() {
            return this.listener;
        }

        public final void setListener$okhttp(Listener listener) {
            this.listener = listener;
        }

        /* JADX INFO: renamed from: getPushObserver$okhttp, reason: from getter */
        public final PushObserver getPushObserver() {
            return this.pushObserver;
        }

        public final void setPushObserver$okhttp(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
        }

        /* JADX INFO: renamed from: getPingIntervalMillis$okhttp, reason: from getter */
        public final int getPingIntervalMillis() {
            return this.pingIntervalMillis;
        }

        public final void setPingIntervalMillis$okhttp(int i) {
            this.pingIntervalMillis = i;
        }

        /* JADX INFO: renamed from: getFlowControlListener$okhttp, reason: from getter */
        public final FlowControlListener getFlowControlListener() {
            return this.flowControlListener;
        }

        public final void setFlowControlListener$okhttp(FlowControlListener flowControlListener) {
            this.flowControlListener = flowControlListener;
        }

        public final Builder socket(BufferedSocket socket, String peerName) {
            String str;
            setSocket$okhttp(socket);
            if (this.client) {
                str = _UtilJvmKt.okHttpName + ' ' + peerName;
            } else {
                str = "MockWebServer " + peerName;
            }
            setConnectionName$okhttp(str);
            return this;
        }

        public final Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public final Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public final Builder pingIntervalMillis(int pingIntervalMillis) {
            this.pingIntervalMillis = pingIntervalMillis;
            return this;
        }

        public final Builder flowControlListener(FlowControlListener flowControlListener) {
            this.flowControlListener = flowControlListener;
            return this;
        }

        public final Http2Connection build() {
            return new Http2Connection(this);
        }
    }

    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\n\u001a\u00020\u0003H\u0096\u0002J(\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J.\u0010\u0013\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001dJ\b\u0010\u001f\u001a\u00020\u0003H\u0016J \u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0016J \u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020'H\u0016J\u0018\u0010(\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020*H\u0016J(\u0010+\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\rH\u0016J&\u0010/\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000f2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J8\u00102\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020'2\u0006\u00106\u001a\u0002042\u0006\u00107\u001a\u00020\u000f2\u0006\u00108\u001a\u00020*H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u00069"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "reader", "Lokhttp3/internal/http2/Http2Reader;", "<init>", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "invoke", "data", "inFinished", _UrlKt.FRAGMENT_ENCODE_SET, "streamId", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lokio/BufferedSource;", "length", "headers", "associatedStreamId", "headerBlock", _UrlKt.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/http2/Header;", "rstStream", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "settings", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "applyAndAckSettings", "ackSettings", "ping", "ack", "payload1", "payload2", "goAway", "lastGoodStreamId", "debugData", "Lokio/ByteString;", "windowUpdate", "windowSizeIncrement", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.MenuItemProperties.PRIORITY, "streamDependency", "weight", "exclusive", "pushPromise", "promisedStreamId", "requestHeaders", "alternateService", "origin", _UrlKt.FRAGMENT_ENCODE_SET, "protocol", "host", "port", "maxAge", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n*L\n1#1,1042:1\n63#2:1043\n63#2:1044\n63#2:1045\n63#2:1048\n63#2:1049\n38#2:1050\n63#2:1051\n63#2:1054\n38#2:1055\n63#2:1056\n37#3,2:1046\n37#3,2:1052\n228#4,5:1057\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n678#1:1043\n757#1:1044\n758#1:1045\n792#1:1048\n809#1:1049\n819#1:1050\n845#1:1051\n864#1:1054\n866#1:1055\n871#1:1056\n775#1:1046,2\n846#1:1052,2\n703#1:1057,5\n*E\n"})
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {
        private final Http2Reader reader;

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int streamId, String origin, ByteString protocol, String host, int port, long maxAge) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int streamId, int streamDependency, int weight, boolean exclusive) {
        }

        public ReaderRunnable(Http2Reader http2Reader) {
            this.reader = http2Reader;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() throws Throwable {
            invoke2();
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: getReader$okhttp, reason: from getter */
        public final Http2Reader getReader() {
            return this.reader;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e = null;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                    try {
                        errorCode2 = ErrorCode.CANCEL;
                        Http2Connection.this.close$okhttp(errorCode3, errorCode2, null);
                        errorCode = errorCode3;
                    } catch (IOException e2) {
                        e = e2;
                        errorCode2 = ErrorCode.PROTOCOL_ERROR;
                        Http2Connection http2Connection = Http2Connection.this;
                        http2Connection.close$okhttp(errorCode2, errorCode2, e);
                        errorCode = http2Connection;
                    }
                } catch (Throwable th) {
                    th = th;
                    Http2Connection.this.close$okhttp(errorCode, errorCode2, e);
                    _UtilCommonKt.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                Http2Connection.this.close$okhttp(errorCode, errorCode2, e);
                _UtilCommonKt.closeQuietly(this.reader);
                throw th;
            }
            this = this.reader;
            _UtilCommonKt.closeQuietly(this);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean inFinished, int streamId, BufferedSource source, int length) {
            boolean zPushedStream$okhttp = Http2Connection.this.pushedStream$okhttp(streamId);
            Http2Connection http2Connection = Http2Connection.this;
            if (zPushedStream$okhttp) {
                http2Connection.pushDataLater$okhttp(streamId, source, length, inFinished);
                return;
            }
            Http2Stream stream = http2Connection.getStream(streamId);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater$okhttp(streamId, ErrorCode.PROTOCOL_ERROR);
                long j = length;
                Http2Connection.this.updateConnectionFlowControl$okhttp(j);
                source.skip(j);
                return;
            }
            stream.receiveData(source, length);
            if (inFinished) {
                stream.receiveHeaders(Headers.EMPTY, true);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean inFinished, int streamId, int associatedStreamId, List<Header> headerBlock) {
            boolean zPushedStream$okhttp = Http2Connection.this.pushedStream$okhttp(streamId);
            final Http2Connection http2Connection = Http2Connection.this;
            if (zPushedStream$okhttp) {
                http2Connection.pushHeadersLater$okhttp(streamId, headerBlock, inFinished);
                return;
            }
            synchronized (http2Connection) {
                Http2Stream stream = http2Connection.getStream(streamId);
                if (stream != null) {
                    Unit unit = Unit.INSTANCE;
                    stream.receiveHeaders(_UtilJvmKt.toHeaders(headerBlock), inFinished);
                    return;
                }
                if (http2Connection.isShutdown) {
                    return;
                }
                if (streamId <= http2Connection.getLastGoodStreamId()) {
                    return;
                }
                if (streamId % 2 == http2Connection.getNextStreamId() % 2) {
                    return;
                }
                final Http2Stream http2Stream = new Http2Stream(streamId, http2Connection, false, inFinished, _UtilJvmKt.toHeaders(headerBlock));
                http2Connection.setLastGoodStreamId$okhttp(streamId);
                http2Connection.getStreams$okhttp().put(Integer.valueOf(streamId), http2Stream);
                TaskQueue.execute$default(http2Connection.taskRunner.newQueue(), http2Connection.getConnectionName() + '[' + streamId + "] onStream", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Http2Connection.ReaderRunnable.headers$lambda$0$0(http2Connection, http2Stream);
                    }
                }, 6, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit headers$lambda$0$0(Http2Connection http2Connection, Http2Stream http2Stream) {
            try {
                http2Connection.getListener().onStream(http2Stream);
            } catch (IOException e) {
                Platform.INSTANCE.get().log("Http2Connection.Listener failure for " + http2Connection.getConnectionName(), 4, e);
                try {
                    http2Stream.close(ErrorCode.PROTOCOL_ERROR, e);
                } catch (IOException unused) {
                }
            }
            return Unit.INSTANCE;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int streamId, ErrorCode errorCode) {
            boolean zPushedStream$okhttp = Http2Connection.this.pushedStream$okhttp(streamId);
            Http2Connection http2Connection = Http2Connection.this;
            if (zPushedStream$okhttp) {
                http2Connection.pushResetLater$okhttp(streamId, errorCode);
                return;
            }
            Http2Stream http2StreamRemoveStream$okhttp = http2Connection.removeStream$okhttp(streamId);
            if (http2StreamRemoveStream$okhttp != null) {
                http2StreamRemoveStream$okhttp.receiveRstStream(errorCode);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(final boolean clearPrevious, final Settings settings) {
            TaskQueue.execute$default(Http2Connection.this.writerQueue, Http2Connection.this.getConnectionName() + " applyAndAckSettings", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Http2Connection.ReaderRunnable.$r8$lambda$x5ZPvPMHRGx0rtr2nCeHtpvAJmY(this.f$0, clearPrevious, settings);
                }
            }, 6, null);
        }

        public static Unit $r8$lambda$x5ZPvPMHRGx0rtr2nCeHtpvAJmY(ReaderRunnable readerRunnable, boolean z, Settings settings) {
            readerRunnable.applyAndAckSettings(z, settings);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2, types: [T, okhttp3.internal.http2.Settings] */
        /* JADX WARN: Type inference failed for: r15v3 */
        public final void applyAndAckSettings(boolean clearPrevious, Settings settings) {
            ?? r15;
            long initialWindowSize;
            int i;
            Http2Stream[] http2StreamArr;
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Http2Writer writer = Http2Connection.this.getWriter();
            final Http2Connection http2Connection = Http2Connection.this;
            synchronized (writer) {
                synchronized (http2Connection) {
                    try {
                        Settings peerSettings = http2Connection.getPeerSettings();
                        if (clearPrevious) {
                            r15 = settings;
                        } else {
                            Settings settings2 = new Settings();
                            settings2.merge(peerSettings);
                            settings2.merge(settings);
                            r15 = settings2;
                        }
                        objectRef.element = r15;
                        initialWindowSize = ((long) r15.getInitialWindowSize()) - ((long) peerSettings.getInitialWindowSize());
                        http2StreamArr = (initialWindowSize == 0 || http2Connection.getStreams$okhttp().isEmpty()) ? null : (Http2Stream[]) http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                        http2Connection.setPeerSettings((Settings) objectRef.element);
                        TaskQueue.execute$default(http2Connection.settingsListenerQueue, http2Connection.getConnectionName() + " onSettings", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return Http2Connection.ReaderRunnable.applyAndAckSettings$lambda$0$0$1(http2Connection, objectRef);
                            }
                        }, 6, null);
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                try {
                    http2Connection.getWriter().applyAndAckSettings((Settings) objectRef.element);
                } catch (IOException e) {
                    http2Connection.failConnection(e);
                }
                Unit unit2 = Unit.INSTANCE;
            }
            if (http2StreamArr != null) {
                for (Http2Stream http2Stream : http2StreamArr) {
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(initialWindowSize);
                        Unit unit3 = Unit.INSTANCE;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final Unit applyAndAckSettings$lambda$0$0$1(Http2Connection http2Connection, Ref.ObjectRef objectRef) {
            http2Connection.getListener().onSettings(http2Connection, (Settings) objectRef.element);
            return Unit.INSTANCE;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean ack, final int payload1, final int payload2) {
            Http2Connection http2Connection = Http2Connection.this;
            if (!ack) {
                TaskQueue taskQueue = http2Connection.writerQueue;
                String str = Http2Connection.this.getConnectionName() + " ping";
                final Http2Connection http2Connection2 = Http2Connection.this;
                TaskQueue.execute$default(taskQueue, str, 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Http2Connection.ReaderRunnable.$r8$lambda$PtXKxbYp71Z79OduJTrwUeJvS08(http2Connection2, payload1, payload2);
                    }
                }, 6, null);
                return;
            }
            synchronized (http2Connection) {
                try {
                    if (payload1 == 1) {
                        http2Connection.intervalPongsReceived++;
                    } else if (payload1 != 2) {
                        if (payload1 == 3) {
                            http2Connection.awaitPongsReceived++;
                            http2Connection.notifyAll();
                        }
                        Unit unit = Unit.INSTANCE;
                    } else {
                        http2Connection.degradedPongsReceived++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public static Unit $r8$lambda$PtXKxbYp71Z79OduJTrwUeJvS08(Http2Connection http2Connection, int i, int i2) {
            http2Connection.writePing(true, i, i2);
            return Unit.INSTANCE;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int lastGoodStreamId, ErrorCode errorCode, ByteString debugData) {
            int i;
            Object[] array;
            debugData.size();
            Http2Connection http2Connection = Http2Connection.this;
            synchronized (http2Connection) {
                array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                http2Connection.isShutdown = true;
                Unit unit = Unit.INSTANCE;
            }
            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                if (http2Stream.getId() > lastGoodStreamId && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int streamId, long windowSizeIncrement) {
            Http2Connection http2Connection = Http2Connection.this;
            if (streamId == 0) {
                synchronized (http2Connection) {
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + windowSizeIncrement;
                    http2Connection.notifyAll();
                    Unit unit = Unit.INSTANCE;
                }
                return;
            }
            Http2Stream stream = http2Connection.getStream(streamId);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(windowSizeIncrement);
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int streamId, int promisedStreamId, List<Header> requestHeaders) {
            Http2Connection.this.pushRequestLater$okhttp(promisedStreamId, requestHeaders);
        }
    }

    public static Unit $r8$lambda$BmmSWn00knWMLDPauw0U0_44Io0(Http2Connection http2Connection, int i, List list) {
        if (http2Connection.pushObserver.onRequest(i, list)) {
            try {
                http2Connection.writer.rstStream(i, ErrorCode.CANCEL);
                synchronized (http2Connection) {
                    http2Connection.currentPushRequests.remove(Integer.valueOf(i));
                    Unit unit = Unit.INSTANCE;
                }
            } catch (IOException unused) {
            }
        }
        return Unit.INSTANCE;
    }

    public final void pushHeadersLater$okhttp(final int streamId, final List<Header> requestHeaders, final boolean inFinished) {
        TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + streamId + "] onHeaders", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Http2Connection.$r8$lambda$bwIaywCJy9lPsamLQkcJJPFkoMA(this.f$0, streamId, requestHeaders, inFinished);
            }
        }, 6, null);
    }

    public static Unit $r8$lambda$bwIaywCJy9lPsamLQkcJJPFkoMA(Http2Connection http2Connection, int i, List list, boolean z) {
        boolean zOnHeaders = http2Connection.pushObserver.onHeaders(i, list, z);
        if (zOnHeaders) {
            try {
                http2Connection.writer.rstStream(i, ErrorCode.CANCEL);
            } catch (IOException unused) {
            }
        }
        if (zOnHeaders || z) {
            synchronized (http2Connection) {
                http2Connection.currentPushRequests.remove(Integer.valueOf(i));
                Unit unit = Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    public final void pushDataLater$okhttp(final int streamId, BufferedSource source, final int byteCount, final boolean inFinished) {
        final Buffer buffer = new Buffer();
        long j = byteCount;
        source.require(j);
        source.read(buffer, j);
        TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + streamId + "] onData", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Http2Connection.m4822$r8$lambda$VZEphnhi3biD6zkwtmVYJPKUDc(this.f$0, streamId, buffer, byteCount, inFinished);
            }
        }, 6, null);
    }

    /* JADX INFO: renamed from: $r8$lambda$VZEphnhi3biD6zkwtmVY-JPKUDc, reason: not valid java name */
    public static Unit m4822$r8$lambda$VZEphnhi3biD6zkwtmVYJPKUDc(Http2Connection http2Connection, int i, Buffer buffer, int i2, boolean z) {
        try {
            boolean zOnData = http2Connection.pushObserver.onData(i, buffer, i2, z);
            if (zOnData) {
                http2Connection.writer.rstStream(i, ErrorCode.CANCEL);
            }
            if (zOnData || z) {
                synchronized (http2Connection) {
                    http2Connection.currentPushRequests.remove(Integer.valueOf(i));
                    Unit unit = Unit.INSTANCE;
                }
            }
        } catch (IOException unused) {
        }
        return Unit.INSTANCE;
    }

    public final void pushResetLater$okhttp(final int streamId, final ErrorCode errorCode) {
        TaskQueue.execute$default(this.pushQueue, this.connectionName + '[' + streamId + "] onReset", 0L, false, new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Http2Connection.$r8$lambda$IqUIVMAEhaATpKLfgBtHeD0nKgM(this.f$0, streamId, errorCode);
            }
        }, 6, null);
    }

    public static Unit $r8$lambda$IqUIVMAEhaATpKLfgBtHeD0nKgM(Http2Connection http2Connection, int i, ErrorCode errorCode) {
        http2Connection.pushObserver.onReset(i, errorCode);
        synchronized (http2Connection) {
            http2Connection.currentPushRequests.remove(Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "OKHTTP_CLIENT_WINDOW_SIZE", _UrlKt.FRAGMENT_ENCODE_SET, "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "getDEFAULT_SETTINGS", "()Lokhttp3/internal/http2/Settings;", "INTERVAL_PING", "DEGRADED_PING", "AWAIT_PING", "DEGRADED_PONG_TIMEOUT_NS", "okhttp"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(4, 65535);
        settings.set(5, 16384);
        DEFAULT_SETTINGS = settings;
    }
}
