package org.simplifiles.internal.io;

import j$.nio.file.Files;
import j$.nio.file.Path;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.files.SymlinkPolicy;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lorg/simplifiles/internal/io/SymlinkSupport;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "path", "Lorg/simplifiles/files/SymlinkPolicy;", "policy", "Lorg/simplifiles/internal/io/SymlinkDecision;", "decide", "(Lj$/nio/file/Path;Lorg/simplifiles/files/SymlinkPolicy;)Lorg/simplifiles/internal/io/SymlinkDecision;", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class SymlinkSupport {
    public static final SymlinkSupport INSTANCE = new SymlinkSupport();

    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SymlinkPolicy.values().length];
            try {
                iArr[SymlinkPolicy.FOLLOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SymlinkPolicy.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SymlinkPolicy.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SymlinkSupport() {
    }

    public final SymlinkDecision decide(Path path, SymlinkPolicy policy) {
        if (!Files.isSymbolicLink(path)) {
            return SymlinkDecision.INCLUDE;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[policy.ordinal()];
        if (i == 1) {
            return SymlinkDecision.INCLUDE;
        }
        if (i == 2) {
            return SymlinkDecision.SKIP;
        }
        if (i != 3) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
            return null;
        }
        return SymlinkDecision.FAIL;
    }
}
