package okio;

import com.google.android.gms.cast.MediaStatus;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\n\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0018\u0010\u001aJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020 H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010\n\u001a\u00020\u001d2\u0006\u0010\u0007\u001a\u00020%H\u0016¢\u0006\u0004\b\n\u0010&J\u001f\u0010#\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b#\u0010'J\u0017\u0010)\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020+2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020+2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020+H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00102\u001a\u00020+2\u0006\u00104\u001a\u00020\bH\u0016¢\u0006\u0004\b2\u0010-J\u000f\u00105\u001a\u00020\u001dH\u0016¢\u0006\u0004\b5\u00106J\u000f\u00108\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u000207H\u0016¢\u0006\u0004\b:\u00109J\u000f\u0010;\u001a\u00020\u001dH\u0016¢\u0006\u0004\b;\u00106J\u000f\u0010<\u001a\u00020\u001dH\u0016¢\u0006\u0004\b<\u00106J\u000f\u0010=\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\bH\u0016¢\u0006\u0004\b?\u0010>J\u000f\u0010@\u001a\u00020\bH\u0016¢\u0006\u0004\b@\u0010>J\u000f\u0010A\u001a\u00020\bH\u0016¢\u0006\u0004\bA\u0010>J\u0017\u0010B\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\bB\u0010\u0011J\u0017\u0010D\u001a\u00020\b2\u0006\u0010C\u001a\u00020\u0014H\u0016¢\u0006\u0004\bD\u0010EJ'\u0010D\u001a\u00020\b2\u0006\u0010C\u001a\u00020\u00142\u0006\u0010F\u001a\u00020\b2\u0006\u0010G\u001a\u00020\bH\u0016¢\u0006\u0004\bD\u0010HJ'\u0010D\u001a\u00020\b2\u0006\u0010I\u001a\u00020\u00172\u0006\u0010F\u001a\u00020\b2\u0006\u0010G\u001a\u00020\bH\u0016¢\u0006\u0004\bD\u0010JJ\u001f\u0010L\u001a\u00020\f2\u0006\u0010K\u001a\u00020\b2\u0006\u0010I\u001a\u00020\u0017H\u0016¢\u0006\u0004\bL\u0010MJ/\u0010L\u001a\u00020\f2\u0006\u0010K\u001a\u00020\b2\u0006\u0010I\u001a\u00020\u00172\u0006\u0010N\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\u001dH\u0016¢\u0006\u0004\bL\u0010OJ\u000f\u0010P\u001a\u00020\u0001H\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\fH\u0016¢\u0006\u0004\bU\u0010\u000eJ\u000f\u0010V\u001a\u00020\u000fH\u0016¢\u0006\u0004\bV\u0010WJ\u000f\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020+H\u0016¢\u0006\u0004\b[\u00103R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\\R\u0014\u0010]\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010_\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u001b\u0010d\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\bc\u0010W\u001a\u0004\ba\u0010b¨\u0006e"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "Lokio/Source;", "source", "<init>", "(Lokio/Source;)V", "Lokio/Buffer;", "sink", _UrlKt.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Lokio/Buffer;J)J", _UrlKt.FRAGMENT_ENCODE_SET, "exhausted", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "require", "(J)V", "request", "(J)Z", _UrlKt.FRAGMENT_ENCODE_SET, "readByte", "()B", "Lokio/ByteString;", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "Lokio/Options;", "options", _UrlKt.FRAGMENT_ENCODE_SET, "select", "(Lokio/Options;)I", _UrlKt.FRAGMENT_ENCODE_SET, "readByteArray", "()[B", "readFully", "([B)V", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "(Lokio/Buffer;J)V", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", _UrlKt.FRAGMENT_ENCODE_SET, "readUtf8", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8LineStrict", "()Ljava/lang/String;", "limit", "readUtf8CodePoint", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "readShort", "()S", "readShortLe", "readInt", "readIntLe", "readLong", "()J", "readLongLe", "readDecimalLong", "readHexadecimalUnsignedLong", "skip", "b", "indexOf", "(B)J", "fromIndex", "toIndex", "(BJJ)J", "bytes", "(Lokio/ByteString;JJ)J", "offset", "rangeEquals", "(JLokio/ByteString;)Z", "bytesOffset", "(JLokio/ByteString;II)Z", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "isOpen", "close", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "toString", "Lokio/Source;", "bufferField", "Lokio/Buffer;", "closed", "Z", "getBuffer", "()Lokio/Buffer;", "getBuffer$annotations", "buffer", "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 2 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BufferedSource.kt\nokio/internal/-BufferedSource\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,207:1\n63#1:213\n63#1:224\n63#1:231\n63#1:237\n63#1:239\n63#1:243\n63#1:248\n63#1:266\n63#1:270\n63#1:277\n63#1:290\n63#1:299\n63#1:300\n63#1:301\n63#1:307\n63#1:315\n63#1:328\n63#1:332\n63#1:333\n63#1:334\n63#1:335\n63#1:340\n63#1:352\n63#1:368\n63#1:378\n63#1:381\n63#1:384\n63#1:387\n63#1:390\n63#1:393\n63#1:399\n63#1:416\n63#1:436\n63#1:451\n63#1:468\n63#1:495\n39#2:208\n40#2,3:210\n43#2,7:214\n53#2:221\n54#2:223\n58#2,2:225\n62#2:227\n63#2,2:229\n65#2,3:232\n71#2,2:235\n76#2:238\n77#2:240\n81#2,2:241\n86#2:244\n88#2,2:246\n90#2,13:249\n109#2:265\n110#2:267\n114#2,2:268\n119#2,6:271\n125#2,9:278\n136#2,3:287\n139#2,6:291\n145#2:298\n149#2,5:302\n154#2,5:308\n161#2,2:313\n163#2,11:316\n177#2:327\n178#2:329\n182#2,2:330\n187#2,4:336\n191#2,6:341\n201#2:347\n202#2,3:349\n205#2,8:353\n213#2,3:362\n220#2,3:365\n223#2,7:369\n233#2,2:376\n238#2,2:379\n243#2,2:382\n248#2,2:385\n253#2,2:388\n258#2,2:391\n263#2,5:394\n268#2,11:400\n282#2,5:411\n287#2,14:417\n304#2,2:431\n306#2,2:434\n308#2,7:437\n317#2,2:444\n319#2,4:447\n323#2,11:452\n421#2,2:463\n424#2,2:466\n426#2,7:469\n442#2:476\n444#2,12:478\n459#2:490\n463#2,4:491\n467#2:496\n469#2:497\n471#2:498\n1#3:209\n1#3:222\n1#3:228\n1#3:245\n1#3:348\n1#3:433\n1#3:446\n1#3:465\n1#3:477\n26#4,3:262\n88#5:297\n88#5:361\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n*L\n67#1:213\n68#1:224\n70#1:231\n71#1:237\n72#1:239\n73#1:243\n74#1:248\n76#1:266\n77#1:270\n79#1:277\n81#1:290\n84#1:299\n85#1:300\n89#1:301\n93#1:307\n94#1:315\n95#1:328\n96#1:332\n99#1:333\n100#1:334\n105#1:335\n108#1:340\n110#1:352\n111#1:368\n112#1:378\n113#1:381\n114#1:384\n115#1:387\n116#1:390\n117#1:393\n118#1:399\n119#1:416\n120#1:436\n125#1:451\n135#1:468\n203#1:495\n67#1:208\n67#1:210,3\n67#1:214,7\n68#1:221\n68#1:223\n69#1:225,2\n70#1:227\n70#1:229,2\n70#1:232,3\n71#1:235,2\n72#1:238\n72#1:240\n73#1:241,2\n74#1:244\n74#1:246,2\n74#1:249,13\n76#1:265\n76#1:267\n77#1:268,2\n79#1:271,6\n79#1:278,9\n81#1:287,3\n81#1:291,6\n81#1:298\n93#1:302,5\n93#1:308,5\n94#1:313,2\n94#1:316,11\n95#1:327\n95#1:329\n96#1:330,2\n108#1:336,4\n108#1:341,6\n110#1:347\n110#1:349,3\n110#1:353,8\n110#1:362,3\n111#1:365,3\n111#1:369,7\n112#1:376,2\n113#1:379,2\n114#1:382,2\n115#1:385,2\n116#1:388,2\n117#1:391,2\n118#1:394,5\n118#1:400,11\n119#1:411,5\n119#1:417,14\n120#1:431,2\n120#1:434,2\n120#1:437,7\n125#1:444,2\n125#1:447,4\n125#1:452,11\n135#1:463,2\n135#1:466,2\n135#1:469,7\n149#1:476\n149#1:478,12\n151#1:490\n203#1:491,4\n203#1:496\n204#1:497\n205#1:498\n67#1:209\n68#1:222\n70#1:228\n74#1:245\n110#1:348\n120#1:433\n125#1:446\n135#1:465\n149#1:477\n75#1:262,3\n81#1:297\n110#1:361\n*E\n"})
public final class RealBufferedSource implements BufferedSource {

