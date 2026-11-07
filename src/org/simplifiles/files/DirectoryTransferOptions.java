package org.simplifiles.files;

import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B1\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0011\u001a\u0004\b\u0014\u0010\u0013R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lorg/simplifiles/files/DirectoryTransferOptions;", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/simplifiles/files/DirectoryOverwritePolicy;", "overwritePolicy", _UrlKt.FRAGMENT_ENCODE_SET, "maxFiles", "maxBytes", "Lorg/simplifiles/files/SymlinkPolicy;", "symlinkPolicy", "<init>", "(Lorg/simplifiles/files/DirectoryOverwritePolicy;JJLorg/simplifiles/files/SymlinkPolicy;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Lorg/simplifiles/files/DirectoryOverwritePolicy;", "getOverwritePolicy", "()Lorg/simplifiles/files/DirectoryOverwritePolicy;", "J", "getMaxFiles", "()J", "getMaxBytes", "Lorg/simplifiles/files/SymlinkPolicy;", "getSymlinkPolicy", "()Lorg/simplifiles/files/SymlinkPolicy;", "Companion", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDirectoryTransferOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirectoryTransferOptions.kt\norg/simplifiles/files/DirectoryTransferOptions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"})
public final class DirectoryTransferOptions {
    private final long maxBytes;
    private final long maxFiles;
    private final DirectoryOverwritePolicy overwritePolicy;
    private final SymlinkPolicy symlinkPolicy;

    @JvmOverloads
    public DirectoryTransferOptions(DirectoryOverwritePolicy directoryOverwritePolicy, long j, long j2, SymlinkPolicy symlinkPolicy) {
        this.overwritePolicy = directoryOverwritePolicy;
        this.maxFiles = j;
        this.maxBytes = j2;
        this.symlinkPolicy = symlinkPolicy;
        if (j < 0) {
            f$$ExternalSyntheticBUOutline1.m215m("maxFiles must not be negative.");
            throw null;
        }
        if (j2 >= 0) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m("maxBytes must not be negative.");
        throw null;
    }

    public /* synthetic */ DirectoryTransferOptions(DirectoryOverwritePolicy directoryOverwritePolicy, long j, long j2, SymlinkPolicy symlinkPolicy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DirectoryOverwritePolicy.ERROR : directoryOverwritePolicy, (i & 2) != 0 ? Long.MAX_VALUE : j, (i & 4) != 0 ? Long.MAX_VALUE : j2, (i & 8) != 0 ? SymlinkPolicy.SKIP : symlinkPolicy);
    }

    public final DirectoryOverwritePolicy getOverwritePolicy() {
        return this.overwritePolicy;
    }

    public final long getMaxFiles() {
        return this.maxFiles;
    }

    public final long getMaxBytes() {
        return this.maxBytes;
    }

    public final SymlinkPolicy getSymlinkPolicy() {
        return this.symlinkPolicy;
    }

    public String toString() {
        return "DirectoryTransferOptions(overwritePolicy=" + this.overwritePolicy + ", maxFiles=" + this.maxFiles + ", maxBytes=" + this.maxBytes + ", symlinkPolicy=" + this.symlinkPolicy + ')';
    }
}
