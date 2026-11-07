package j$.nio.channels;

import j$.nio.file.attribute.FileAttribute;
import java.io.IOException;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.Channel;

/* JADX INFO: renamed from: j$.nio.channels.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2119a implements Channel {

    /* JADX INFO: renamed from: b */
    public static final FileAttribute[] f486b = new FileAttribute[0];

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AsynchronousFileChannel f487a;

    public C2119a(AsynchronousFileChannel asynchronousFileChannel) {
        this.f487a = asynchronousFileChannel;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() throws IOException {
        this.f487a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        AsynchronousFileChannel asynchronousFileChannel = this.f487a;
        if (obj instanceof C2119a) {
            obj = ((C2119a) obj).f487a;
        }
        return asynchronousFileChannel.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f487a.hashCode();
    }

    @Override // java.nio.channels.Channel
    public final /* synthetic */ boolean isOpen() {
        return this.f487a.isOpen();
    }
}
