package org.simplifiles.exception;

import j$.nio.file.Path;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/simplifiles/exception/CorruptedArchiveException;", "Lorg/simplifiles/exception/SimpliFilesException;", "j$/nio/file/Path", "path", _UrlKt.FRAGMENT_ENCODE_SET, "cause", "<init>", "(Lj$/nio/file/Path;Ljava/lang/Throwable;)V", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class CorruptedArchiveException extends SimpliFilesException {
    public CorruptedArchiveException(Path path, Throwable th) {
        super("Archive is corrupted or unreadable: " + path, th);
    }
}
