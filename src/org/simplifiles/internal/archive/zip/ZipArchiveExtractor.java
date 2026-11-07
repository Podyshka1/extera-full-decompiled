package org.simplifiles.internal.archive.zip;

import androidx.room.BaseRoomConnectionManager$$ExternalSyntheticBUOutline0;
import com.exteragram.messenger.plugins.PluginsConstants;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.StandardOpenOption;
import j$.nio.file.attribute.FileAttribute;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.simplifiles.archive.ArchiveEntryInfo;
import org.simplifiles.archive.ArchiveExtractionOptions;
import org.simplifiles.archive.ArchiveFormat;
import org.simplifiles.archive.ArchiveIssue;
import org.simplifiles.archive.ArchiveIssueSeverity;
import org.simplifiles.archive.ExtractedArchive;
import org.simplifiles.archive.ExtractionTargetPolicy;
import org.simplifiles.archive.ValidationReport;
import org.simplifiles.archive.security.DuplicatePolicy;
import org.simplifiles.archive.security.SecurityPolicy;
import org.simplifiles.exception.ArchiveOperationCanceledException;
import org.simplifiles.exception.ArchiveValidationException;
import org.simplifiles.exception.ExtractionTargetException;
import org.simplifiles.internal.SaturatingMathKt;
import org.simplifiles.internal.archive.ArchivePathAnalyzer;
import org.simplifiles.internal.archive.ArchivePathResolver;
import org.simplifiles.internal.io.FileTreeCleaner;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001CB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ7\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J/\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0018\u001a\u00020\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002¢\u0006\u0004\b\u001f\u0010 JO\u0010(\u001a\u00020%2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010&\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010'\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b(\u0010)J\u001d\u0010-\u001a\u00020%2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0*H\u0002¢\u0006\u0004\b-\u0010.J/\u00101\u001a\u00020%2\u0006\u0010/\u001a\u00020%2\u0006\u00100\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001aH\u0002¢\u0006\u0004\b1\u00102J/\u00103\u001a\u00020%2\u0006\u0010/\u001a\u00020%2\u0006\u00100\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001aH\u0002¢\u0006\u0004\b3\u00102J'\u00105\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00104\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b5\u00106J+\u0010:\u001a\u0002092\u0006\u00107\u001a\u00020\u001a2\u0006\u00108\u001a\u00020\u001a2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b:\u0010;JC\u0010A\u001a\u00020@2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020\u000b2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0*2\u0006\u0010?\u001a\u00020>¢\u0006\u0004\bA\u0010B¨\u0006D"}, d2 = {"Lorg/simplifiles/internal/archive/zip/ZipArchiveExtractor;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "j$/nio/file/Path", "root", "Lorg/simplifiles/archive/ExtractionTargetPolicy;", "targetPolicy", _UrlKt.FRAGMENT_ENCODE_SET, "prepareTarget", "(Lj$/nio/file/Path;Lorg/simplifiles/archive/ExtractionTargetPolicy;)V", _UrlKt.FRAGMENT_ENCODE_SET, "isDirectoryEmpty", "(Lj$/nio/file/Path;)Z", "source", "Lorg/simplifiles/archive/security/SecurityPolicy;", "policy", "Lorg/simplifiles/internal/archive/zip/ZipArchiveExtractor$ExtractionProgress;", "progress", _UrlKt.FRAGMENT_ENCODE_SET, "bufferSize", "extractEntries", "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lorg/simplifiles/archive/security/SecurityPolicy;Lorg/simplifiles/internal/archive/zip/ZipArchiveExtractor$ExtractionProgress;I)V", "Ljava/util/zip/ZipEntry;", "entry", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "destinationPaths", "destinationPathFor", "(Ljava/util/zip/ZipEntry;Ljava/util/Set;Lorg/simplifiles/archive/security/SecurityPolicy;)Ljava/lang/String;", "path", "renamedPath", "(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;", "Ljava/io/InputStream;", PluginsConstants.Settings.TYPE_INPUT, "Ljava/io/OutputStream;", "output", _UrlKt.FRAGMENT_ENCODE_SET, "totalWritten", "destinationPath", "copyWithLimits", "(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/zip/ZipEntry;JLorg/simplifiles/archive/security/SecurityPolicy;Lorg/simplifiles/internal/archive/zip/ZipArchiveExtractor$ExtractionProgress;Ljava/lang/String;I)J", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/simplifiles/archive/ArchiveEntryInfo;", "entries", "knownUncompressedSize", "(Ljava/util/List;)J", "current", "added", "checkedAddEntry", "(JJLorg/simplifiles/archive/security/SecurityPolicy;Ljava/lang/String;)J", "checkedAddTotal", "written", "validateRuntimeCompressionRatio", "(Ljava/util/zip/ZipEntry;JLorg/simplifiles/archive/security/SecurityPolicy;)V", "code", "message", _UrlKt.FRAGMENT_ENCODE_SET, "failValidation", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;", "targetRoot", "cleanupOnClose", "Lorg/simplifiles/archive/ArchiveExtractionOptions;", "options", "Lorg/simplifiles/archive/ExtractedArchive;", "extract", "(Lj$/nio/file/Path;Lj$/nio/file/Path;Lorg/simplifiles/archive/security/SecurityPolicy;ZLjava/util/List;Lorg/simplifiles/archive/ArchiveExtractionOptions;)Lorg/simplifiles/archive/ExtractedArchive;", "ExtractionProgress", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipArchiveExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipArchiveExtractor.kt\norg/simplifiles/internal/archive/zip/ZipArchiveExtractor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,392:1\n1#2:393\n1313#3,3:394\n*S KotlinDebug\n*F\n+ 1 ZipArchiveExtractor.kt\norg/simplifiles/internal/archive/zip/ZipArchiveExtractor\n*L\n257#1:394,3\n*E\n"})
public final class ZipArchiveExtractor {
    public static final ZipArchiveExtractor INSTANCE = new ZipArchiveExtractor();

    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ExtractionTargetPolicy.values().length];
            try {
                iArr[ExtractionTargetPolicy.ERROR_IF_NOT_EMPTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ExtractionTargetPolicy.CLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ExtractionTargetPolicy.REPLACE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DuplicatePolicy.values().length];
            try {
                iArr2[DuplicatePolicy.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[DuplicatePolicy.KEEP_FIRST.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DuplicatePolicy.KEEP_LAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DuplicatePolicy.RENAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private ZipArchiveExtractor() {
    }

    public final ExtractedArchive extract(Path source, Path targetRoot, SecurityPolicy policy, boolean cleanupOnClose, List<ArchiveEntryInfo> entries, ArchiveExtractionOptions options) throws Exception {
        Path pathNormalize = targetRoot.toAbsolutePath().normalize();
        boolean zExists = Files.exists(pathNormalize, new LinkOption[0]);
        ExtractionProgress extractionProgress = new ExtractionProgress(options, entries.size(), knownUncompressedSize(entries));
        extractionProgress.checkCanceled();
        prepareTarget(pathNormalize, options.getTargetPolicy());
        try {
            extractionProgress.emit(null);
            extractEntries(source, pathNormalize, policy, extractionProgress, options.getBufferSize());
            return new ExtractedArchive(pathNormalize, cleanupOnClose);
        } catch (Throwable th) {
            if (zExists) {
                FileTreeCleaner.INSTANCE.deleteContents(pathNormalize);
                throw th;
            }
            FileTreeCleaner.INSTANCE.deleteRecursively(pathNormalize);
            throw th;
        }
    }

    private final void prepareTarget(Path root, ExtractionTargetPolicy targetPolicy) throws Exception {
        if (Files.exists(root, new LinkOption[0])) {
            int i = WhenMappings.$EnumSwitchMapping$0[targetPolicy.ordinal()];
            if (i == 1) {
                if (!Files.isDirectory(root, new LinkOption[0])) {
                    throw new ExtractionTargetException(root, "target exists but is not a directory");
                }
                if (!isDirectoryEmpty(root)) {
                    throw new ExtractionTargetException(root, "target directory must be empty");
                }
                return;
            }
            if (i == 2) {
                if (!Files.isDirectory(root, new LinkOption[0])) {
                    throw new ExtractionTargetException(root, "target exists but is not a directory");
                }
                FileTreeCleaner.INSTANCE.deleteContents(root);
                return;
            } else {
                if (i != 3) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                    return;
                }
                FileTreeCleaner.INSTANCE.deleteRecursively(root);
            }
        }
        Files.createDirectories(root, new FileAttribute[0]);
    }

    private final boolean isDirectoryEmpty(Path root) throws Exception {
        Stream<Path> list = Files.list(root);
        try {
            boolean z = !list.findAny().isPresent();
            AutoCloseableKt.closeFinally(list, null);
            return z;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [org.simplifiles.internal.archive.zip.ZipArchiveExtractor] */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.io.Closeable, java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.zip.ZipEntry] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void extractEntries(Path source, Path root, SecurityPolicy policy, ExtractionProgress progress, int bufferSize) {
        SecurityPolicy securityPolicy = policy;
        ?? zipFile = new ZipFile(source.toFile());
        try {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            long jCheckedAddTotal = 0;
            for (?? r3 : SequencesKt.asSequence(CollectionsKt.iterator(zipFile.entries()))) {
                progress.checkCanceled();
                ?? r0 = INSTANCE;
                String strDestinationPathFor = r0.destinationPathFor(r3, linkedHashSet, securityPolicy);
                if (strDestinationPathFor == null) {
                    progress.entryCompleted(r3.getName());
                } else {
                    Path pathResolve = ArchivePathResolver.INSTANCE.resolve(root, strDestinationPathFor, securityPolicy.getAllowAbsolutePaths());
                    if (r3.isDirectory()) {
                        Files.createDirectories(pathResolve, new FileAttribute[0]);
                        progress.entryCompleted(strDestinationPathFor);
                    } else {
                        Files.createDirectories(pathResolve.getParent(), new FileAttribute[0]);
                        if (securityPolicy.getDuplicatePolicy() == DuplicatePolicy.KEEP_LAST) {
                            Files.deleteIfExists(pathResolve);
                        }
                        long j = jCheckedAddTotal;
                        InputStream inputStream = zipFile.getInputStream(r3);
                        try {
                            OutputStream outputStreamNewOutputStream = Files.newOutputStream(pathResolve, StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE);
                            try {
                                long jCopyWithLimits = r0.copyWithLimits(inputStream, outputStreamNewOutputStream, r3, j, securityPolicy, progress, strDestinationPathFor, bufferSize);
                                r3 = inputStream;
                                try {
                                    CloseableKt.closeFinally(outputStreamNewOutputStream, null);
                                    CloseableKt.closeFinally(r3, null);
                                    securityPolicy = policy;
                                    jCheckedAddTotal = r0.checkedAddTotal(j, jCopyWithLimits, securityPolicy, r3.getName());
                                    r0.validateRuntimeCompressionRatio(r3, jCopyWithLimits, securityPolicy);
                                    progress.entryCompleted(strDestinationPathFor);
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        CloseableKt.closeFinally(r3, th2);
                                        throw th3;
                                    }
                                }
                            } finally {
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r3 = inputStream;
                        }
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(zipFile, null);
        } finally {
        }
    }

    private final String destinationPathFor(ZipEntry entry, Set<String> destinationPaths, SecurityPolicy policy) throws ArchiveValidationException {
        String normalizedPath = ArchivePathAnalyzer.INSTANCE.analyze(entry.getName()).getNormalizedPath();
        if (normalizedPath == null) {
            failValidation("archive.entry.path.invalid", "Archive entry path is invalid.", entry.getName());
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return null;
        }
        if (!destinationPaths.add(normalizedPath)) {
            int i = WhenMappings.$EnumSwitchMapping$1[policy.getDuplicatePolicy().ordinal()];
            if (i == 1) {
                failValidation("archive.entry.duplicate", "Archive contains duplicate entry path: " + normalizedPath + '.', entry.getName());
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            if (i == 2) {
                return null;
            }
            if (i != 3) {
                if (i != 4) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                    return null;
                }
                return renamedPath(normalizedPath, destinationPaths);
            }
        }
        return normalizedPath;
    }

    private final String renamedPath(String path, Set<String> destinationPaths) {
        String str;
        String strSubstringBeforeLast = StringsKt.substringBeforeLast(path, '/', _UrlKt.FRAGMENT_ENCODE_SET);
        String strSubstringAfterLast$default = StringsKt.substringAfterLast$default(path, '/', (String) null, 2, (Object) null);
        String strSubstringBeforeLast2 = StringsKt.substringBeforeLast(strSubstringAfterLast$default, '.', strSubstringAfterLast$default);
        String strSubstringAfterLast = StringsKt.substringAfterLast(strSubstringAfterLast$default, '.', _UrlKt.FRAGMENT_ENCODE_SET);
        int i = 1;
        while (true) {
            if (strSubstringAfterLast.length() == 0) {
                str = strSubstringBeforeLast2 + SignatureVisitor.SUPER + i;
            } else {
                str = strSubstringBeforeLast2 + SignatureVisitor.SUPER + i + '.' + strSubstringAfterLast;
            }
            if (strSubstringBeforeLast.length() != 0) {
                str = strSubstringBeforeLast + '/' + str;
            }
            if (destinationPaths.add(str)) {
                return str;
            }
            if (i == Integer.MAX_VALUE) {
                BaseRoomConnectionManager$$ExternalSyntheticBUOutline0.m199m("Unable to generate unique archive entry name for ", path, 46);
                return null;
            }
            i++;
        }
    }

    private final long copyWithLimits(InputStream input, OutputStream output, ZipEntry entry, long totalWritten, SecurityPolicy policy, ExtractionProgress progress, String destinationPath, int bufferSize) throws IOException {
        byte[] bArr = new byte[bufferSize];
        long j = 0;
        while (true) {
            progress.checkCanceled();
            int i = input.read(bArr);
            if (i < 0) {
                return j;
            }
            long j2 = i;
            long jCheckedAddEntry = checkedAddEntry(j, j2, policy, entry.getName());
            checkedAddTotal(totalWritten, jCheckedAddEntry, policy, entry.getName());
            output.write(bArr, 0, i);
            progress.bytesWritten(j2, destinationPath);
            j = jCheckedAddEntry;
        }
    }

    private final long knownUncompressedSize(List<ArchiveEntryInfo> entries) {
        Iterator it = SequencesKt.filter(SequencesKt.map(SequencesKt.filterNot(CollectionsKt.asSequence(entries), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveExtractor$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(((ArchiveEntryInfo) obj).getIsDirectory());
            }
        }), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveExtractor$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Long.valueOf(((ArchiveEntryInfo) obj).getUncompressedSize());
            }
        }), new Function1() { // from class: org.simplifiles.internal.archive.zip.ZipArchiveExtractor$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(ZipArchiveExtractor.$r8$lambda$I0VupinfQHn1k287rurTObXXIUI(((Long) obj).longValue()));
            }
        }).iterator();
        long jSaturatingPlus = 0;
        while (it.hasNext()) {
            jSaturatingPlus = SaturatingMathKt.saturatingPlus(jSaturatingPlus, ((Number) it.next()).longValue());
        }
        return jSaturatingPlus;
    }

    public static boolean $r8$lambda$I0VupinfQHn1k287rurTObXXIUI(long j) {
        return j > 0;
    }

    private final long checkedAddEntry(long current, long added, SecurityPolicy policy, String path) throws ArchiveValidationException {
        if (LongCompanionObject.MAX_VALUE - current < added) {
            failValidation("archive.entry.size.overflow", "Archive entry size overflows Long.", path);
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return 0L;
        }
        long j = current + added;
        if (j <= policy.getMaxSingleFileSize()) {
            return j;
        }
        failValidation("archive.entry.size.too_large", "Archive entry exceeded " + policy.getMaxSingleFileSize() + " bytes while extracting.", path);
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return 0L;
    }

    private final long checkedAddTotal(long current, long added, SecurityPolicy policy, String path) throws ArchiveValidationException {
        if (LongCompanionObject.MAX_VALUE - current < added) {
            failValidation("archive.total_size.overflow", "Archive total size overflows Long.", path);
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return 0L;
        }
        long j = current + added;
        if (j <= policy.getMaxTotalUncompressedSize()) {
            return j;
        }
        failValidation("archive.total_size.too_large", "Archive exceeded " + policy.getMaxTotalUncompressedSize() + " total bytes while extracting.", path);
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return 0L;
    }

    private final void validateRuntimeCompressionRatio(ZipEntry entry, long written, SecurityPolicy policy) throws ArchiveValidationException {
        if (entry.getCompressedSize() < 0 || written <= 0) {
            return;
        }
        double compressedSize = entry.getCompressedSize() == 0 ? Double.POSITIVE_INFINITY : written / entry.getCompressedSize();
        if (compressedSize <= policy.getMaxCompressionRatio()) {
            return;
        }
        failValidation("archive.entry.compression_ratio.too_high", "Archive entry compression ratio is " + compressedSize + ", limit is " + policy.getMaxCompressionRatio() + '.', entry.getName());
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
    }

    private final Void failValidation(String code, String message, String path) throws ArchiveValidationException {
        throw new ArchiveValidationException(new ValidationReport(ArchiveFormat.ZIP, null, CollectionsKt.listOf(new ArchiveIssue(ArchiveIssueSeverity.ERROR, code, message, path)), 2, null));
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\n\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0011\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lorg/simplifiles/internal/archive/zip/ZipArchiveExtractor$ExtractionProgress;", _UrlKt.FRAGMENT_ENCODE_SET, "options", "Lorg/simplifiles/archive/ArchiveExtractionOptions;", "totalEntries", _UrlKt.FRAGMENT_ENCODE_SET, "totalBytes", "<init>", "(Lorg/simplifiles/archive/ArchiveExtractionOptions;JJ)V", "entriesProcessed", "bytesWritten", "checkCanceled", _UrlKt.FRAGMENT_ENCODE_SET, "bytes", "currentEntryPath", _UrlKt.FRAGMENT_ENCODE_SET, "entryCompleted", "emit", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ExtractionProgress {
        private long bytesWritten;
        private long entriesProcessed;
        private final ArchiveExtractionOptions options;
        private final long totalBytes;
        private final long totalEntries;

        public ExtractionProgress(ArchiveExtractionOptions archiveExtractionOptions, long j, long j2) {
            this.options = archiveExtractionOptions;
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
