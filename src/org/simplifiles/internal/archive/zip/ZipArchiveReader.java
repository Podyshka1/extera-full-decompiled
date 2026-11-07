package org.simplifiles.internal.archive.zip;

import j$.nio.file.Path;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.SequencesKt;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.archive.ArchiveEntryInfo;
import org.simplifiles.archive.ArchiveFormat;
import org.simplifiles.archive.ArchiveInspection;
import org.simplifiles.exception.CorruptedArchiveException;
import org.simplifiles.internal.archive.ArchivePathAnalyzer;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/simplifiles/internal/archive/zip/ZipArchiveReader;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "path", "Lorg/simplifiles/archive/ArchiveInspection;", "inspect", "(Lj$/nio/file/Path;)Lorg/simplifiles/archive/ArchiveInspection;", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class ZipArchiveReader {
    public static final ZipArchiveReader INSTANCE = new ZipArchiveReader();

    private ZipArchiveReader() {
    }

    public final ArchiveInspection inspect(Path path) {
        try {
            ZipFile zipFile = new ZipFile(path.toFile());
            try {
                List list = SequencesKt.toList(SequencesKt.map(SequencesKt.asSequence(CollectionsKt.iterator(zipFile.entries())), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveReader$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ZipArchiveReader.inspect$lambda$0$0((ZipEntry) obj);
                    }
                }));
                CloseableKt.closeFinally(zipFile, null);
                return new ArchiveInspection(ArchiveFormat.ZIP, list);
            } finally {
            }
        } catch (IOException e) {
            throw new CorruptedArchiveException(path, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ArchiveEntryInfo inspect$lambda$0$0(ZipEntry zipEntry) {
        return new ArchiveEntryInfo(zipEntry.getName(), ArchivePathAnalyzer.INSTANCE.analyze(zipEntry.getName()).getNormalizedPath(), zipEntry.isDirectory(), zipEntry.getCompressedSize(), zipEntry.getSize(), zipEntry.getMethod());
    }
}
