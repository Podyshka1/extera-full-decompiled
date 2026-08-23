package okhttp3.internal.ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.InflaterSource;
import okio.Source;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\b\u0010\u000f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "noContextTakeover", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Z)V", "deflatedBytes", "Lokio/Buffer;", "inflater", "Ljava/util/zip/Inflater;", "inflaterSource", "Lokio/InflaterSource;", "inflate", _UrlKt.FRAGMENT_ENCODE_SET, "buffer", "close", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMessageInflater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageInflater.kt\nokhttp3/internal/ws/MessageInflater\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
public final class MessageInflater implements Closeable {
    private final Buffer deflatedBytes = new Buffer();
    private Inflater inflater;
    private InflaterSource inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z) {
        this.noContextTakeover = z;
    }

    public final void inflate(Buffer buffer) throws IOException {
        if (this.deflatedBytes.getSize() != 0) {
            f$$ExternalSyntheticBUOutline1.m178m("Failed requirement.");
            return;
        }
        Inflater inflater = this.inflater;
        if (inflater == null) {
            inflater = new Inflater(true);
            this.inflater = inflater;
        }
        InflaterSource inflaterSource = this.inflaterSource;
        if (inflaterSource == null) {
            inflaterSource = new InflaterSource((Source) this.deflatedBytes, inflater);
            this.inflaterSource = inflaterSource;
        }
        if (this.noContextTakeover) {
            inflater.reset();
        }
        this.deflatedBytes.writeAll(buffer);
        this.deflatedBytes.writeInt(65535);
        long bytesRead = inflater.getBytesRead() + this.deflatedBytes.getSize();
        do {
            inflaterSource.readOrInflate(buffer, LongCompanionObject.MAX_VALUE);
            if (inflater.getBytesRead() >= bytesRead) {
                break;
            }
        } while (!inflater.finished());
        if (inflater.getBytesRead() < bytesRead) {
            this.deflatedBytes.clear();
            inflaterSource.close();
            this.inflaterSource = null;
            this.inflater = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InflaterSource inflaterSource = this.inflaterSource;
        if (inflaterSource != null) {
            inflaterSource.close();
        }
        this.inflaterSource = null;
        this.inflater = null;
    }
}
