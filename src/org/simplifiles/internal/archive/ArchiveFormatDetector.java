package org.simplifiles.internal.archive;

import com.exteragram.messenger.plugins.PluginsConstants;
import j$.nio.file.Files;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.archive.ArchiveFormat;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lorg/simplifiles/internal/archive/ArchiveFormatDetector;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "path", "Lorg/simplifiles/archive/ArchiveFormat;", "detect", "(Lj$/nio/file/Path;)Lorg/simplifiles/archive/ArchiveFormat;", "Ljava/io/InputStream;", PluginsConstants.Settings.TYPE_INPUT, _UrlKt.FRAGMENT_ENCODE_SET, "readSignature$simplifiles", "(Ljava/io/InputStream;)[B", "readSignature", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nArchiveFormatDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArchiveFormatDetector.kt\norg/simplifiles/internal/archive/ArchiveFormatDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"})
public final class ArchiveFormatDetector {
    public static final ArchiveFormatDetector INSTANCE = new ArchiveFormatDetector();

    private ArchiveFormatDetector() {
    }

    public final ArchiveFormat detect(Path path) {
        InputStream inputStreamNewInputStream = Files.newInputStream(path, new OpenOption[0]);
        try {
            byte[] signature$simplifiles = readSignature$simplifiles(inputStreamNewInputStream);
            CloseableKt.closeFinally(inputStreamNewInputStream, null);
            if (signature$simplifiles == null) {
                return null;
            }
            int i = signature$simplifiles[0] & UByte.MAX_VALUE;
            int i2 = signature$simplifiles[1] & UByte.MAX_VALUE;
            int i3 = signature$simplifiles[2] & UByte.MAX_VALUE;
            int i4 = signature$simplifiles[3] & UByte.MAX_VALUE;
            if (i == 80 && i2 == 75 && ((i3 == 3 && i4 == 4) || ((i3 == 5 && i4 == 6) || (i3 == 7 && i4 == 8)))) {
                return ArchiveFormat.ZIP;
            }
            return null;
        } finally {
        }
    }

    public final byte[] readSignature$simplifiles(InputStream input) throws IOException {
        byte[] bArr = new byte[4];
        int i = 0;
        while (i < 4) {
            int i2 = input.read(bArr, i, 4 - i);
            if (i2 < 0) {
                return null;
            }
            i += i2;
        }
        return bArr;
    }
}
