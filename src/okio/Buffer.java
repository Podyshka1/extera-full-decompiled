package okio;

import com.android.dx.io.Opcodes;
import com.android.dx.rop.code.RegisterSpec;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaStatus;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u00ad\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u000f¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0018\u0010)\u001a\u00020#2\u0006\u0010&\u001a\u00020\u000fH\u0087\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u000fH\u0016¢\u0006\u0004\b0\u0010\"J\u000f\u00101\u001a\u00020*H\u0016¢\u0006\u0004\b1\u0010,J\u000f\u00102\u001a\u00020-H\u0016¢\u0006\u0004\b2\u0010/J\u000f\u00103\u001a\u00020\u000fH\u0016¢\u0006\u0004\b3\u0010\"J\u000f\u00104\u001a\u00020\u000fH\u0016¢\u0006\u0004\b4\u0010\"J\u000f\u00105\u001a\u00020\u000fH\u0016¢\u0006\u0004\b5\u0010\"J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u0017\u00107\u001a\u0002062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b7\u00109J\u0017\u0010<\u001a\u00020-2\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b<\u0010=J\u001f\u0010?\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010B\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020AH\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010E\u001a\u00020D2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010GJ\u0017\u0010J\u001a\u00020D2\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u001f\u0010J\u001a\u00020D2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010LJ\u000f\u0010M\u001a\u00020DH\u0016¢\u0006\u0004\bM\u0010FJ\u0017\u0010M\u001a\u00020D2\u0006\u0010N\u001a\u00020\u000fH\u0016¢\u0006\u0004\bM\u0010GJ\u000f\u0010O\u001a\u00020-H\u0016¢\u0006\u0004\bO\u0010/J\u000f\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\u00020P2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\bQ\u0010SJ\u0017\u0010?\u001a\u00020\u00112\u0006\u0010>\u001a\u00020PH\u0016¢\u0006\u0004\b?\u0010TJ'\u0010U\u001a\u00020-2\u0006\u0010>\u001a\u00020P2\u0006\u0010\u001c\u001a\u00020-2\u0006\u0010\u0010\u001a\u00020-H\u0016¢\u0006\u0004\bU\u0010VJ\u0017\u0010U\u001a\u00020-2\u0006\u0010>\u001a\u00020WH\u0016¢\u0006\u0004\bU\u0010XJ\r\u0010Y\u001a\u00020\u0011¢\u0006\u0004\bY\u0010\u0006J\u0017\u0010Z\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\bZ\u0010\u0013J\u0017\u0010\\\u001a\u00020\u00002\u0006\u0010[\u001a\u000206H\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010_\u001a\u00020\u00002\u0006\u0010^\u001a\u00020DH\u0016¢\u0006\u0004\b_\u0010`J'\u0010_\u001a\u00020\u00002\u0006\u0010^\u001a\u00020D2\u0006\u0010a\u001a\u00020-2\u0006\u0010b\u001a\u00020-H\u0016¢\u0006\u0004\b_\u0010cJ\u0017\u0010e\u001a\u00020\u00002\u0006\u0010d\u001a\u00020-H\u0016¢\u0006\u0004\be\u0010fJ\u001f\u0010g\u001a\u00020\u00002\u0006\u0010^\u001a\u00020D2\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bg\u0010hJ/\u0010g\u001a\u00020\u00002\u0006\u0010^\u001a\u00020D2\u0006\u0010a\u001a\u00020-2\u0006\u0010b\u001a\u00020-2\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bg\u0010iJ\u0017\u0010\\\u001a\u00020\u00002\u0006\u0010j\u001a\u00020PH\u0016¢\u0006\u0004\b\\\u0010kJ'\u0010\\\u001a\u00020\u00002\u0006\u0010j\u001a\u00020P2\u0006\u0010\u001c\u001a\u00020-2\u0006\u0010\u0010\u001a\u00020-H\u0016¢\u0006\u0004\b\\\u0010lJ\u0017\u0010\\\u001a\u00020-2\u0006\u0010j\u001a\u00020WH\u0016¢\u0006\u0004\b\\\u0010XJ\u0017\u0010n\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020mH\u0016¢\u0006\u0004\bn\u0010oJ\u001f\u0010\\\u001a\u00020\u00002\u0006\u0010j\u001a\u00020m2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\\\u0010pJ\u0017\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020-H\u0016¢\u0006\u0004\br\u0010fJ\u0017\u0010t\u001a\u00020\u00002\u0006\u0010s\u001a\u00020-H\u0016¢\u0006\u0004\bt\u0010fJ\u0017\u0010v\u001a\u00020\u00002\u0006\u0010u\u001a\u00020-H\u0016¢\u0006\u0004\bv\u0010fJ\u0017\u0010w\u001a\u00020\u00002\u0006\u0010u\u001a\u00020-H\u0016¢\u0006\u0004\bw\u0010fJ\u0017\u0010y\u001a\u00020\u00002\u0006\u0010x\u001a\u00020\u000fH\u0016¢\u0006\u0004\by\u0010zJ\u0017\u0010{\u001a\u00020\u00002\u0006\u0010x\u001a\u00020\u000fH\u0016¢\u0006\u0004\b{\u0010zJ\u0017\u0010|\u001a\u00020\u00002\u0006\u0010x\u001a\u00020\u000fH\u0016¢\u0006\u0004\b|\u0010zJ\u0019\u0010\u0081\u0001\u001a\u00020~2\u0006\u0010}\u001a\u00020-H\u0000¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u001f\u0010\\\u001a\u00020\u00112\u0006\u0010j\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\\\u0010@J \u0010U\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0005\bU\u0010\u0082\u0001J,\u0010\u0085\u0001\u001a\u00020\u000f2\u0006\u0010q\u001a\u00020#2\u0007\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0084\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J-\u0010\u0085\u0001\u001a\u00020\u000f2\u0007\u0010\u0087\u0001\u001a\u0002062\u0007\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0084\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0088\u0001J\u001b\u0010\u008a\u0001\u001a\u00020\u000f2\u0007\u0010\u0089\u0001\u001a\u000206H\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J$\u0010\u008a\u0001\u001a\u00020\u000f2\u0007\u0010\u0089\u0001\u001a\u0002062\u0007\u0010\u0083\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008c\u0001J#\u0010\u008d\u0001\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0007\u0010\u0087\u0001\u001a\u000206H\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J4\u0010\u008d\u0001\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0007\u0010\u0087\u0001\u001a\u0002062\u0007\u0010\u008f\u0001\u001a\u00020-2\u0006\u0010\u0010\u001a\u00020-H\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u0090\u0001J\u0011\u0010\u0091\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0005\b\u0091\u0001\u0010\u0006J\u0011\u0010\u0092\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0092\u0001\u0010\u000eJ\u0011\u0010\u0093\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0005\b\u0093\u0001\u0010\u0006J\u0013\u0010\u0095\u0001\u001a\u00030\u0094\u0001H\u0016¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u001f\u0010\u0099\u0001\u001a\u00020\f2\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0097\u0001H\u0096\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020-H\u0016¢\u0006\u0005\b\u009b\u0001\u0010/J\u0011\u0010\u009c\u0001\u001a\u00020DH\u0016¢\u0006\u0005\b\u009c\u0001\u0010FJ\u000f\u0010\u009d\u0001\u001a\u00020\u0000¢\u0006\u0005\b\u009d\u0001\u0010\u000bJ\u0011\u0010\u009e\u0001\u001a\u00020\u0000H\u0016¢\u0006\u0005\b\u009e\u0001\u0010\u000bJ\u000f\u0010\u009f\u0001\u001a\u000206¢\u0006\u0005\b\u009f\u0001\u00108J\u0018\u0010\u009f\u0001\u001a\u0002062\u0006\u0010\u0010\u001a\u00020-¢\u0006\u0006\b\u009f\u0001\u0010 \u0001J\u001f\u0010£\u0001\u001a\u00030¡\u00012\n\b\u0002\u0010¢\u0001\u001a\u00030¡\u0001H\u0007¢\u0006\u0006\b£\u0001\u0010¤\u0001R\u001b\u0010¥\u0001\u001a\u0004\u0018\u00010~8\u0000@\u0000X\u0081\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R0\u0010¨\u0001\u001a\u00020\u000f2\u0007\u0010§\u0001\u001a\u00020\u000f8\u0007@@X\u0086\u000e¢\u0006\u0016\n\u0006\b¨\u0001\u0010©\u0001\u001a\u0005\b¨\u0001\u0010\"\"\u0005\bª\u0001\u0010\u0013R\u0016\u0010¬\u0001\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b«\u0001\u0010\u000b¨\u0006®\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/nio/channels/ByteChannel;", "<init>", "()V", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "emitCompleteSegments", "()Lokio/Buffer;", _UrlKt.FRAGMENT_ENCODE_SET, "exhausted", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "byteCount", _UrlKt.FRAGMENT_ENCODE_SET, "require", "(J)V", PluginsConstants.REQUEST, "(J)Z", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "out", "offset", "copyTo", "(Lokio/Buffer;JJ)Lokio/Buffer;", "writeTo", "(Ljava/io/OutputStream;J)Lokio/Buffer;", "completeSegmentByteCount", "()J", _UrlKt.FRAGMENT_ENCODE_SET, "readByte", "()B", "pos", "getByte", "(J)B", "get", _UrlKt.FRAGMENT_ENCODE_SET, "readShort", "()S", _UrlKt.FRAGMENT_ENCODE_SET, "readInt", "()I", "readLong", "readShortLe", "readIntLe", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "Lokio/ByteString;", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "sink", "readFully", "(Lokio/Buffer;J)V", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", _UrlKt.FRAGMENT_ENCODE_SET, "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8LineStrict", "limit", "readUtf8CodePoint", _UrlKt.FRAGMENT_ENCODE_SET, "readByteArray", "()[B", "(J)[B", "([B)V", "read", "([BII)I", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "clear", "skip", "byteString", "write", "(Lokio/ByteString;)Lokio/Buffer;", "string", "writeUtf8", "(Ljava/lang/String;)Lokio/Buffer;", "beginIndex", "endIndex", "(Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "writeUtf8CodePoint", "(I)Lokio/Buffer;", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;", "source", "([B)Lokio/Buffer;", "([BII)Lokio/Buffer;", "Lokio/Source;", "writeAll", "(Lokio/Source;)J", "(Lokio/Source;J)Lokio/Buffer;", "b", "writeByte", "s", "writeShort", "i", "writeInt", "writeIntLe", RegisterSpec.PREFIX, "writeLong", "(J)Lokio/Buffer;", "writeDecimalLong", "writeHexadecimalUnsignedLong", "minimumCapacity", "Lokio/Segment;", "writableSegment$okio", "(I)Lokio/Segment;", "writableSegment", "(Lokio/Buffer;J)J", "fromIndex", "toIndex", "indexOf", "(BJJ)J", "bytes", "(Lokio/ByteString;JJ)J", "targetBytes", "indexOfElement", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "flush", "isOpen", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", _UrlKt.FRAGMENT_ENCODE_SET, "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "copy", "clone", "snapshot", "(I)Lokio/ByteString;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readAndWriteUnsafe", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "head", "Lokio/Segment;", "value", "size", "J", "setSize$okio", "getBuffer", "buffer", "UnsafeCursor", "okio"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferedSource.kt\nokio/internal/-BufferedSource\n*L\n1#1,649:1\n88#2:650\n85#2:683\n85#2:685\n73#2:745\n73#2:771\n82#2:810\n76#2:821\n88#2:1014\n73#2:1029\n85#2:1133\n242#3,32:651\n277#3,10:686\n290#3,18:696\n412#3,2:714\n110#3:716\n414#3:717\n112#3,18:718\n311#3,9:736\n320#3,15:746\n338#3,10:761\n348#3,3:772\n346#3,25:775\n374#3,10:800\n384#3:811\n382#3,9:812\n391#3,7:822\n389#3,20:829\n652#3,60:849\n715#3,56:909\n773#3:965\n776#3:966\n777#3,6:968\n787#3,7:974\n797#3,6:984\n805#3,5:990\n837#3,6:995\n847#3:1001\n848#3,11:1003\n859#3,5:1015\n868#3,9:1020\n878#3,61:1030\n603#3:1091\n606#3:1092\n607#3,5:1094\n614#3:1099\n617#3,7:1100\n626#3,20:1107\n418#3:1127\n421#3,5:1128\n426#3,10:1134\n437#3,7:1144\n442#3,2:1151\n943#3:1153\n944#3,87:1155\n1034#3,48:1242\n573#3:1290\n580#3,21:1291\n1085#3,7:1312\n1095#3,7:1319\n1105#3,4:1326\n1112#3,8:1330\n1123#3,10:1338\n1136#3,14:1348\n447#3,35:1362\n513#3,40:1397\n556#3:1437\n558#3,13:1439\n1153#3:1452\n1204#3:1453\n1205#3,39:1455\n1246#3,2:1494\n1248#3,4:1497\n1255#3,3:1501\n1259#3,4:1505\n110#3:1509\n1263#3,22:1510\n112#3,18:1532\n1338#3,2:1550\n1341#3:1553\n110#3:1554\n1342#3,50:1555\n112#3,18:1605\n1401#3,12:1623\n1416#3,32:1635\n1451#3,12:1667\n1466#3,18:1679\n1488#3:1697\n1489#3:1699\n1494#3,34:1700\n1#4:684\n1#4:967\n1#4:1002\n1#4:1093\n1#4:1154\n1#4:1438\n1#4:1454\n1#4:1496\n1#4:1504\n1#4:1552\n1#4:1698\n26#5,3:981\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:650\n197#1:683\n235#1:685\n261#1:745\n264#1:771\n267#1:810\n267#1:821\n337#1:1014\n340#1:1029\n376#1:1133\n181#1:651,32\n252#1:686,10\n255#1:696,18\n258#1:714,2\n258#1:716\n258#1:717\n258#1:718,18\n261#1:736,9\n261#1:746,15\n264#1:761,10\n264#1:772,3\n264#1:775,25\n267#1:800,10\n267#1:811\n267#1:812,9\n267#1:822,7\n267#1:829,20\n279#1:849,60\n282#1:909,56\n284#1:965\n287#1:966\n287#1:968,6\n289#1:974,7\n294#1:984,6\n297#1:990,5\n331#1:995,6\n337#1:1001\n337#1:1003,11\n337#1:1015,5\n340#1:1020,9\n340#1:1030,61\n342#1:1091\n345#1:1092\n345#1:1094,5\n347#1:1099\n350#1:1100,7\n353#1:1107,20\n373#1:1127\n376#1:1128,5\n376#1:1134,10\n378#1:1144,7\n381#1:1151,2\n386#1:1153\n386#1:1155,87\n389#1:1242,48\n412#1:1290\n418#1:1291,21\n439#1:1312,7\n443#1:1319,7\n445#1:1326,4\n447#1:1330,8\n451#1:1338,10\n455#1:1348,14\n459#1:1362,35\n462#1:1397,40\n465#1:1437\n465#1:1439,13\n467#1:1452\n467#1:1453\n467#1:1455,39\n469#1:1494,2\n469#1:1497,4\n480#1:1501,3\n480#1:1505,4\n480#1:1509\n480#1:1510,22\n480#1:1532,18\n496#1:1550,2\n496#1:1553\n496#1:1554\n496#1:1555,50\n496#1:1605,18\n506#1:1623,12\n576#1:1635,32\n578#1:1667,12\n586#1:1679,18\n594#1:1697\n594#1:1699\n596#1:1700,34\n287#1:967\n337#1:1002\n345#1:1093\n386#1:1154\n465#1:1438\n467#1:1454\n469#1:1496\n480#1:1504\n496#1:1552\n594#1:1698\n291#1:981,3\n*E\n"})
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    @JvmField
    public Segment head;
    private long size;

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @JvmName(name = "size")
    /* JADX INFO: renamed from: size, reason: from getter */
    public final long getSize() {
        return this.size;
    }

    public final void setSize$okio(long j) {
        this.size = j;
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.outputStream.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @Override // java.io.OutputStream
            public void write(int b2) {
                Buffer.this.writeByte(b2);
            }

            @Override // java.io.OutputStream
            public void write(byte[] data, int offset, int byteCount) {
                Buffer.this.write(data, offset, byteCount);
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }
        };
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    public long indexOfElement(ByteString targetBytes, long fromIndex) {
        int i;
        int i2;
        long size = 0;
        if (fromIndex >= 0) {
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            if (getSize() - fromIndex < fromIndex) {
                size = getSize();
                while (size > fromIndex) {
                    segment = segment.prev;
                    size -= (long) (segment.limit - segment.pos);
                }
                if (targetBytes.size() == 2) {
                    byte b2 = targetBytes.getByte(0);
                    byte b3 = targetBytes.getByte(1);
                    while (size < getSize()) {
                        byte[] bArr = segment.data;
                        i = (int) ((((long) segment.pos) + fromIndex) - size);
                        int i3 = segment.limit;
                        while (i < i3) {
                            byte b4 = bArr[i];
                            if (b4 == b2 || b4 == b3) {
                                i2 = segment.pos;
                            } else {
                                i++;
                            }
                        }
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        fromIndex = size;
                    }
                } else {
                    byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
                    while (size < getSize()) {
                        byte[] bArr2 = segment.data;
                        i = (int) ((((long) segment.pos) + fromIndex) - size);
                        int i4 = segment.limit;
                        while (i < i4) {
                            byte b5 = bArr2[i];
                            for (byte b6 : bArrInternalArray$okio) {
                                if (b5 == b6) {
                                    i2 = segment.pos;
                                }
                            }
                            i++;
                        }
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        fromIndex = size;
                    }
                }
                return -1L;
            }
            while (true) {
                long j = ((long) (segment.limit - segment.pos)) + size;
                if (j > fromIndex) {
                    break;
                }
                segment = segment.next;
                size = j;
            }
            if (targetBytes.size() == 2) {
                byte b7 = targetBytes.getByte(0);
                byte b8 = targetBytes.getByte(1);
                while (size < getSize()) {
                    byte[] bArr3 = segment.data;
                    i = (int) ((((long) segment.pos) + fromIndex) - size);
                    int i5 = segment.limit;
                    while (i < i5) {
                        byte b9 = bArr3[i];
                        if (b9 == b7 || b9 == b8) {
                            i2 = segment.pos;
                        } else {
                            i++;
                        }
                    }
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    fromIndex = size;
                }
            } else {
                byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
                while (size < getSize()) {
                    byte[] bArr4 = segment.data;
                    i = (int) ((((long) segment.pos) + fromIndex) - size);
                    int i6 = segment.limit;
                    while (i < i6) {
                        byte b10 = bArr4[i];
                        for (byte b11 : bArrInternalArray$okio2) {
                            if (b10 == b11) {
                                i2 = segment.pos;
                            }
                        }
                        i++;
                    }
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    fromIndex = size;
                }
            }
            return -1L;
            return ((long) (i - i2)) + size;
        }
        Buffer$$ExternalSyntheticBUOutline3.m966m("fromIndex < 0: ", fromIndex);
        return 0L;
    }

    @Override // okio.BufferedSource
    public void require(long byteCount) throws EOFException {
        if (this.size >= byteCount) {
            return;
        }
        Buffer$$ExternalSyntheticBUOutline1.m964m();
    }

    @Override // okio.BufferedSource
    public boolean request(long byteCount) {
        return this.size >= byteCount;
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    /* JADX INFO: renamed from: okio.Buffer$inputStream$1 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"okio/Buffer$inputStream$1", "Ljava/io/InputStream;", "read", _UrlKt.FRAGMENT_ENCODE_SET, "sink", _UrlKt.FRAGMENT_ENCODE_SET, "offset", "byteCount", "available", "close", _UrlKt.FRAGMENT_ENCODE_SET, "toString", _UrlKt.FRAGMENT_ENCODE_SET, "okio"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$inputStream$1\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,649:1\n73#2:650\n85#2:651\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$inputStream$1\n*L\n126#1:650\n136#1:651\n*E\n"})
    public static final class C25711 extends InputStream implements InputStreamRetargetInterface {
        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
        public /* synthetic */ long transferTo(OutputStream outputStream) {
            return DesugarInputStream.transferTo(this, outputStream);
        }

        public C25711() {
        }

        @Override // java.io.InputStream
        public int read() {
            if (Buffer.this.getSize() > 0) {
                return Buffer.this.readByte() & UByte.MAX_VALUE;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] sink, int offset, int byteCount) {
            return Buffer.this.read(sink, offset, byteCount);
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(Buffer.this.getSize(), 2147483647L);
        }

        public String toString() {
            return Buffer.this + ".inputStream()";
        }
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new C25711();
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = buffer.size;
        }
        return buffer.writeTo(outputStream, j);
    }

    @JvmOverloads
    public final Buffer writeTo(OutputStream out, long byteCount) throws IOException {
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, byteCount);
        Segment segment = this.head;
        long j = byteCount;
        while (j > 0) {
            int iMin = (int) Math.min(j, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, iMin);
            int i = segment.pos + iMin;
            segment.pos = i;
            long j2 = iMin;
            this.size -= j2;
            j -= j2;
            if (i == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    public final Buffer copyTo(Buffer out, long offset, long byteCount) {
        long j = offset;
        SegmentedByteString.checkOffsetAndCount(getSize(), j, byteCount);
        if (byteCount != 0) {
            out.setSize$okio(out.getSize() + byteCount);
            Segment segment = this.head;
            while (true) {
                int i = segment.limit;
                int i2 = segment.pos;
                if (j < i - i2) {
                    break;
                }
                j -= (long) (i - i2);
                segment = segment.next;
            }
            Segment segment2 = segment;
            long j2 = byteCount;
            while (j2 > 0) {
                Segment segmentSharedCopy = segment2.sharedCopy();
                int i3 = segmentSharedCopy.pos + ((int) j);
                segmentSharedCopy.pos = i3;
                segmentSharedCopy.limit = Math.min(i3 + ((int) j2), segmentSharedCopy.limit);
                Segment segment3 = out.head;
                if (segment3 == null) {
                    segmentSharedCopy.prev = segmentSharedCopy;
                    segmentSharedCopy.next = segmentSharedCopy;
                    out.head = segmentSharedCopy;
                } else {
                    segment3.prev.push(segmentSharedCopy);
                }
                j2 -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
                segment2 = segment2.next;
                j = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return SegmentedByteString.reverseBytes(readLong());
    }

    public final long completeSegmentByteCount() {
        long size = getSize();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head.prev;
        int i = segment.limit;
        return (i >= 8192 || !segment.owner) ? size : size - ((long) (i - segment.pos));
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (getSize() == 0) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return (byte) 0;
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        int i3 = i + 1;
        byte b2 = segment.data[i];
        setSize$okio(getSize() - 1);
        if (i3 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return b2;
        }
        segment.pos = i3;
        return b2;
    }

    public String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public String readUtf8(long byteCount) throws EOFException {
        return readString(byteCount, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        return readString(this.size, charset);
    }

    public String readString(long byteCount, Charset charset) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            Buffer$$ExternalSyntheticBUOutline3.m966m("byteCount: ", byteCount);
            return null;
        }
        if (this.size < byteCount) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return null;
        }
        if (byteCount == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        Segment segment = this.head;
        int i = segment.pos;
        if (((long) i) + byteCount > segment.limit) {
            return new String(readByteArray(byteCount), charset);
        }
        int i2 = (int) byteCount;
        String str = new String(segment.data, i, i2, charset);
        int i3 = segment.pos + i2;
        segment.pos = i3;
        this.size -= byteCount;
        if (i3 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (getSize() < 2) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return (short) 0;
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 2) {
            return (short) ((readByte() & UByte.MAX_VALUE) | ((readByte() & UByte.MAX_VALUE) << 8));
        }
        byte[] bArr = segment.data;
        int i3 = i + 1;
        int i4 = (bArr[i] & UByte.MAX_VALUE) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & UByte.MAX_VALUE) | i4;
        setSize$okio(getSize() - 2);
        if (i5 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i5;
        }
        return (short) i6;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(LongCompanionObject.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (getSize() < 4) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return 0;
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 4) {
            return (readByte() & UByte.MAX_VALUE) | ((readByte() & UByte.MAX_VALUE) << 24) | ((readByte() & UByte.MAX_VALUE) << 16) | ((readByte() & UByte.MAX_VALUE) << 8);
        }
        byte[] bArr = segment.data;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i] & UByte.MAX_VALUE) << 24) | ((bArr[i + 2] & UByte.MAX_VALUE) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & UByte.MAX_VALUE) | i4;
        setSize$okio(getSize() - 4);
        if (i5 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return i6;
        }
        segment.pos = i5;
        return i6;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, iMin);
        int i = segment.pos + iMin;
        segment.pos = i;
        this.size -= (long) iMin;
        if (i == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (getSize() < 8) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return 0L;
        }
        Segment segment = this.head;
        int i = segment.pos;
        int i2 = segment.limit;
        if (i2 - i < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = segment.data;
        int i3 = i + 7;
        long j = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
        int i4 = i + 8;
        long j2 = j | (((long) bArr[i3]) & 255);
        setSize$okio(getSize() - 8);
        if (i4 == i2) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return j2;
        }
        segment.pos = i4;
        return j2;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String string) {
        return writeUtf8(string, 0, string.length());
    }

    public Buffer writeString(String string, Charset charset) {
        return writeString(string, 0, string.length(), charset);
    }

    public Buffer writeString(String string, int beginIndex, int endIndex, Charset charset) {
        if (beginIndex < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m976m("beginIndex < 0: ", beginIndex);
            return null;
        }
        if (endIndex < beginIndex) {
            Utf8$$ExternalSyntheticBUOutline0.m975m("endIndex < beginIndex: ", endIndex, " < ", beginIndex);
            return null;
        }
        if (endIndex > string.length()) {
            Utf8$$ExternalSyntheticBUOutline0.m975m("endIndex > string.length: ", endIndex, " > ", string.length());
            return null;
        }
        if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
            return writeUtf8(string, beginIndex, endIndex);
        }
        byte[] bytes = string.substring(beginIndex, endIndex).getBytes(charset);
        return write(bytes, 0, bytes.length);
    }

    @JvmName(name = "getByte")
    public final byte getByte(long pos) {
        SegmentedByteString.checkOffsetAndCount(getSize(), pos, 1L);
        Segment segment = this.head;
        segment.getClass();
        if (getSize() - pos < pos) {
            long size = getSize();
            while (size > pos) {
                segment = segment.prev;
                size -= (long) (segment.limit - segment.pos);
            }
            return segment.data[(int) ((((long) segment.pos) + pos) - size)];
        }
        long j = 0;
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            long j2 = ((long) (i - i2)) + j;
            if (j2 <= pos) {
                segment = segment.next;
                j = j2;
            } else {
                return segment.data[(int) ((((long) i2) + pos) - j)];
            }
        }
    }

    public final void clear() throws EOFException {
        skip(getSize());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        int iRemaining = source.remaining();
        int i = iRemaining;
        while (i > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i, 8192 - segmentWritableSegment$okio.limit);
            source.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += (long) iRemaining;
        return iRemaining;
    }

    @Override // okio.BufferedSource
    public void skip(long byteCount) throws EOFException {
        while (byteCount > 0) {
            Segment segment = this.head;
            if (segment != null) {
                int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
                long j = iMin;
                setSize$okio(getSize() - j);
                byteCount -= j;
                int i = segment.pos + iMin;
                segment.pos = i;
                if (i == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                Buffer$$ExternalSyntheticBUOutline1.m964m();
                return;
            }
        }
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeDecimalLong(long v) {
        boolean z;
        if (v != 0) {
            if (v < 0) {
                v = -v;
                if (v < 0) {
                    return writeUtf8("-9223372036854775808");
                }
                z = true;
            } else {
                z = false;
            }
            int iCountDigitsIn = okio.internal.Buffer.countDigitsIn(v);
            if (z) {
                iCountDigitsIn++;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(iCountDigitsIn);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i = segmentWritableSegment$okio.limit + iCountDigitsIn;
            while (v != 0) {
                i--;
                bArr[i] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (v % 10)];
                v /= 10;
            }
            if (z) {
                bArr[i - 1] = 45;
            }
            segmentWritableSegment$okio.limit += iCountDigitsIn;
            setSize$okio(getSize() + ((long) iCountDigitsIn));
            return this;
        }
        return writeByte(48);
    }

    public Buffer writeIntLe(int i) {
        return writeInt(SegmentedByteString.reverseBytes(i));
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes, long fromIndex, long toIndex) {
        return okio.internal.Buffer.commonIndexOf$default(this, bytes, fromIndex, toIndex, 0, 0, 24, null);
    }

    public long indexOfElement(ByteString targetBytes) {
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, ByteString bytes) {
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public Timeout getThis$0() {
        return Timeout.NONE;
    }

    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long v) {
        if (v == 0) {
            return writeByte(48);
        }
        long j = (v >>> 1) | v;
        long j2 = j | (j >>> 2);
        long j3 = j2 | (j2 >>> 4);
        long j4 = j3 | (j3 >>> 8);
        long j5 = j4 | (j4 >>> 16);
        long j6 = j5 | (j5 >>> 32);
        long j7 = j6 - ((j6 >>> 1) & 6148914691236517205L);
        long j8 = ((j7 >>> 2) & 3689348814741910323L) + (j7 & 3689348814741910323L);
        long j9 = ((j8 >>> 4) + j8) & 1085102592571150095L;
        long j10 = j9 + (j9 >>> 8);
        long j11 = j10 + (j10 >>> 16);
        int i = (int) ((((j11 & 63) + ((j11 >>> 32) & 63)) + 3) / 4);
        Segment segmentWritableSegment$okio = writableSegment$okio(i);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & v)];
            v >>>= 4;
        }
        segmentWritableSegment$okio.limit += i;
        setSize$okio(getSize() + ((long) i));
        return this;
    }

    public final Segment writableSegment$okio(int minimumCapacity) {
        if (minimumCapacity < 1 || minimumCapacity > 8192) {
            f$$ExternalSyntheticBUOutline1.m215m("unexpected capacity");
            return null;
        }
        Segment segment = this.head;
        if (segment == null) {
            Segment segmentTake = SegmentPool.take();
            this.head = segmentTake;
            segmentTake.prev = segmentTake;
            segmentTake.next = segmentTake;
            return segmentTake;
        }
        Segment segment2 = segment.prev;
        return (segment2.limit + minimumCapacity > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] source) {
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] source, int offset, int byteCount) {
        long j = byteCount;
        SegmentedByteString.checkOffsetAndCount(source.length, offset, j);
        int i = byteCount + offset;
        while (offset < i) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i - offset, 8192 - segmentWritableSegment$okio.limit);
            int i2 = offset + iMin;
            ArraysKt.copyInto(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, offset, i2);
            segmentWritableSegment$okio.limit += iMin;
            offset = i2;
        }
        setSize$okio(getSize() + j);
        return this;
    }

    public String toString() {
        return snapshot().toString();
    }

    public Buffer clone() {
        return copy();
    }

    @JvmOverloads
    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        return readByteArray(getSize());
    }

    public byte[] readByteArray(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            Buffer$$ExternalSyntheticBUOutline3.m966m("byteCount: ", byteCount);
            return null;
        }
        if (getSize() < byteCount) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return null;
        }
        byte[] bArr = new byte[(int) byteCount];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) throws EOFException {
        int i = 0;
        while (i < sink.length) {
            int i2 = read(sink, i, sink.length - i);
            if (i2 == -1) {
                Buffer$$ExternalSyntheticBUOutline1.m964m();
                return;
            }
            i += i2;
        }
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0003R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R$\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0016\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010\"¨\u0006$"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "next", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "offset", "seek", "(J)I", "newSize", "resizeBuffer", "(J)J", _UrlKt.FRAGMENT_ENCODE_SET, "close", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", _UrlKt.FRAGMENT_ENCODE_SET, "readWrite", "Z", "Lokio/Segment;", "segment", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "J", _UrlKt.FRAGMENT_ENCODE_SET, "data", "[B", "start", "I", "end", "okio"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,649:1\n1549#2:650\n1550#2:652\n1554#2:653\n1555#2,68:655\n1626#2:723\n1627#2,32:725\n1659#2,18:758\n1680#2:776\n1681#2,18:778\n1703#2:796\n1705#2,7:798\n1#3:651\n1#3:654\n1#3:724\n1#3:777\n1#3:797\n85#4:757\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n636#1:650\n636#1:652\n638#1:653\n638#1:655,68\n640#1:723\n640#1:725,32\n640#1:758,18\n642#1:776\n642#1:778,18\n645#1:796\n645#1:798,7\n636#1:651\n638#1:654\n640#1:724\n642#1:777\n645#1:797\n640#1:757\n*E\n"})
    public static final class UnsafeCursor implements Closeable {

        @JvmField
        public Buffer buffer;

        @JvmField
        public byte[] data;

        @JvmField
        public boolean readWrite;
        private Segment segment;

        @JvmField
        public long offset = -1;

        @JvmField
        public int start = -1;

        @JvmField
        public int end = -1;

        /* JADX INFO: renamed from: getSegment$okio, reason: from getter */
        public final Segment getSegment() {
            return this.segment;
        }

        public final void setSegment$okio(Segment segment) {
            this.segment = segment;
        }

        public final int next() {
            if (this.offset == this.buffer.getSize()) {
                Segment$$ExternalSyntheticBUOutline1.m973m("no more bytes");
                return 0;
            }
            long j = this.offset;
            return j == -1 ? seek(0L) : seek(j + ((long) (this.end - this.start)));
        }

        public final int seek(long offset) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("not attached to a buffer");
                return 0;
            }
            if (offset < -1 || offset > buffer.getSize()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + offset + " > size=" + buffer.getSize());
            }
            if (offset == -1 || offset == buffer.getSize()) {
                setSegment$okio(null);
                this.offset = offset;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long size = buffer.getSize();
            Segment segment = buffer.head;
            long j = 0;
            if (getSegment() != null) {
                long j2 = this.offset - ((long) (this.start - getSegment().pos));
                if (j2 > offset) {
                    segmentPush = segment;
                    segment = getSegment();
                    size = j2;
                } else {
                    segmentPush = getSegment();
                    j = j2;
                }
            } else {
                segmentPush = segment;
            }
            if (size - offset > offset - j) {
                while (true) {
                    int i = segmentPush.limit;
                    int i2 = segmentPush.pos;
                    if (offset < ((long) (i - i2)) + j) {
                        break;
                    }
                    j += (long) (i - i2);
                    segmentPush = segmentPush.next;
                }
            } else {
                while (size > offset) {
                    segment = segment.prev;
                    size -= (long) (segment.limit - segment.pos);
                }
                j = size;
                segmentPush = segment;
            }
            if (this.readWrite && segmentPush.shared) {
                Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                if (buffer.head == segmentPush) {
                    buffer.head = segmentUnsharedCopy;
                }
                segmentPush = segmentPush.push(segmentUnsharedCopy);
                segmentPush.prev.pop();
            }
            setSegment$okio(segmentPush);
            this.offset = offset;
            this.data = segmentPush.data;
            int i3 = segmentPush.pos + ((int) (offset - j));
            this.start = i3;
            int i4 = segmentPush.limit;
            this.end = i4;
            return i4 - i3;
        }

        public final long resizeBuffer(long newSize) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("not attached to a buffer");
                return 0L;
            }
            if (!this.readWrite) {
                Segment$$ExternalSyntheticBUOutline1.m973m("resizeBuffer() only permitted for read/write buffers");
                return 0L;
            }
            long size = buffer.getSize();
            if (newSize <= size) {
                if (newSize < 0) {
                    Buffer$$ExternalSyntheticBUOutline3.m966m("newSize < 0: ", newSize);
                    return 0L;
                }
                long j = size - newSize;
                while (true) {
                    if (j <= 0) {
                        break;
                    }
                    Segment segment = buffer.head.prev;
                    int i = segment.limit;
                    long j2 = i - segment.pos;
                    if (j2 <= j) {
                        buffer.head = segment.pop();
                        SegmentPool.recycle(segment);
                        j -= j2;
                    } else {
                        segment.limit = i - ((int) j);
                        break;
                    }
                }
                setSegment$okio(null);
                this.offset = newSize;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (newSize > size) {
                long j3 = newSize - size;
                boolean z = true;
                while (j3 > 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                    int iMin = (int) Math.min(j3, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j3 -= (long) iMin;
                    if (z) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i2 = segmentWritableSegment$okio.limit;
                        this.start = i2 - iMin;
                        this.end = i2;
                        z = false;
                    }
                }
            }
            buffer.setSize$okio(newSize);
            return size;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("not attached to a buffer");
                return;
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }
    }

    public int read(byte[] sink, int offset, int byteCount) {
        SegmentedByteString.checkOffsetAndCount(sink.length, offset, byteCount);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteCount, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i = segment.pos;
        ArraysKt.copyInto(bArr, sink, offset, i, i + iMin);
        segment.pos += iMin;
        setSize$okio(getSize() - ((long) iMin));
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
    
        r0 = new okio.Buffer().writeDecimalLong(r8).writeByte((int) r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (r2 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        r0.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
    
        okio.Buffer$$ExternalSyntheticBUOutline0.m963m("Number too large: ", r0.readUtf8());
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        return r17;
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readDecimalLong() throws EOFException {
        long j;
        long j2 = 0;
        if (getSize() == 0) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return 0L;
        }
        int i = 0;
        boolean z = false;
        long j3 = 0;
        long j4 = -7;
        boolean z2 = false;
        loop0: while (true) {
            Segment segment = this.head;
            byte[] bArr = segment.data;
            int i2 = segment.pos;
            int i3 = segment.limit;
            while (i2 < i3) {
                byte b2 = bArr[i2];
                if (b2 < 48 || b2 > 57) {
                    j = j2;
                    if (b2 != 45 || i != 0) {
                        z2 = true;
                        break;
                    }
                    j4--;
                    z = true;
                } else {
                    int i4 = 48 - b2;
                    j = j2;
                    if (j3 < -922337203685477580L || (j3 == -922337203685477580L && i4 < j4)) {
                        break loop0;
                    }
                    j3 = (j3 * 10) + ((long) i4);
                }
                i2++;
                i++;
                j2 = j;
            }
            j = j2;
            if (i2 == i3) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i2;
            }
            if (z2 || this.head == null) {
                break;
            }
            j2 = j;
        }
        setSize$okio(getSize() - ((long) i));
        if (i >= (z ? 2 : 1)) {
            return z ? j3 : -j3;
        }
        if (getSize() == j) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return 0L;
        }
        throw new NumberFormatException((z ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + SegmentedByteString.toHexString(getByte(j)));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0082 A[EDGE_INSN: B:43:0x0082->B:37:0x0082 BREAK  A[LOOP:0: B:5:0x000d->B:45:?], SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readHexadecimalUnsignedLong() throws EOFException {
        int i;
        if (getSize() == 0) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return 0L;
        }
        int i2 = 0;
        boolean z = false;
        long j = 0;
        do {
            Segment segment = this.head;
            byte[] bArr = segment.data;
            int i3 = segment.pos;
            int i4 = segment.limit;
            while (i3 < i4) {
                byte b2 = bArr[i3];
                if (b2 >= 48 && b2 <= 57) {
                    i = b2 - 48;
                } else if (b2 >= 97 && b2 <= 102) {
                    i = b2 - 87;
                } else if (b2 >= 65 && b2 <= 70) {
                    i = b2 - 55;
                } else {
                    if (i2 == 0) {
                        Buffer$$ExternalSyntheticBUOutline0.m963m("Expected leading [0-9a-fA-F] character but was 0x", SegmentedByteString.toHexString(b2));
                        return 0L;
                    }
                    z = true;
                    if (i3 != i4) {
                        this.head = segment.pop();
                        SegmentPool.recycle(segment);
                    } else {
                        segment.pos = i3;
                    }
                    if (!z) {
                        break;
                    }
                }
                if (((-1152921504606846976L) & j) != 0) {
                    Buffer$$ExternalSyntheticBUOutline0.m963m("Number too large: ", new Buffer().writeHexadecimalUnsignedLong(j).writeByte((int) b2).readUtf8());
                    return 0L;
                }
                j = (j << 4) | ((long) i);
                i3++;
                i2++;
            }
            if (i3 != i4) {
            }
            if (!z) {
            }
        } while (this.head != null);
        setSize$okio(getSize() - ((long) i2));
        return j;
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return readByteString(getSize());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            Buffer$$ExternalSyntheticBUOutline3.m966m("byteCount: ", byteCount);
            return null;
        }
        if (getSize() < byteCount) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return null;
        }
        if (byteCount >= MediaStatus.COMMAND_EDIT_TRACKS) {
            ByteString byteStringSnapshot = snapshot((int) byteCount);
            skip(byteCount);
            return byteStringSnapshot;
        }
        return new ByteString(readByteArray(byteCount));
    }

    @Override // okio.BufferedSource
    public int select(Options options) throws EOFException {
        int iSelectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long byteCount) throws EOFException {
        if (getSize() < byteCount) {
            sink.write(this, getSize());
            Buffer$$ExternalSyntheticBUOutline1.m964m();
        } else {
            sink.write(this, byteCount);
        }
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        long size = getSize();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (limit < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m966m("limit < 0: ", limit);
            return null;
        }
        long j = LongCompanionObject.MAX_VALUE;
        if (limit != LongCompanionObject.MAX_VALUE) {
            j = limit + 1;
        }
        long j2 = j;
        long jIndexOf = indexOf((byte) 10, 0L, j2);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (j2 < getSize() && getByte(j2 - 1) == 13 && getByte(j2) == 10) {
            return okio.internal.Buffer.readUtf8Line(this, j2);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32L, getSize()));
        throw new EOFException("\\n not found: limit=" + Math.min(getSize(), limit) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (getSize() == 0) {
            Buffer$$ExternalSyntheticBUOutline1.m964m();
            return 0;
        }
        byte b2 = getByte(0L);
        if ((b2 & ByteCompanionObject.MIN_VALUE) == 0) {
            i = b2 & ByteCompanionObject.MAX_VALUE;
            i3 = 0;
            i2 = 1;
        } else if ((b2 & 224) == 192) {
            i = b2 & 31;
            i2 = 2;
            i3 = 128;
        } else if ((b2 & 240) == 224) {
            i = b2 & 15;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((b2 & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i = b2 & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (getSize() < j) {
            throw new EOFException("size < " + i2 + ": " + getSize() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b2) + ')');
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte b3 = getByte(j2);
            if ((b3 & 192) != 128) {
                skip(j2);
                return 65533;
            }
            i = (i << 6) | (b3 & 63);
        }
        skip(j);
        if (i > 1114111) {
            return 65533;
        }
        if ((55296 > i || i >= 57344) && i >= i3) {
            return i;
        }
        return 65533;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String string, int beginIndex, int endIndex) {
        char cCharAt;
        if (beginIndex < 0) {
            Utf8$$ExternalSyntheticBUOutline1.m976m("beginIndex < 0: ", beginIndex);
            return null;
        }
        if (endIndex < beginIndex) {
            Utf8$$ExternalSyntheticBUOutline0.m975m("endIndex < beginIndex: ", endIndex, " < ", beginIndex);
            return null;
        }
        if (endIndex > string.length()) {
            Utf8$$ExternalSyntheticBUOutline0.m975m("endIndex > string.length: ", endIndex, " > ", string.length());
            return null;
        }
        while (beginIndex < endIndex) {
            char cCharAt2 = string.charAt(beginIndex);
            if (cCharAt2 < 128) {
                Segment segmentWritableSegment$okio = writableSegment$okio(1);
                byte[] bArr = segmentWritableSegment$okio.data;
                int i = segmentWritableSegment$okio.limit - beginIndex;
                int iMin = Math.min(endIndex, 8192 - i);
                int i2 = beginIndex + 1;
                bArr[beginIndex + i] = (byte) cCharAt2;
                while (true) {
                    beginIndex = i2;
                    if (beginIndex >= iMin || (cCharAt = string.charAt(beginIndex)) >= 128) {
                        break;
                    }
                    i2 = beginIndex + 1;
                    bArr[beginIndex + i] = (byte) cCharAt;
                }
                int i3 = segmentWritableSegment$okio.limit;
                int i4 = (i + beginIndex) - i3;
                segmentWritableSegment$okio.limit = i3 + i4;
                setSize$okio(getSize() + ((long) i4));
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                    byte[] bArr2 = segmentWritableSegment$okio2.data;
                    int i5 = segmentWritableSegment$okio2.limit;
                    bArr2[i5] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i5 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio2.limit = i5 + 2;
                    setSize$okio(getSize() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentWritableSegment$okio3 = writableSegment$okio(3);
                    byte[] bArr3 = segmentWritableSegment$okio3.data;
                    int i6 = segmentWritableSegment$okio3.limit;
                    bArr3[i6] = (byte) ((cCharAt2 >> '\f') | Opcodes.SHL_INT_LIT8);
                    bArr3[i6 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i6 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio3.limit = i6 + 3;
                    setSize$okio(getSize() + 3);
                } else {
                    int i7 = beginIndex + 1;
                    char cCharAt3 = i7 < endIndex ? string.charAt(i7) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        writeByte(63);
                        beginIndex = i7;
                    } else {
                        int i8 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(4);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i9 = segmentWritableSegment$okio4.limit;
                        bArr4[i9] = (byte) ((i8 >> 18) | 240);
                        bArr4[i9 + 1] = (byte) (((i8 >> 12) & 63) | 128);
                        bArr4[i9 + 2] = (byte) (((i8 >> 6) & 63) | 128);
                        bArr4[i9 + 3] = (byte) ((i8 & 63) | 128);
                        segmentWritableSegment$okio4.limit = i9 + 4;
                        setSize$okio(getSize() + 4);
                        beginIndex += 2;
                    }
                }
                beginIndex++;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8CodePoint(int codePoint) {
        if (codePoint < 128) {
            writeByte(codePoint);
            return this;
        }
        if (codePoint < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i = segmentWritableSegment$okio.limit;
            bArr[i] = (byte) ((codePoint >> 6) | 192);
            bArr[i + 1] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio.limit = i + 2;
            setSize$okio(getSize() + 2);
            return this;
        }
        if (55296 <= codePoint && codePoint < 57344) {
            writeByte(63);
            return this;
        }
        if (codePoint < 65536) {
            Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i2 = segmentWritableSegment$okio2.limit;
            bArr2[i2] = (byte) ((codePoint >> 12) | Opcodes.SHL_INT_LIT8);
            bArr2[i2 + 1] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr2[i2 + 2] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio2.limit = i2 + 3;
            setSize$okio(getSize() + 3);
            return this;
        }
        if (codePoint <= 1114111) {
            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i3 = segmentWritableSegment$okio3.limit;
            bArr3[i3] = (byte) ((codePoint >> 18) | 240);
            bArr3[i3 + 1] = (byte) (((codePoint >> 12) & 63) | 128);
            bArr3[i3 + 2] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr3[i3 + 3] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio3.limit = i3 + 4;
            setSize$okio(getSize() + 4);
            return this;
        }
        Buffer$$ExternalSyntheticBUOutline4.m967m("Unexpected code point: 0x", SegmentedByteString.toHexString(codePoint));
        return null;
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) {
        long j = 0;
        while (true) {
            long j2 = source.read(this, MediaStatus.COMMAND_PLAYBACK_RATE);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    public Buffer write(Source source, long byteCount) {
        while (byteCount > 0) {
            long j = source.read(this, byteCount);
            if (j == -1) {
                Buffer$$ExternalSyntheticBUOutline1.m964m();
                return null;
            }
            byteCount -= j;
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeByte(int b2) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i + 1;
        bArr[i] = (byte) b2;
        setSize$okio(getSize() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeShort(int s) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        bArr[i] = (byte) ((s >>> 8) & 255);
        bArr[i + 1] = (byte) (s & 255);
        segmentWritableSegment$okio.limit = i + 2;
        setSize$okio(getSize() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeInt(int i) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i2 = segmentWritableSegment$okio.limit;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        segmentWritableSegment$okio.limit = i2 + 4;
        setSize$okio(getSize() + 4);
        return this;
    }

    public Buffer writeLong(long v) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i = segmentWritableSegment$okio.limit;
        bArr[i] = (byte) ((v >>> 56) & 255);
        bArr[i + 1] = (byte) ((v >>> 48) & 255);
        bArr[i + 2] = (byte) ((v >>> 40) & 255);
        bArr[i + 3] = (byte) ((v >>> 32) & 255);
        bArr[i + 4] = (byte) ((v >>> 24) & 255);
        bArr[i + 5] = (byte) ((v >>> 16) & 255);
        bArr[i + 6] = (byte) ((v >>> 8) & 255);
        bArr[i + 7] = (byte) (v & 255);
        segmentWritableSegment$okio.limit = i + 8;
        setSize$okio(getSize() + 8);
        return this;
    }

    @Override // okio.Sink
    public void write(Buffer source, long byteCount) {
        if (source == this) {
            f$$ExternalSyntheticBUOutline1.m215m("source == this");
            return;
        }
        SegmentedByteString.checkOffsetAndCount(source.getSize(), 0L, byteCount);
        while (byteCount > 0) {
            Segment segment = source.head;
            if (byteCount < segment.limit - segment.pos) {
                Segment segment2 = this.head;
                Segment segment3 = segment2 != null ? segment2.prev : null;
                if (segment3 != null && segment3.owner) {
                    if ((((long) segment3.limit) + byteCount) - ((long) (segment3.shared ? 0 : segment3.pos)) <= MediaStatus.COMMAND_PLAYBACK_RATE) {
                        segment.writeTo(segment3, (int) byteCount);
                        source.setSize$okio(source.getSize() - byteCount);
                        setSize$okio(getSize() + byteCount);
                        return;
                    }
                }
                source.head = segment.split((int) byteCount);
            }
            Segment segment4 = source.head;
            long j = segment4.limit - segment4.pos;
            source.head = segment4.pop();
            Segment segment5 = this.head;
            if (segment5 == null) {
                this.head = segment4;
                segment4.prev = segment4;
                segment4.next = segment4;
            } else {
                segment5.prev.push(segment4).compact();
            }
            source.setSize$okio(source.getSize() - j);
            setSize$okio(getSize() + j);
            byteCount -= j;
        }
    }

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) {
        if (byteCount < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m966m("byteCount < 0: ", byteCount);
            return 0L;
        }
        if (getSize() == 0) {
            return -1L;
        }
        if (byteCount > getSize()) {
            byteCount = getSize();
        }
        sink.write(this, byteCount);
        return byteCount;
    }

    public long indexOf(byte b2, long fromIndex, long toIndex) {
        Segment segment;
        int i;
        long size = 0;
        if (0 > fromIndex || fromIndex > toIndex) {
            throw new IllegalArgumentException(("size=" + getSize() + " fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        if (toIndex > getSize()) {
            toIndex = getSize();
        }
        if (fromIndex == toIndex || (segment = this.head) == null) {
            return -1L;
        }
        if (getSize() - fromIndex < fromIndex) {
            size = getSize();
            while (size > fromIndex) {
                segment = segment.prev;
                size -= (long) (segment.limit - segment.pos);
            }
            while (size < toIndex) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + toIndex) - size);
                i = (int) ((((long) segment.pos) + fromIndex) - size);
                while (i < iMin) {
                    if (bArr[i] != b2) {
                        i++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                fromIndex = size;
            }
            return -1L;
        }
        while (true) {
            long j = ((long) (segment.limit - segment.pos)) + size;
            if (j > fromIndex) {
                break;
            }
            segment = segment.next;
            size = j;
        }
        while (size < toIndex) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + toIndex) - size);
            i = (int) ((((long) segment.pos) + fromIndex) - size);
            while (i < iMin2) {
                if (bArr2[i] != b2) {
                    i++;
                }
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            fromIndex = size;
        }
        return -1L;
        return ((long) (i - segment.pos)) + size;
    }

    public boolean rangeEquals(long offset, ByteString bytes, int bytesOffset, int byteCount) {
        return byteCount >= 0 && offset >= 0 && ((long) byteCount) + offset <= getSize() && bytesOffset >= 0 && bytesOffset + byteCount <= bytes.size() && (byteCount == 0 || okio.internal.Buffer.commonIndexOf(this, bytes, offset, offset + 1, bytesOffset, byteCount) != -1);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) other;
        if (getSize() != buffer.getSize()) {
            return false;
        }
        if (getSize() == 0) {
            return true;
        }
        Segment segment = this.head;
        Segment segment2 = buffer.head;
        int i = segment.pos;
        int i2 = segment2.pos;
        long j = 0;
        while (j < getSize()) {
            long jMin = Math.min(segment.limit - i, segment2.limit - i2);
            long j2 = 0;
            while (j2 < jMin) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (segment.data[i] != segment2.data[i2]) {
                    return false;
                }
                j2++;
                i = i3;
                i2 = i4;
            }
            if (i == segment.limit) {
                segment = segment.next;
                i = segment.pos;
            }
            if (i2 == segment2.limit) {
                segment2 = segment2.next;
                i2 = segment2.pos;
            }
            j += jMin;
        }
        return true;
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.limit;
            for (int i3 = segment.pos; i3 < i2; i3++) {
                i = (i * 31) + segment.data[i3];
            }
            segment = segment.next;
        } while (segment != this.head);
        return i;
    }

    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (getSize() == 0) {
            return buffer;
        }
        Segment segment = this.head;
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            segmentSharedCopy.prev.push(segment2.sharedCopy());
        }
        buffer.setSize$okio(getSize());
        return buffer;
    }

    public final ByteString snapshot() {
        if (getSize() > 2147483647L) {
            throw new IllegalStateException(("size > Int.MAX_VALUE: " + getSize()).toString());
        }
        return snapshot((int) getSize());
    }

    public final ByteString snapshot(int byteCount) {
        if (byteCount == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(getSize(), 0L, byteCount);
        Segment segment = this.head;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < byteCount) {
            int i4 = segment.limit;
            int i5 = segment.pos;
            if (i4 == i5) {
                Buffer$$ExternalSyntheticBUOutline2.m965m("s.limit == s.pos");
                return null;
            }
            i2 += i4 - i5;
            i3++;
            segment = segment.next;
        }
        byte[][] bArr = new byte[i3][];
        int[] iArr = new int[i3 * 2];
        Segment segment2 = this.head;
        int i6 = 0;
        while (i < byteCount) {
            bArr[i6] = segment2.data;
            i += segment2.limit - segment2.pos;
            iArr[i6] = Math.min(i, byteCount);
            iArr[i6 + i3] = segment2.pos;
            segment2.shared = true;
            i6++;
            segment2 = segment2.next;
        }
        return new C6825SegmentedByteString(bArr, iArr);
    }
}
