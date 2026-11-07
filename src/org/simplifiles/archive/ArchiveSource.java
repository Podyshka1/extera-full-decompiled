package org.simplifiles.archive;

import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.Paths;
import java.io.File;
import java.io.IOException;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.simplifiles.archive.security.SecurityPolicy;
import org.simplifiles.exception.ArchiveOperationCanceledException;
import org.simplifiles.exception.ArchiveValidationException;
import org.simplifiles.exception.CorruptedArchiveException;
import org.simplifiles.files.SimpliDirectory;
import org.simplifiles.internal.archive.ArchiveFormatDetector;
import org.simplifiles.internal.archive.ArchiveValidator;
import org.simplifiles.internal.archive.zip.ZipArchiveExtractor;
import org.simplifiles.internal.archive.zip.ZipArchiveReader;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001b\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u001a\u0010\u001cJ\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001a\u0010\u001fJ\u001d\u0010!\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b!\u0010\"J\u001d\u0010!\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b!\u0010#J\u001a\u0010&\u001a\u00020%2\b\u0010$\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\rH\u0016¢\u0006\u0004\b+\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010,\u001a\u0004\b-\u0010.R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010/\u001a\u0004\b0\u00101¨\u00062"}, d2 = {"Lorg/simplifiles/archive/ArchiveSource;", _UrlKt.FRAGMENT_ENCODE_SET, "j$/nio/file/Path", "path", "Lorg/simplifiles/archive/security/SecurityPolicy;", "policy", "<init>", "(Lj$/nio/file/Path;Lorg/simplifiles/archive/security/SecurityPolicy;)V", "Lorg/simplifiles/archive/ArchiveExtractionOptions;", "options", _UrlKt.FRAGMENT_ENCODE_SET, "ensureNotCanceled", "(Lorg/simplifiles/archive/ArchiveExtractionOptions;)V", _UrlKt.FRAGMENT_ENCODE_SET, "unreadableFileReason", "()Ljava/lang/String;", "code", "message", "Lorg/simplifiles/archive/ValidationReport;", "blockerReport", "(Ljava/lang/String;Ljava/lang/String;)Lorg/simplifiles/archive/ValidationReport;", "withPolicy", "(Lorg/simplifiles/archive/security/SecurityPolicy;)Lorg/simplifiles/archive/ArchiveSource;", "validate", "()Lorg/simplifiles/archive/ValidationReport;", "Lorg/simplifiles/archive/ExtractedArchive;", "extractTo", "(Lj$/nio/file/Path;)Lorg/simplifiles/archive/ExtractedArchive;", "(Lj$/nio/file/Path;Lorg/simplifiles/archive/ArchiveExtractionOptions;)Lorg/simplifiles/archive/ExtractedArchive;", "Ljava/io/File;", "file", "(Ljava/io/File;)Lorg/simplifiles/archive/ExtractedArchive;", "Lorg/simplifiles/files/SimpliDirectory;", "extractToDirectory", "(Lj$/nio/file/Path;Lorg/simplifiles/archive/ArchiveExtractionOptions;)Lorg/simplifiles/files/SimpliDirectory;", "(Ljava/io/File;Lorg/simplifiles/archive/ArchiveExtractionOptions;)Lorg/simplifiles/files/SimpliDirectory;", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "toString", "Lj$/nio/file/Path;", "getPath", "()Lj$/nio/file/Path;", "Lorg/simplifiles/archive/security/SecurityPolicy;", "getPolicy", "()Lorg/simplifiles/archive/security/SecurityPolicy;", "simplifiles"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
public final class ArchiveSource {
    private final Path path;
    private final SecurityPolicy policy;

    @Metadata(m910k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ArchiveFormat.values().length];
            try {
                iArr[ArchiveFormat.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ArchiveSource(Path path, SecurityPolicy securityPolicy) {
        this.path = path;
        this.policy = securityPolicy;
    }

    public /* synthetic */ ArchiveSource(Path path, SecurityPolicy securityPolicy, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(path, (i & 2) != 0 ? SecurityPolicy.INSTANCE.strict() : securityPolicy);
    }

    public final ArchiveSource withPolicy(SecurityPolicy policy) {
        return new ArchiveSource(this.path, policy);
    }

    public final ValidationReport validate() {
        String strUnreadableFileReason = unreadableFileReason();
        if (strUnreadableFileReason != null) {
            return blockerReport("archive.unreadable", strUnreadableFileReason);
        }
        try {
            ArchiveFormat archiveFormatDetect = ArchiveFormatDetector.INSTANCE.detect(this.path);
            if (archiveFormatDetect == null) {
                return blockerReport("archive.format.unsupported", "Unsupported archive format.");
            }
            try {
                if (WhenMappings.$EnumSwitchMapping$0[archiveFormatDetect.ordinal()] != 1) {
                    throw new NoWhenBranchMatchedException();
                }
                return ArchiveValidator.INSTANCE.validate(ZipArchiveReader.INSTANCE.inspect(this.path), this.policy);
            } catch (CorruptedArchiveException e) {
                ArchiveIssueSeverity archiveIssueSeverity = ArchiveIssueSeverity.BLOCKER;
                String message = e.getMessage();
                if (message == null) {
                    message = "Archive is corrupted.";
                }
                return new ValidationReport(archiveFormatDetect, null, CollectionsKt.listOf(new ArchiveIssue(archiveIssueSeverity, "archive.corrupted", message, null, 8, null)), 2, null);
            }
        } catch (IOException e2) {
            String message2 = e2.getMessage();
            if (message2 == null) {
                message2 = "Archive cannot be read.";
            }
            return blockerReport("archive.unreadable", message2);
        }
    }

    public final ExtractedArchive extractTo(Path path) {
        return extractTo(path, ArchiveExtractionOptions.INSTANCE.defaults());
    }

    public final ExtractedArchive extractTo(Path path, ArchiveExtractionOptions options) throws ArchiveValidationException, ArchiveOperationCanceledException {
        ensureNotCanceled(options);
        ValidationReport validationReportValidate = validate();
        if (!validationReportValidate.isSafe()) {
            throw new ArchiveValidationException(validationReportValidate);
        }
        ensureNotCanceled(options);
        ArchiveFormat format = validationReportValidate.getFormat();
        int i = format == null ? -1 : WhenMappings.$EnumSwitchMapping$0[format.ordinal()];
        if (i == -1) {
            throw new ArchiveValidationException(validationReportValidate);
        }
        if (i != 1) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
            return null;
        }
        return ZipArchiveExtractor.INSTANCE.extract(this.path, path, this.policy, false, validationReportValidate.getEntries(), options);
    }

    public final ExtractedArchive extractTo(File file) {
        return extractTo(Paths.get(file.getPath(), new String[0]));
    }

    public final SimpliDirectory extractToDirectory(Path path, ArchiveExtractionOptions options) throws Exception {
        ExtractedArchive extractedArchiveExtractTo = extractTo(path, options);
        try {
            SimpliDirectory simpliDirectory = new SimpliDirectory(extractedArchiveExtractTo.getRoot());
            AutoCloseableKt.closeFinally(extractedArchiveExtractTo, null);
            return simpliDirectory;
        } finally {
        }
    }

    public final SimpliDirectory extractToDirectory(File file, ArchiveExtractionOptions options) {
        return extractToDirectory(Paths.get(file.getPath(), new String[0]), options);
    }

    private final void ensureNotCanceled(ArchiveExtractionOptions options) throws ArchiveOperationCanceledException {
        if (options.getCancellationToken().isCancellationRequested()) {
            throw new ArchiveOperationCanceledException();
        }
    }

    private final String unreadableFileReason() {
        if (!Files.exists(this.path, new LinkOption[0])) {
            return "Archive file does not exist.";
        }
        if (Files.isRegularFile(this.path, new LinkOption[0])) {
            return null;
        }
        return "Archive path is not a regular file.";
    }

    private final ValidationReport blockerReport(String code, String message) {
        return new ValidationReport(null, null, CollectionsKt.listOf(new ArchiveIssue(ArchiveIssueSeverity.BLOCKER, code, message, null, 8, null)), 3, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ArchiveSource)) {
            return false;
        }
        ArchiveSource archiveSource = (ArchiveSource) other;
        return Intrinsics.areEqual(this.path, archiveSource.path) && Intrinsics.areEqual(this.policy, archiveSource.policy);
    }

    public int hashCode() {
        return (this.path.hashCode() * 31) + this.policy.hashCode();
    }

    public String toString() {
        return "ArchiveSource(path=" + this.path + ", policy=" + this.policy + ')';
    }
}
