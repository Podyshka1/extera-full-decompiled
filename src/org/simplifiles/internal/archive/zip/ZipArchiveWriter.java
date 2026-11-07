package org.simplifiles.internal.archive.zip;

import com.exteragram.messenger.plugins.PluginsConstants;
import j$.nio.file.FileVisitOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.StandardOpenOption;
import j$.nio.file.attribute.FileAttribute;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.streams.jdk8.StreamsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.archive.ArchiveSaveOptions;
import org.simplifiles.exception.ArchiveOperationCanceledException;
import org.simplifiles.exception.ArchiveWriteException;
import org.simplifiles.files.OverwritePolicy;
import org.simplifiles.internal.SaturatingMathKt;
import org.simplifiles.internal.io.SymlinkDecision;
import org.simplifiles.internal.io.SymlinkSupport;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\bÀ\u0002\u0018\u00002\u00020\u0001:\u00015B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ=\u0010\u0015\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J=\u0010\u0018\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0018\u0010\u0016J'\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ%\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001f\u0010 J%\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b!\u0010 J\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\u00020\u00192\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b$\u0010%J7\u0010+\u001a\u00020\u00142\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\b2\u0006\u0010*\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b+\u0010,J\u001d\u0010.\u001a\u00020-2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eH\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b0\u00101J%\u00103\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b3\u00104¨\u00066"}, d2 = {"Lorg/simplifiles/internal/archive/zip/ZipArchiveWriter;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "path", _UrlKt.FRAGMENT_ENCODE_SET, "replacingExisting", "Ljava/io/OutputStream;", "newOutputStream", "(Lj$/nio/file/Path;Z)Ljava/io/OutputStream;", "Ljava/util/zip/ZipOutputStream;", "zip", "normalizedRoot", _UrlKt.FRAGMENT_ENCODE_SET, "directories", "Lorg/simplifiles/internal/archive/zip/ZipArchiveWriter$SaveProgress;", "progress", "Lorg/simplifiles/archive/ArchiveSaveOptions;", "options", _UrlKt.FRAGMENT_ENCODE_SET, "writeDirectories", "(Ljava/util/zip/ZipOutputStream;Lj$/nio/file/Path;Ljava/util/List;Lorg/simplifiles/internal/archive/zip/ZipArchiveWriter$SaveProgress;Lorg/simplifiles/archive/ArchiveSaveOptions;)V", "files", "writeFiles", _UrlKt.FRAGMENT_ENCODE_SET, "archivePath", "source", "Ljava/util/zip/ZipEntry;", "timestampedEntry", "(Ljava/lang/String;Lj$/nio/file/Path;Lorg/simplifiles/archive/ArchiveSaveOptions;)Ljava/util/zip/ZipEntry;", "listDirectories", "(Lj$/nio/file/Path;Lorg/simplifiles/archive/ArchiveSaveOptions;)Ljava/util/List;", "listFiles", "included", "(Lj$/nio/file/Path;Lorg/simplifiles/archive/ArchiveSaveOptions;)Z", "entryPath", "(Lj$/nio/file/Path;Lj$/nio/file/Path;)Ljava/lang/String;", "Ljava/io/InputStream;", PluginsConstants.Settings.TYPE_INPUT, "output", _UrlKt.FRAGMENT_ENCODE_SET, "bufferSize", "copy", "(Ljava/io/InputStream;Ljava/io/OutputStream;ILorg/simplifiles/internal/archive/zip/ZipArchiveWriter$SaveProgress;Ljava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, "totalFileSize", "(Ljava/util/List;)J", "checkCanceled", "(Lorg/simplifiles/archive/ArchiveSaveOptions;)V", "root", "write", "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lorg/simplifiles/archive/ArchiveSaveOptions;)V", "SaveProgress", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipArchiveWriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipArchiveWriter.kt\norg/simplifiles/internal/archive/zip/ZipArchiveWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,553:1\n1#2:554\n1849#3,3:555\n1068#3:558\n1849#3,3:564\n614#4:559\n1342#4,2:560\n614#4:562\n614#4:563\n*S KotlinDebug\n*F\n+ 1 ZipArchiveWriter.kt\norg/simplifiles/internal/archive/zip/ZipArchiveWriter\n*L\n117#1:555,3\n212#1:558\n431#1:564,3\n225#1:559\n226#1:560,2\n376#1:562\n389#1:563\n*E\n"})
public final class ZipArchiveWriter {
    public static final ZipArchiveWriter INSTANCE = new ZipArchiveWriter();

    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[OverwritePolicy.values().length];
            try {
                iArr[OverwritePolicy.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OverwritePolicy.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OverwritePolicy.REPLACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[SymlinkDecision.values().length];
            try {
                iArr2[SymlinkDecision.INCLUDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[SymlinkDecision.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[SymlinkDecision.FAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private ZipArchiveWriter() {
    }

    public final void write(Path root, Path output, ArchiveSaveOptions options) {
        Path pathCreateTempFile;
        Path pathNormalize = root.toAbsolutePath().normalize();
        Path pathNormalize2 = output.toAbsolutePath().normalize();
        if (pathNormalize2.startsWith(pathNormalize)) {
            throw new ArchiveWriteException(output, "output path must be outside source directory");
        }
        checkCanceled(options);
        boolean zExists = Files.exists(pathNormalize2, new LinkOption[0]);
        if (zExists) {
            int i = WhenMappings.$EnumSwitchMapping$0[options.getOverwritePolicy().ordinal()];
            if (i == 1) {
                throw new ArchiveWriteException(output, "output file already exists");
            }
            if (i == 2) {
                return;
            }
            if (i != 3) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                return;
            } else if (Files.isDirectory(pathNormalize2, new LinkOption[0])) {
                throw new ArchiveWriteException(output, "output path is a directory");
            }
        }
        Path parent = pathNormalize2.getParent();
        if (parent != null) {
            Files.createDirectories(parent, new FileAttribute[0]);
        }
        List<Path> listListDirectories = listDirectories(pathNormalize, options);
        List<Path> listListFiles = listFiles(pathNormalize, options);
        boolean z = zExists && options.getOverwritePolicy() == OverwritePolicy.REPLACE;
        if (z) {
            Path parent2 = pathNormalize2.getParent();
            StringBuilder sb = new StringBuilder();
            sb.append(pathNormalize2.getFileName());
            sb.append('.');
            pathCreateTempFile = Files.createTempFile(parent2, sb.toString(), ".tmp", new FileAttribute[0]);
        } else {
            pathCreateTempFile = pathNormalize2;
        }
        SaveProgress saveProgress = new SaveProgress(options, listListDirectories.size() + listListFiles.size(), totalFileSize(listListFiles));
        try {
            saveProgress.emit(null);
            ZipOutputStream zipOutputStream = new ZipOutputStream(newOutputStream(pathCreateTempFile, z));
            try {
                zipOutputStream.setLevel(options.getCompressionLevel());
                ZipArchiveWriter zipArchiveWriter = INSTANCE;
                zipArchiveWriter.writeDirectories(zipOutputStream, pathNormalize, listListDirectories, saveProgress, options);
                zipArchiveWriter.writeFiles(zipOutputStream, pathNormalize, listListFiles, saveProgress, options);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(zipOutputStream, null);
                if (Intrinsics.areEqual(pathCreateTempFile, pathNormalize2)) {
                    return;
                }
                Files.move(pathCreateTempFile, pathNormalize2, StandardCopyOption.REPLACE_EXISTING);
            } finally {
            }
        } catch (Throwable th) {
            Files.deleteIfExists(pathCreateTempFile);
            throw th;
        }
    }

    private final OutputStream newOutputStream(Path path, boolean replacingExisting) {
        if (replacingExisting) {
            return Files.newOutputStream(path, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE);
        }
        return Files.newOutputStream(path, StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE);
    }

    private final void writeDirectories(ZipOutputStream zip, Path normalizedRoot, List<? extends Path> directories, SaveProgress progress, ArchiveSaveOptions options) throws IOException {
        for (Path path : directories) {
            progress.checkCanceled();
            String str = StringsKt.replace$default(normalizedRoot.relativize(path).toString(), '\\', '/', false, 4, (Object) null) + '/';
            zip.putNextEntry(timestampedEntry(str, path, options));
            zip.closeEntry();
            progress.entryCompleted(str);
        }
    }

    private final void writeFiles(ZipOutputStream zip, Path normalizedRoot, List<? extends Path> files, SaveProgress progress, ArchiveSaveOptions options) throws IOException {
        for (Path path : files) {
            progress.checkCanceled();
            String strReplace$default = StringsKt.replace$default(normalizedRoot.relativize(path).toString(), '\\', '/', false, 4, (Object) null);
            zip.putNextEntry(timestampedEntry(strReplace$default, path, options));
            InputStream inputStreamNewInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                INSTANCE.copy(inputStreamNewInputStream, zip, options.getBufferSize(), progress, strReplace$default);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(inputStreamNewInputStream, null);
                zip.closeEntry();
                progress.entryCompleted(strReplace$default);
            } finally {
            }
        }
    }

    private final ZipEntry timestampedEntry(String archivePath, Path source, ArchiveSaveOptions options) {
        long entryTimestamp;
        ZipEntry zipEntry = new ZipEntry(archivePath);
        if (options.getEntryTimestamp() == -1) {
            entryTimestamp = Files.getLastModifiedTime(source, new LinkOption[0]).toMillis();
        } else {
            entryTimestamp = options.getEntryTimestamp();
        }
        zipEntry.setTime(entryTimestamp);
        return zipEntry;
    }

    private final List<Path> listDirectories(final Path normalizedRoot, final ArchiveSaveOptions options) throws Exception {
        Stream<Path> streamWalk = Files.walk(normalizedRoot, new FileVisitOption[0]);
        try {
            List<Path> list = SequencesKt.toList(SequencesKt.sortedWith(SequencesKt.filter(SequencesKt.filter(SequencesKt.filter(StreamsKt.asSequence(streamWalk), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ZipArchiveWriter.listDirectories$lambda$0$0(options, (Path) obj));
                }
            }), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ZipArchiveWriter.listDirectories$lambda$0$1(normalizedRoot, (Path) obj));
                }
            }), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ZipArchiveWriter.listDirectories$lambda$0$2(options, normalizedRoot, (Path) obj));
                }
            }), new Comparator() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$listDirectories$lambda$0$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(normalizedRoot.relativize((Path) t).toString(), normalizedRoot.relativize((Path) t2).toString());
                }
            }));
            AutoCloseableKt.closeFinally(streamWalk, null);
            return list;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean listDirectories$lambda$0$0(ArchiveSaveOptions archiveSaveOptions, Path path) {
        return INSTANCE.included(path, archiveSaveOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean listDirectories$lambda$0$1(Path path, Path path2) {
        return !Intrinsics.areEqual(path2, path) && Files.isDirectory(path2, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean listDirectories$lambda$0$2(ArchiveSaveOptions archiveSaveOptions, Path path, Path path2) {
        return archiveSaveOptions.getEntryFilter().include(INSTANCE.entryPath(path, path2) + '/');
    }

    private final List<Path> listFiles(final Path normalizedRoot, final ArchiveSaveOptions options) throws Exception {
        Stream<Path> streamWalk = Files.walk(normalizedRoot, new FileVisitOption[0]);
        try {
            List<Path> list = SequencesKt.toList(SequencesKt.sortedWith(SequencesKt.filter(SequencesKt.filter(SequencesKt.filter(StreamsKt.asSequence(streamWalk), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ZipArchiveWriter.listFiles$lambda$0$0(options, (Path) obj));
                }
            }), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ZipArchiveWriter.listFiles$lambda$0$1((Path) obj));
                }
            }), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ZipArchiveWriter.listFiles$lambda$0$2(options, normalizedRoot, (Path) obj));
                }
            }), new Comparator() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveWriter$listFiles$lambda$0$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(normalizedRoot.relativize((Path) t).toString(), normalizedRoot.relativize((Path) t2).toString());
                }
            }));
            AutoCloseableKt.closeFinally(streamWalk, null);
            return list;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean listFiles$lambda$0$0(ArchiveSaveOptions archiveSaveOptions, Path path) {
        return INSTANCE.included(path, archiveSaveOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean listFiles$lambda$0$1(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean listFiles$lambda$0$2(ArchiveSaveOptions archiveSaveOptions, Path path, Path path2) {
        return archiveSaveOptions.getEntryFilter().include(INSTANCE.entryPath(path, path2));
    }

    private final boolean included(Path path, ArchiveSaveOptions options) throws ArchiveWriteException {
        int i = WhenMappings.$EnumSwitchMapping$1[SymlinkSupport.INSTANCE.decide(path, options.getSymlinkPolicy()).ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        if (i == 3) {
            throw new ArchiveWriteException(path, "source tree contains a symbolic link");
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
        return false;
    }

    private final String entryPath(Path normalizedRoot, Path path) {
        return StringsKt.replace$default(normalizedRoot.relativize(path).toString(), '\\', '/', false, 4, (Object) null);
    }

    private final void copy(InputStream input, OutputStream output, int bufferSize, SaveProgress progress, String archivePath) throws IOException {
        byte[] bArr = new byte[bufferSize];
        while (true) {
            progress.checkCanceled();
            int i = input.read(bArr);
            if (i < 0) {
                return;
            }
            output.write(bArr, 0, i);
            progress.bytesWritten(i, archivePath);
        }
    }

    private final long totalFileSize(List<? extends Path> files) {
        Iterator<T> it = files.iterator();
        long jSaturatingPlus = 0;
        while (it.hasNext()) {
            jSaturatingPlus = SaturatingMathKt.saturatingPlus(jSaturatingPlus, Files.size((Path) it.next()));
        }
        return jSaturatingPlus;
    }

    private final void checkCanceled(ArchiveSaveOptions options) throws ArchiveOperationCanceledException {
        if (options.getCancellationToken().isCancellationRequested()) {
            throw new ArchiveOperationCanceledException();
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\n\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0011\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lorg/simplifiles/internal/archive/zip/ZipArchiveWriter$SaveProgress;", _UrlKt.FRAGMENT_ENCODE_SET, "options", "Lorg/simplifiles/archive/ArchiveSaveOptions;", "totalEntries", _UrlKt.FRAGMENT_ENCODE_SET, "totalBytes", "<init>", "(Lorg/simplifiles/archive/ArchiveSaveOptions;JJ)V", "entriesProcessed", "bytesWritten", "checkCanceled", _UrlKt.FRAGMENT_ENCODE_SET, "bytes", "currentEntryPath", _UrlKt.FRAGMENT_ENCODE_SET, "entryCompleted", "emit", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SaveProgress {
        private long bytesWritten;
        private long entriesProcessed;
        private final ArchiveSaveOptions options;
        private final long totalBytes;
        private final long totalEntries;

        public SaveProgress(ArchiveSaveOptions archiveSaveOptions, long j, long j2) {
            this.options = archiveSaveOptions;
            this.totalEntries = j;
            this.totalBytes = j2;
        }

        public final void checkCanceled() throws ArchiveOperationCanceledException {
            if (this.options.getCancellationToken().isCancellationRequested()) {
                throw new ArchiveOperationCanceledException();
            }
        }

        public final void bytesWritten(long bytes, String currentEntryPath) {
            this.bytesWritten += bytes;
            emit(currentEntryPath);
        }

        public final void entryCompleted(String currentEntryPath) {
            this.entriesProcessed++;
            emit(currentEntryPath);
        }

        public final void emit(String currentEntryPath) {
            this.options.getProgressListener();
        }
    }
}
