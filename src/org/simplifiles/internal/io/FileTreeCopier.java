package org.simplifiles.internal.io;

import j$.nio.file.FileVisitOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.attribute.FileAttribute;
import java.util.Comparator;
import java.util.stream.Stream;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.streams.jdk8.StreamsKt;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.exception.FileOperationException;
import org.simplifiles.files.DirectoryTransferOptions;
import org.simplifiles.files.SimpliFile$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lorg/simplifiles/internal/io/FileTreeCopier;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "path", "Lorg/simplifiles/files/DirectoryTransferOptions;", "options", _UrlKt.FRAGMENT_ENCODE_SET, "included", "(Lj$/nio/file/Path;Lorg/simplifiles/files/DirectoryTransferOptions;)Z", "source", _UrlKt.FRAGMENT_ENCODE_SET, "validateDirectory", "(Lj$/nio/file/Path;Lorg/simplifiles/files/DirectoryTransferOptions;)V", "target", "copyDirectory", "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lorg/simplifiles/files/DirectoryTransferOptions;)V", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileTreeCopier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileTreeCopier.kt\norg/simplifiles/internal/io/FileTreeCopier\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,77:1\n1342#2,2:78\n614#2:80\n1342#2,2:81\n*S KotlinDebug\n*F\n+ 1 FileTreeCopier.kt\norg/simplifiles/internal/io/FileTreeCopier\n*L\n22#1:78,2\n46#1:80\n47#1:81,2\n*E\n"})
public final class FileTreeCopier {
    public static final FileTreeCopier INSTANCE = new FileTreeCopier();

    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SymlinkDecision.values().length];
            try {
                iArr[SymlinkDecision.INCLUDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SymlinkDecision.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SymlinkDecision.FAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private FileTreeCopier() {
    }

    public final void validateDirectory(Path source, final DirectoryTransferOptions options) {
        Stream<Path> streamWalk = Files.walk(source, new FileVisitOption[0]);
        try {
            long j = 0;
            long size = 0;
            for (Path path : SequencesKt.filter(SequencesKt.filter(StreamsKt.asSequence(streamWalk), new Function1() { // from class: org.simplifiles.internal.io.FileTreeCopier$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(FileTreeCopier.validateDirectory$lambda$0$0(options, (Path) obj));
                }
            }), new Function1() { // from class: org.simplifiles.internal.io.FileTreeCopier$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(FileTreeCopier.validateDirectory$lambda$0$1((Path) obj));
                }
            })) {
                j++;
                if (j > options.getMaxFiles()) {
                    throw new FileOperationException("Directory exceeds copy limit of " + options.getMaxFiles() + " files: " + source);
                }
                size += Files.size(path);
                if (size > options.getMaxBytes()) {
                    throw new FileOperationException("Directory exceeds copy limit of " + options.getMaxBytes() + " bytes: " + source);
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(streamWalk, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.closeFinally(streamWalk, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean validateDirectory$lambda$0$0(DirectoryTransferOptions directoryTransferOptions, Path path) {
        return INSTANCE.included(path, directoryTransferOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean validateDirectory$lambda$0$1(Path path) {
        return Files.isRegularFile(path, new LinkOption[0]);
    }

    public final void copyDirectory(Path source, Path target, final DirectoryTransferOptions options) {
        validateDirectory(source, options);
        Stream<Path> streamWalk = Files.walk(source, new FileVisitOption[0]);
        try {
            for (Path path : SequencesKt.sortedWith(SequencesKt.filter(StreamsKt.asSequence(streamWalk), new Function1() { // from class: org.simplifiles.internal.io.FileTreeCopier$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(FileTreeCopier.copyDirectory$lambda$0$0(options, (Path) obj));
                }
            }), new Comparator() { // from class: org.simplifiles.internal.io.FileTreeCopier$copyDirectory$lambda$0$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(((Path) t).getNameCount()), Integer.valueOf(((Path) t2).getNameCount()));
                }
            })) {
                Path pathResolve = target.resolve(source.relativize(path));
                if (Files.isDirectory(path, new LinkOption[0])) {
                    if (Files.exists(pathResolve, new LinkOption[0]) && !Files.isDirectory(pathResolve, new LinkOption[0])) {
                        Files.deleteIfExists(pathResolve);
                    }
                    Files.createDirectories(pathResolve, new FileAttribute[0]);
                } else {
                    Files.createDirectories(pathResolve.getParent(), new FileAttribute[0]);
                    if (Files.isDirectory(pathResolve, new LinkOption[0])) {
                        FileTreeCleaner.INSTANCE.deleteRecursively(pathResolve);
                    }
                    Files.copy(path, pathResolve, StandardCopyOption.REPLACE_EXISTING);
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(streamWalk, null);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean copyDirectory$lambda$0$0(DirectoryTransferOptions directoryTransferOptions, Path path) {
        return INSTANCE.included(path, directoryTransferOptions);
    }

    private final boolean included(Path path, DirectoryTransferOptions options) throws FileOperationException {
        int i = WhenMappings.$EnumSwitchMapping$0[SymlinkSupport.INSTANCE.decide(path, options.getSymlinkPolicy()).ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        if (i != 3) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
            return false;
        }
        SimpliFile$$ExternalSyntheticBUOutline0.m1030m("Directory contains a symbolic link: ", path);
        return false;
    }
}
