package j$.nio.channels;

import j$.nio.file.attribute.FileAttribute;
import java.io.IOException;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.Channel;

/* JADX INFO: renamed from: j$.nio.channels.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2259a implements Channel {

    /* JADX INFO: renamed from: b */
    public static final FileAttribute[] f487b = new FileAttribute[0];

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AsynchronousFileChannel f488a;

    public C2259a(AsynchronousFileChannel asynchronousFileChannel) {
        this.f488a = asynchronousFileChannel;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() throws IOException {
        this.f488a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AsynchronousFileChannel asynchronousFileChannel = this.f488a;
        if (obj instanceof C2259a) {
            obj = ((C2259a) obj).f488a;
        }
        return asynchronousFileChannel.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f488a.hashCode();
    }

    @Override // java.nio.channels.Channel
    public final /* synthetic */ boolean isOpen() {
        return this.f488a.isOpen();
    }
}
