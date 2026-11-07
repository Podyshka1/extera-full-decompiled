package kotlin.io;

import androidx.core.os.BundleKt$$ExternalSyntheticBUOutline0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\u001a,\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0087\u0080\u0004\u001a,\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0087\u0080\u0004\u001a\u0016\u0010\u000e\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010\u0010\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u0003*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b\u0014\u001a*\u0010\u0015\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00012\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u0087\u0080\b\u001a<\u0010\u001b\u001a\u00020\u0018*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00012\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u001a\b\u0002\u0010\u001c\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u001dH\u0087\u0080\b\u001a\u000e\u0010 \u001a\u00020\u0018*\u00020\u0001H\u0087\u0080\b\u001a\u0016\u0010!\u001a\u00020\u0018*\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010!\u001a\u00020\u0018*\u00020\u00012\u0006\u0010\"\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u0016\u0010#\u001a\u00020\u0018*\u00020\u00012\u0006\u0010\"\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010#\u001a\u00020\u0018*\u00020\u00012\u0006\u0010\"\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u000e\u0010$\u001a\u00020\u0001*\u00020\u0001H\u0086\u0080\u0004\u001a\u0013\u0010$\u001a\u00020%*\u00020%H\u0082\u0080\u0004¢\u0006\u0002\b&\u001a\u001f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00010'*\b\u0012\u0004\u0012\u00020\u00010'H\u0082\u0080\u0004¢\u0006\u0002\b&\u001a\u0016\u0010(\u001a\u00020\u0001*\u00020\u00012\u0006\u0010)\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010(\u001a\u00020\u0001*\u00020\u00012\u0006\u0010)\u001a\u00020\u0003H\u0086\u0080\u0004\u001a\u0016\u0010*\u001a\u00020\u0001*\u00020\u00012\u0006\u0010)\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u0010*\u001a\u00020\u0001*\u00020\u00012\u0006\u0010)\u001a\u00020\u0003H\u0086\u0080\u0004\"\u0019\u0010\u0007\u001a\u00020\u0003*\u00020\u00018FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\b\u0010\t\"\u0019\u0010\n\u001a\u00020\u0003*\u00020\u00018FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\u000b\u0010\t\"\u0019\u0010\f\u001a\u00020\u0003*\u00020\u00018FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\r\u0010\t¨\u0006+"}, d2 = {"createTempDir", "Ljava/io/File;", "prefix", _UrlKt.FRAGMENT_ENCODE_SET, "suffix", "directory", "createTempFile", "extension", "getExtension", "(Ljava/io/File;)Ljava/lang/String;", "invariantSeparatorsPath", "getInvariantSeparatorsPath", "nameWithoutExtension", "getNameWithoutExtension", "toRelativeString", "base", "relativeTo", "relativeToOrSelf", "relativeToOrNull", "toRelativeStringOrNull", "toRelativeStringOrNull$FilesKt__UtilsKt", "copyTo", "target", "overwrite", _UrlKt.FRAGMENT_ENCODE_SET, "bufferSize", _UrlKt.FRAGMENT_ENCODE_SET, "copyRecursively", "onError", "Lkotlin/Function2;", "Ljava/io/IOException;", "Lkotlin/io/OnErrorAction;", "deleteRecursively", "startsWith", "other", "endsWith", "normalize", "Lkotlin/io/FilePathComponents;", "normalize$FilesKt__UtilsKt", _UrlKt.FRAGMENT_ENCODE_SET, "resolve", "relative", "resolveSibling", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/FilesKt")
@SourceDebugExtension({"SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,478:1\n1#2:479\n1313#3,3:480\n*S KotlinDebug\n*F\n+ 1 Utils.kt\nkotlin/io/FilesKt__UtilsKt\n*L\n352#1:480,3\n*E\n"})
public class FilesKt__UtilsKt extends FilesKt__FileTreeWalkKt {
    public static /* synthetic */ File createTempDir$default(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "tmp";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return createTempDir(str, str2, file);
    }

    @Deprecated(message = "Avoid creating temporary directories in the default temp location with this function due to too wide permissions on the newly created directory. Use kotlin.io.path.createTempDirectory instead.")
    @DeprecatedSinceKotlin(errorSince = MVEL.VERSION, warningSince = "1.4")
    public static final File createTempDir(String str, String str2, File file) throws IOException {
        File fileCreateTempFile = File.createTempFile(str, str2, file);
        fileCreateTempFile.delete();
        if (fileCreateTempFile.mkdir()) {
            return fileCreateTempFile;
        }
        throw new IOException("Unable to create temporary directory " + fileCreateTempFile + '.');
    }

    public static /* synthetic */ File createTempFile$default(String str, String str2, File file, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "tmp";
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            file = null;
        }
        return createTempFile(str, str2, file);
    }

    @Deprecated(message = "Avoid creating temporary files in the default temp location with this function due to too wide permissions on the newly created file. Use kotlin.io.path.createTempFile instead or resort to java.io.File.createTempFile.")
    @DeprecatedSinceKotlin(errorSince = MVEL.VERSION, warningSince = "1.4")
    public static final File createTempFile(String str, String str2, File file) {
        return File.createTempFile(str, str2, file);
    }

    public static String getExtension(File file) {
        return StringsKt.substringAfterLast(file.getName(), '.', _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public static String getInvariantSeparatorsPath(File file) {
        char c2 = File.separatorChar;
        return c2 != '/' ? StringsKt.replace$default(file.getPath(), c2, '/', false, 4, (Object) null) : file.getPath();
    }

    public static final String getNameWithoutExtension(File file) {
        return StringsKt.substringBeforeLast$default(file.getName(), ".", (String) null, 2, (Object) null);
    }

    public static final String toRelativeString(File file, File file2) {
        String relativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(file, file2);
        if (relativeStringOrNull$FilesKt__UtilsKt != null) {
            return relativeStringOrNull$FilesKt__UtilsKt;
        }
        BundleKt$$ExternalSyntheticBUOutline0.m102m("this and base files have different roots: ", file, " and ", file2, 46);
        return null;
    }

    public static File relativeTo(File file, File file2) {
        return new File(toRelativeString(file, file2));
    }

    public static final File relativeToOrSelf(File file, File file2) {
        String relativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(file, file2);
        return relativeStringOrNull$FilesKt__UtilsKt != null ? new File(relativeStringOrNull$FilesKt__UtilsKt) : file;
    }

    public static final File relativeToOrNull(File file, File file2) {
        String relativeStringOrNull$FilesKt__UtilsKt = toRelativeStringOrNull$FilesKt__UtilsKt(file, file2);
        if (relativeStringOrNull$FilesKt__UtilsKt != null) {
            return new File(relativeStringOrNull$FilesKt__UtilsKt);
        }
        return null;
    }

    private static final String toRelativeStringOrNull$FilesKt__UtilsKt(File file, File file2) {
        FilePathComponents filePathComponentsNormalize$FilesKt__UtilsKt = normalize$FilesKt__UtilsKt(FilesKt__FilePathComponentsKt.toComponents(file));
        FilePathComponents filePathComponentsNormalize$FilesKt__UtilsKt2 = normalize$FilesKt__UtilsKt(FilesKt__FilePathComponentsKt.toComponents(file2));
        if (!Intrinsics.areEqual(filePathComponentsNormalize$FilesKt__UtilsKt.getRoot(), filePathComponentsNormalize$FilesKt__UtilsKt2.getRoot())) {
            return null;
        }
        int size = filePathComponentsNormalize$FilesKt__UtilsKt2.getSize();
        int size2 = filePathComponentsNormalize$FilesKt__UtilsKt.getSize();
        int iMin = Math.min(size2, size);
        int i = 0;
        while (i < iMin && Intrinsics.areEqual(filePathComponentsNormalize$FilesKt__UtilsKt.getSegments().get(i), filePathComponentsNormalize$FilesKt__UtilsKt2.getSegments().get(i))) {
            i++;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = size - 1;
        if (i <= i2) {
            while (!Intrinsics.areEqual(filePathComponentsNormalize$FilesKt__UtilsKt2.getSegments().get(i2).getName(), "..")) {
                sb.append("..");
                if (i2 != i) {
                    sb.append(File.separatorChar);
                }
                if (i2 != i) {
                    i2--;
                }
            }
            return null;
        }
        if (i < size2) {
            if (i < size) {
                sb.append(File.separatorChar);
            }
            CollectionsKt.joinTo$default(CollectionsKt.drop(filePathComponentsNormalize$FilesKt__UtilsKt.getSegments(), i), sb, File.separator, null, null, 0, null, null, 124, null);
        }
        return sb.toString();
    }

    public static /* synthetic */ File copyTo$default(File file, File file2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 8192;
        }
        return copyTo(file, file2, z, i);
    }

    @IgnorableReturnValue
    public static final File copyTo(File file, File file2, boolean z, int i) throws FileSystemException {
        if (!file.exists()) {
            throw new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null);
        }
        if (file2.exists()) {
            if (!z) {
                throw new FileAlreadyExistsException(file, file2, "The destination file already exists.");
            }
            if (!file2.delete()) {
                throw new FileAlreadyExistsException(file, file2, "Tried to overwrite the destination, but failed to delete it.");
            }
        }
        if (file.isDirectory()) {
            if (file2.mkdirs()) {
                return file2;
            }
            throw new FileSystemException(file, file2, "Failed to create target directory.");
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, i);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                CloseableKt.closeFinally(fileInputStream, null);
                return file2;
            } finally {
            }
        } finally {
        }
    }

    public static /* synthetic */ boolean copyRecursively$default(File file, File file2, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            function2 = new Function2() { // from class: kotlin.io.FilesKt__UtilsKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return FilesKt__UtilsKt.copyRecursively$lambda$0$FilesKt__UtilsKt((File) obj2, (IOException) obj3);
                }
            };
        }
        return copyRecursively(file, file2, z, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OnErrorAction copyRecursively$lambda$0$FilesKt__UtilsKt(File file, IOException iOException) throws IOException {
        throw iOException;
    }

    @IgnorableReturnValue
    public static final boolean copyRecursively(File file, File file2, boolean z, final Function2<? super File, ? super IOException, ? extends OnErrorAction> function2) {
        if (!file.exists()) {
            return function2.invoke(file, new NoSuchFileException(file, null, "The source file doesn't exist.", 2, null)) != OnErrorAction.TERMINATE;
        }
        try {
            for (File file3 : FilesKt__FileTreeWalkKt.walkTopDown(file).onFail(new Function2() { // from class: kotlin.io.FilesKt__UtilsKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return FilesKt__UtilsKt.copyRecursively$lambda$1$FilesKt__UtilsKt(function2, (File) obj, (IOException) obj2);
                }
            })) {
                if (!file3.exists()) {
                    if (function2.invoke(file3, new NoSuchFileException(file3, null, "The source file doesn't exist.", 2, null)) == OnErrorAction.TERMINATE) {
                        return false;
                    }
                } else {
                    File file4 = new File(file2, toRelativeString(file3, file));
                    if (file4.exists() && (!file3.isDirectory() || !file4.isDirectory())) {
                        if (z) {
                            if (file4.isDirectory()) {
                                if (!deleteRecursively(file4)) {
                                }
                            } else if (!file4.delete()) {
                            }
                        }
                        if (function2.invoke(file4, new FileAlreadyExistsException(file3, file4, "The destination file already exists.")) == OnErrorAction.TERMINATE) {
                            return false;
                        }
                    }
                    if (file3.isDirectory()) {
                        file4.mkdirs();
                    } else {
                        boolean z2 = z;
                        if (copyTo$default(file3, file4, z2, 0, 4, null).length() != file3.length() && function2.invoke(file3, new IOException("Source file wasn't copied completely, length of destination file differs.")) == OnErrorAction.TERMINATE) {
                            return false;
                        }
                        z = z2;
                    }
                }
            }
            return true;
        } catch (TerminateException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit copyRecursively$lambda$1$FilesKt__UtilsKt(Function2 function2, File file, IOException iOException) throws TerminateException {
        if (function2.invoke(file, iOException) != OnErrorAction.TERMINATE) {
            return Unit.INSTANCE;
        }
        throw new TerminateException(file);
    }

    @IgnorableReturnValue
    public static boolean deleteRecursively(File file) {
        while (true) {
            boolean z = true;
            for (File file2 : FilesKt__FileTreeWalkKt.walkBottomUp(file)) {
                if (!file2.delete() && file2.exists()) {
                    z = false;
                } else {
                    if (z) {
                        break;
                    }
                    z = false;
                }
            }
            return z;
        }
    }

    public static final boolean startsWith(File file, File file2) {
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(file);
        FilePathComponents components2 = FilesKt__FilePathComponentsKt.toComponents(file2);
        if (Intrinsics.areEqual(components.getRoot(), components2.getRoot()) && components.getSize() >= components2.getSize()) {
            return components.getSegments().subList(0, components2.getSize()).equals(components2.getSegments());
        }
        return false;
    }

    public static final boolean startsWith(File file, String str) {
        return startsWith(file, new File(str));
    }

    public static final boolean endsWith(File file, File file2) {
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(file);
        FilePathComponents components2 = FilesKt__FilePathComponentsKt.toComponents(file2);
        if (components2.isRooted()) {
            return Intrinsics.areEqual(file, file2);
        }
        int size = components.getSize() - components2.getSize();
        if (size < 0) {
            return false;
        }
        return components.getSegments().subList(size, components.getSize()).equals(components2.getSegments());
    }

    public static final boolean endsWith(File file, String str) {
        return endsWith(file, new File(str));
    }

    public static final File normalize(File file) {
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(file);
        return resolve(components.getRoot(), CollectionsKt.joinToString$default(normalize$FilesKt__UtilsKt(components.getSegments()), File.separator, null, null, 0, null, null, 62, null));
    }

    private static final FilePathComponents normalize$FilesKt__UtilsKt(FilePathComponents filePathComponents) {
        return new FilePathComponents(filePathComponents.getRoot(), normalize$FilesKt__UtilsKt(filePathComponents.getSegments()));
    }

    private static final List<File> normalize$FilesKt__UtilsKt(List<? extends File> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (File file : list) {
            String name = file.getName();
            if (Intrinsics.areEqual(name, ".")) {
                Unit unit = Unit.INSTANCE;
            } else if (Intrinsics.areEqual(name, "..")) {
                if (arrayList.isEmpty() || Intrinsics.areEqual(((File) CollectionsKt.last((List) arrayList)).getName(), "..")) {
                    arrayList.add(file);
                }
            } else {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public static final File resolve(File file, File file2) {
        if (FilesKt__FilePathComponentsKt.isRooted(file2)) {
            return file2;
        }
        String string = file.toString();
        if (string.length() != 0) {
            char c2 = File.separatorChar;
            if (!StringsKt.endsWith$default((CharSequence) string, c2, false, 2, (Object) null)) {
                return new File(string + c2 + file2);
            }
        }
        return new File(string + file2);
    }

    public static final File resolve(File file, String str) {
        return resolve(file, new File(str));
    }

    public static final File resolveSibling(File file, File file2) {
        FilePathComponents components = FilesKt__FilePathComponentsKt.toComponents(file);
        return resolve(resolve(components.getRoot(), components.getSize() == 0 ? new File("..") : components.subPath(0, components.getSize() - 1)), file2);
    }

    public static final File resolveSibling(File file, String str) {
        return resolveSibling(file, new File(str));
    }
}
