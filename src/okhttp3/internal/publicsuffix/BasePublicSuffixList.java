package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BasePublicSuffixList implements PublicSuffixList {
    public ByteString bytes;
    public ByteString exceptionBytes;
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);
    private IOException readFailure;

    public abstract Object getPath();

    public abstract Source listSource();

    @Override // okhttp3.internal.publicsuffix.PublicSuffixList
    public ByteString getBytes() {
        ByteString byteString = this.bytes;
        if (byteString != null) {
            return byteString;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bytes");
        return null;
    }

    public void setBytes(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<set-?>");
        this.bytes = byteString;
    }

    @Override // okhttp3.internal.publicsuffix.PublicSuffixList
    public ByteString getExceptionBytes() {
        ByteString byteString = this.exceptionBytes;
        if (byteString != null) {
            return byteString;
        }
        Intrinsics.throwUninitializedPropertyAccessException("exceptionBytes");
        return null;
    }

    public void setExceptionBytes(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<set-?>");
        this.exceptionBytes = byteString;
    }

    private final void readTheList() {
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(listSource());
            try {
                ByteString byteString = bufferedSourceBuffer.readByteString(bufferedSourceBuffer.readInt());
                ByteString byteString2 = bufferedSourceBuffer.readByteString(bufferedSourceBuffer.readInt());
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(bufferedSourceBuffer, null);
                synchronized (this) {
                    Intrinsics.checkNotNull(byteString);
                    setBytes(byteString);
                    Intrinsics.checkNotNull(byteString2);
                    setExceptionBytes(byteString2);
                }
            } finally {
            }
        } finally {
            this.readCompleteLatch.countDown();
        }
    }

    @Override // okhttp3.internal.publicsuffix.PublicSuffixList
    public void ensureLoaded() {
        if (!this.listRead.get() && this.listRead.compareAndSet(false, true)) {
            readTheListUninterruptibly();
        } else {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.bytes != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Unable to load " + getPath() + " resource.");
        illegalStateException.initCause(this.readFailure);
        throw illegalStateException;
    }

    private final void readTheListUninterruptibly() {
        boolean z = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z = true;
                } catch (IOException e) {
                    this.readFailure = e;
                    if (!z) {
                        return;
                    }
                }
            } finally {
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }
}
