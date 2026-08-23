package okhttp3.internal.p025ws;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.InflaterSource;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public final class MessageInflater implements Closeable {
    private final Buffer deflatedBytes = new Buffer();
    private Inflater inflater;
    private InflaterSource inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z) {
        this.noContextTakeover = z;
    }

    public final void inflate(Buffer buffer) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        if (this.deflatedBytes.size() != 0) {
            throw new IllegalArgumentException("Failed requirement.");
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
        long bytesRead = inflater.getBytesRead() + this.deflatedBytes.size();
        do {
            inflaterSource.readOrInflate(buffer, Long.MAX_VALUE);
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
