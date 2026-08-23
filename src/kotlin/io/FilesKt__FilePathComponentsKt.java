package kotlin.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0082\u0080\u0004¢\u0006\u0002\b\u0003\u001a\u000e\u0010\u000e\u001a\u00020\u000f*\u00020\u0005H\u0080\u0080\u0004\u001a\u001e\u0010\u0010\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0080\u0080\u0004\"\u0019\u0010\u0004\u001a\u00020\u0002*\u00020\u00058@X\u0080\u0084\b¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\"\u0019\u0010\b\u001a\u00020\u0005*\u00020\u00058@X\u0080\u0084\b¢\u0006\u0006\u001a\u0004\b\t\u0010\n\"\u0019\u0010\u000b\u001a\u00020\f*\u00020\u00058FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\u000b\u0010\r¨\u0006\u0013"}, d2 = {"getRootLength", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getRootLength$FilesKt__FilePathComponentsKt", "rootName", "Ljava/io/File;", "getRootName", "(Ljava/io/File;)Ljava/lang/String;", "root", "getRoot", "(Ljava/io/File;)Ljava/io/File;", "isRooted", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/io/File;)Z", "toComponents", "Lkotlin/io/FilePathComponents;", "subPath", "beginIndex", "endIndex", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/io/FilesKt")
@SourceDebugExtension({"SMAP\nFilePathComponents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1586#2:150\n1661#2,3:151\n*S KotlinDebug\n*F\n+ 1 FilePathComponents.kt\nkotlin/io/FilesKt__FilePathComponentsKt\n*L\n134#1:150\n134#1:151,3\n*E\n"})
class FilesKt__FilePathComponentsKt {
    private static final int getRootLength$FilesKt__FilePathComponentsKt(String str) {
        int iIndexOf$default;
        char c2 = File.separatorChar;
        int iIndexOf$default2 = StringsKt.indexOf$default((CharSequence) str, c2, 0, false, 4, (Object) null);
        if (iIndexOf$default2 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c2 || (iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, c2, 2, false, 4, (Object) null)) < 0) {
                return 1;
            }
            int iIndexOf$default3 = StringsKt.indexOf$default((CharSequence) str, c2, iIndexOf$default + 1, false, 4, (Object) null);
            return iIndexOf$default3 >= 0 ? iIndexOf$default3 + 1 : str.length();
        }
        if (iIndexOf$default2 > 0 && str.charAt(iIndexOf$default2 - 1) == ':') {
            return iIndexOf$default2 + 1;
        }
        if (iIndexOf$default2 == -1 && StringsKt.endsWith$default((CharSequence) str, ':', false, 2, (Object) null)) {
            return str.length();
        }
        return 0;
    }

    public static final String getRootName(File file) {
        return file.getPath().substring(0, getRootLength$FilesKt__FilePathComponentsKt(file.getPath()));
    }

    public static final File getRoot(File file) {
        return new File(getRootName(file));
    }

    public static final boolean isRooted(File file) {
        return getRootLength$FilesKt__FilePathComponentsKt(file.getPath()) > 0;
    }

    public static final FilePathComponents toComponents(File file) {
        List listEmptyList;
        String path = file.getPath();
        int rootLength$FilesKt__FilePathComponentsKt = getRootLength$FilesKt__FilePathComponentsKt(path);
        String strSubstring = path.substring(0, rootLength$FilesKt__FilePathComponentsKt);
        String strSubstring2 = path.substring(rootLength$FilesKt__FilePathComponentsKt);
        if (strSubstring2.length() == 0) {
            listEmptyList = CollectionsKt.emptyList();
        } else {
            List listSplit$default = StringsKt.split$default((CharSequence) strSubstring2, new char[]{File.separatorChar}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
            Iterator it = listSplit$default.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            listEmptyList = arrayList;
        }
        return new FilePathComponents(new File(strSubstring), listEmptyList);
    }

    public static final File subPath(File file, int i, int i2) {
        return toComponents(file).subPath(i, i2);
    }
}