    @JvmField
    public final Buffer bufferField = new Buffer();

    @JvmField
    public boolean closed;

    @JvmField
    public final Source source;

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) {
        if (byteCount < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m836m("byteCount < 0: ", byteCount);
            return 0L;
        }
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return 0L;
        }
        if (this.bufferField.getSize() == 0) {
            if (byteCount == 0) {
                return 0L;
            }
            if (this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                return -1L;
            }
        }
        return this.bufferField.read(sink, Math.min(byteCount, this.bufferField.getSize()));
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            return this.bufferField.exhausted() && this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("closed");
        return false;
    }

    public RealBufferedSource(Source source) {
        this.source = source;
    }

    @Override // okio.BufferedSource
    public void require(long byteCount) throws EOFException {
        if (request(byteCount)) {
            return;
        }
        Buffer$$ExternalSyntheticBUOutline1.m834m();
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    /* JADX INFO: renamed from: getBuffer, reason: from getter */
    public Buffer getBufferField() {
        return this.bufferField;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        if (this.bufferField.getSize() == 0 && this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    public boolean request(long byteCount) {
        if (byteCount < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m836m("byteCount < 0: ", byteCount);
            return false;
        }
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return false;
        }
        while (this.bufferField.getSize() < byteCount) {
            if (this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long byteCount) throws EOFException {
        require(byteCount);
        return this.bufferField.readByteString(byteCount);
    }

    @Override // okio.BufferedSource
    public int select(Options options) throws EOFException {
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return 0;
        }
        do {
            int iSelectPrefix = okio.internal.Buffer.selectPrefix(this.bufferField, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    return -1;
                }
                this.bufferField.skip(options.getByteStrings()[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) != -1);
        return -1;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(LongCompanionObject.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) throws EOFException {
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i = 0;
            while (this.bufferField.getSize() > 0) {
                Buffer buffer = this.bufferField;
                int i2 = buffer.read(sink, i, (int) buffer.getSize());
                if (i2 == -1) {
                    AsyncTimeout$$ExternalSyntheticBUOutline0.m832m();
                    return;
                }
                i += i2;
            }
            throw e;
        }
    }

    public long indexOf(byte b2) {
        return indexOf(b2, 0L, LongCompanionObject.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes, long fromIndex, long toIndex) {
        return okio.internal.RealBufferedSource.commonIndexOf$default(this, bytes, 0, 0, fromIndex, toIndex, 6, null);
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, ByteString bytes) {
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long byteCount) throws EOFException {
        try {
            require(byteCount);
            this.bufferField.readFully(sink, byteCount);
        } catch (EOFException e) {
            sink.writeAll(this.bufferField);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource.inputStream.1
            @Override // java.io.InputStream
            public int read() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.closed) {
                    Model$$ExternalSyntheticBUOutline0.m964m("closed");
                    return 0;
                }
                if (realBufferedSource.bufferField.getSize() == 0) {
                    RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                    if (realBufferedSource2.source.read(realBufferedSource2.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                        return -1;
                    }
                }
                return RealBufferedSource.this.bufferField.readByte() & UByte.MAX_VALUE;
            }

            @Override // java.io.InputStream
            public int read(byte[] data, int offset, int byteCount) throws IOException {
                if (RealBufferedSource.this.closed) {
                    Model$$ExternalSyntheticBUOutline0.m964m("closed");
                    return 0;
                }
                SegmentedByteString.checkOffsetAndCount(data.length, offset, byteCount);
                if (RealBufferedSource.this.bufferField.getSize() == 0) {
                    RealBufferedSource realBufferedSource = RealBufferedSource.this;
                    if (realBufferedSource.source.read(realBufferedSource.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                        return -1;
                    }
                }
                return RealBufferedSource.this.bufferField.read(data, offset, byteCount);
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.closed) {
                    return (int) Math.min(realBufferedSource.bufferField.getSize(), 2147483647L);
                }
                Model$$ExternalSyntheticBUOutline0.m964m("closed");
                return 0;
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws EOFException {
                RealBufferedSource.this.close();
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public long transferTo(OutputStream out) throws IOException {
                if (RealBufferedSource.this.closed) {
                    Model$$ExternalSyntheticBUOutline0.m964m("closed");
                    return 0L;
                }
                long size = 0;
                while (true) {
                    if (RealBufferedSource.this.bufferField.getSize() == 0) {
                        RealBufferedSource realBufferedSource = RealBufferedSource.this;
                        if (realBufferedSource.source.read(realBufferedSource.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                            return size;
                        }
                    }
                    size += RealBufferedSource.this.bufferField.getSize();
                    Buffer.writeTo$default(RealBufferedSource.this.bufferField, out, 0L, 2, null);
                }
            }
        };
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        Buffer buffer;
        long j = 0;
        while (true) {
            long j2 = this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE);
            buffer = this.bufferField;
            if (j2 == -1) {
                break;
            }
            long jCompleteSegmentByteCount = buffer.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j += jCompleteSegmentByteCount;
                sink.write(this.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (buffer.getSize() <= 0) {
            return j;
        }
        long size = j + this.bufferField.getSize();
        Buffer buffer2 = this.bufferField;
        sink.write(buffer2, buffer2.getSize());
        return size;
    }

    @Override // okio.BufferedSource
    public String readUtf8(long byteCount) throws EOFException {
        require(byteCount);
        return this.bufferField.readUtf8(byteCount);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (limit < 0) {
            Buffer$$ExternalSyntheticBUOutline3.m836m("limit < 0: ", limit);
            return null;
        }
        long j = limit == LongCompanionObject.MAX_VALUE ? Long.MAX_VALUE : limit + 1;
        long jIndexOf = indexOf((byte) 10, 0L, j);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this.bufferField, jIndexOf);
        }
        if (j < LongCompanionObject.MAX_VALUE && request(j) && this.bufferField.getByte(j - 1) == 13 && request(j + 1) && this.bufferField.getByte(j) == 10) {
            return okio.internal.Buffer.readUtf8Line(this.bufferField, j);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32L, buffer2.getSize()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.getSize(), limit) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        require(1L);
        byte b2 = this.bufferField.getByte(0L);
        if ((b2 & 224) == 192) {
            require(2L);
        } else if ((b2 & 240) == 224) {
            require(3L);
        } else if ((b2 & 248) == 240) {
            require(4L);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        require(8L);
        return this.bufferField.readLongLe();
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws EOFException {
        byte b2;
        require(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            if (!request(j2)) {
                break;
            }
            b2 = this.bufferField.getByte(j);
            if ((b2 < 48 || b2 > 57) && !(j == 0 && b2 == 45)) {
                break;
            }
            j = j2;
        }
        if (j == 0) {
            Buffer$$ExternalSyntheticBUOutline0.m833m("Expected a digit or '-' but was 0x", Integer.toString(b2, CharsKt.checkRadix(16)));
            return 0L;
        }
        return this.bufferField.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws EOFException {
        byte b2;
        require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            b2 = this.bufferField.getByte(i);
            if ((b2 < 48 || b2 > 57) && ((b2 < 97 || b2 > 102) && (b2 < 65 || b2 > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            Buffer$$ExternalSyntheticBUOutline0.m833m("Expected leading [0-9a-fA-F] character but was 0x", Integer.toString(b2, CharsKt.checkRadix(16)));
            return 0L;
        }
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public void skip(long byteCount) throws EOFException {
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return;
        }
        while (byteCount > 0) {
            if (this.bufferField.getSize() == 0 && this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                Buffer$$ExternalSyntheticBUOutline1.m834m();
                return;
            } else {
                long jMin = Math.min(byteCount, this.bufferField.getSize());
                this.bufferField.skip(jMin);
                byteCount -= jMin;
            }
        }
    }

    public long indexOf(byte b2, long fromIndex, long toIndex) {
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m848m("closed");
            return 0L;
        }
        if (0 > fromIndex || fromIndex > toIndex) {
            throw new IllegalArgumentException(("fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        long jMax = fromIndex;
        while (jMax < toIndex) {
            byte b3 = b2;
            long j = toIndex;
            long jIndexOf = this.bufferField.indexOf(b3, jMax, j);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = this.bufferField.getSize();
            if (size >= j || this.source.read(this.bufferField, MediaStatus.COMMAND_PLAYBACK_RATE) == -1) {
                break;
            }
            jMax = Math.max(jMax, size);
            b2 = b3;
            toIndex = j;
        }
        return -1L;
    }

    public boolean rangeEquals(long offset, ByteString bytes, int bytesOffset, int byteCount) {
        if (!this.closed) {
            return byteCount >= 0 && offset >= 0 && bytesOffset >= 0 && bytesOffset + byteCount <= bytes.size() && (byteCount == 0 || okio.internal.RealBufferedSource.commonIndexOf(this, bytes, bytesOffset, byteCount, offset, offset + 1) != -1);
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("closed");
        return false;
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws EOFException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public Timeout getTimeout() {
        return this.source.getTimeout();
    }

    public String toString() {
        return "buffer(" + this.source + ')';
    }
}
