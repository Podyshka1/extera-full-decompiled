package kotlin.io.path;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0013\bF\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011H\u0086\u0080\u0004J\u0012\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011H\u0086\u0080\u0004J\u0016\u0010\u001a\u001a\u00020\u00172\n\u0010\u001b\u001a\u00060\fj\u0002`\rH\u0086\u0080\u0004R\u000f\u0010\u0002\u001a\u00020\u0003X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u001f\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u008e\b¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001f\u0010\n\u001a\f\u0012\b\u0012\u00060\fj\u0002`\r0\u000bX\u0086\u0084\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001c"}, d2 = {"Lkotlin/io/path/ExceptionsCollector;", _UrlKt.FRAGMENT_ENCODE_SET, "limit", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "value", "totalExceptions", "getTotalExceptions", "()I", "collectedExceptions", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Exception;", "Lkotlin/Exception;", "getCollectedExceptions", "()Ljava/util/List;", "path", "Ljava/nio/file/Path;", "getPath", "()Ljava/nio/file/Path;", "setPath", "(Ljava/nio/file/Path;)V", "enterEntry", _UrlKt.FRAGMENT_ENCODE_SET, "name", "exitEntry", "collect", "exception", "kotlin-stdlib-jdk7"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
final class ExceptionsCollector {
    private final List<Exception> collectedExceptions;
    private final int limit;
    private Path path;
    private int totalExceptions;

    public ExceptionsCollector() {
        this(0, 1, null);
    }

    public ExceptionsCollector(int i) {
        this.limit = i;
        this.collectedExceptions = new ArrayList();
    }

    public /* synthetic */ ExceptionsCollector(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 64 : i);
    }

    public final int getTotalExceptions() {
        return this.totalExceptions;
    }

    public final List<Exception> getCollectedExceptions() {
        return this.collectedExceptions;
    }

    public final Path getPath() {
        return this.path;
    }

    public final void setPath(Path path) {
        this.path = path;
    }

    public final void enterEntry(Path name) {
        Path path = this.path;
        this.path = path != null ? path.resolve(name) : null;
    }

    public final void exitEntry(Path name) {
        Path path = this.path;
        if (!Intrinsics.areEqual(name, path != null ? path.getFileName() : null)) {
            f$$ExternalSyntheticBUOutline1.m178m("Failed requirement.");
        } else {
            Path path2 = this.path;
            this.path = path2 != null ? path2.getParent() : null;
        }
    }

    public final void collect(Exception exception) {
        this.totalExceptions++;
        if (this.collectedExceptions.size() < this.limit) {
            if (this.path != null) {
                ExceptionsCollector$$ExternalSyntheticApiModelOutline1.m778m();
                exception = ExceptionsCollector$$ExternalSyntheticApiModelOutline2.m779m(ExceptionsCollector$$ExternalSyntheticApiModelOutline0.m777m(String.valueOf(this.path)).initCause(exception));
            }
            this.collectedExceptions.add(exception);
        }
    }
}
