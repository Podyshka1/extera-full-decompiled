package j$.desugar.sun.nio.fs;

import com.google.android.gms.cast.CastStatusCodes;
import j$.nio.file.C2148b;
import j$.nio.file.C2149c;
import j$.nio.file.C2150d;
import j$.nio.file.C2172v;
import j$.nio.file.C2173w;
import j$.nio.file.C2175y;
import j$.nio.file.C2176z;
import j$.nio.file.CopyOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.attribute.BasicFileAttributeView;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.C2122a;
import j$.nio.file.attribute.C2128g;
import j$.nio.file.attribute.C2129h;
import j$.nio.file.attribute.C2130i;
import j$.nio.file.attribute.C2131j;
import j$.nio.file.attribute.C2132k;
import j$.nio.file.attribute.C2141t;
import j$.nio.file.attribute.C2142u;
import j$.nio.file.attribute.C2143v;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileTime;
import j$.nio.file.attribute.InterfaceC2137p;
import j$.nio.file.attribute.PosixFilePermission;
import j$.nio.file.i0;
import j$.nio.file.l0;
import j$.nio.file.m0;
import j$.nio.file.n0;
import j$.time.C2183a;
import j$.time.ZoneId;
import j$.util.C2280a;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.NoSuchFileException;
import java.nio.file.StandardOpenOption;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileOwnerAttributeView;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFileAttributes;
import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.g */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2108g {
    /* JADX INFO: renamed from: A */
    public static C2183a m503A() {
        return new C2183a(ZoneId.systemDefault());
    }

    /* JADX INFO: renamed from: a */
    public static String m504a(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(CastStatusCodes.DEVICE_CONNECTION_SUSPENDED, 1, (int) j, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: renamed from: b */
    public static String m505b(long j, String str, Locale locale) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(0, (int) j, 0, 0, 0, 0);
        return simpleDateFormat.format(calendar.getTime());
    }

    /* JADX INFO: renamed from: c */
    public static FileTime m506c(java.nio.file.attribute.FileTime fileTime) {
        if (fileTime == null) {
            return null;
        }
        return FileTime.fromMillis(fileTime.toMillis());
    }

    /* JADX INFO: renamed from: d */
    public static /* synthetic */ StandardOpenOption m507d(j$.nio.file.StandardOpenOption standardOpenOption) {
        if (standardOpenOption == null) {
            return null;
        }
        return standardOpenOption == j$.nio.file.StandardOpenOption.READ ? StandardOpenOption.READ : standardOpenOption == j$.nio.file.StandardOpenOption.WRITE ? StandardOpenOption.WRITE : standardOpenOption == j$.nio.file.StandardOpenOption.APPEND ? StandardOpenOption.APPEND : standardOpenOption == j$.nio.file.StandardOpenOption.TRUNCATE_EXISTING ? StandardOpenOption.TRUNCATE_EXISTING : standardOpenOption == j$.nio.file.StandardOpenOption.CREATE ? StandardOpenOption.CREATE : standardOpenOption == j$.nio.file.StandardOpenOption.CREATE_NEW ? StandardOpenOption.CREATE_NEW : standardOpenOption == j$.nio.file.StandardOpenOption.DELETE_ON_CLOSE ? StandardOpenOption.DELETE_ON_CLOSE : standardOpenOption == j$.nio.file.StandardOpenOption.SPARSE ? StandardOpenOption.SPARSE : standardOpenOption == j$.nio.file.StandardOpenOption.SYNC ? StandardOpenOption.SYNC : StandardOpenOption.DSYNC;
    }

    /* JADX INFO: renamed from: e */
    public static java.nio.file.attribute.FileTime m508e(FileTime fileTime) {
        if (fileTime == null) {
            return null;
        }
        return java.nio.file.attribute.FileTime.fromMillis(fileTime.toMillis());
    }

    /* JADX INFO: renamed from: f */
    public static Object m509f(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof Path ? C2176z.m636s((Path) obj) : obj instanceof java.nio.file.Path ? C2175y.m635s((java.nio.file.Path) obj) : obj;
    }

    /* JADX INFO: renamed from: g */
    public static void m510g(Path path, Path path2, CopyOption... copyOptionArr) throws IOException {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = true;
        for (CopyOption copyOption : copyOptionArr) {
            if (copyOption == StandardCopyOption.REPLACE_EXISTING) {
                z = true;
            } else if (copyOption == LinkOption.NOFOLLOW_LINKS) {
                z3 = false;
            } else {
                if (copyOption != StandardCopyOption.COPY_ATTRIBUTES) {
                    copyOption.getClass();
                    C2148b.m612e("'", copyOption, "' is not a recognized copy option");
                    return;
                }
                z2 = true;
            }
        }
        BasicFileAttributes attributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, z3 ? new LinkOption[0] : new LinkOption[]{LinkOption.NOFOLLOW_LINKS});
        if (attributes.isSymbolicLink()) {
            throw new IOException("Copying of symbolic links not supported");
        }
        if (z) {
            Files.deleteIfExists(path2);
        } else if (Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (attributes.isDirectory()) {
            Files.createDirectory(path2, new FileAttribute[0]);
        } else {
            InputStream inputStreamNewInputStream = Files.newInputStream(path, new OpenOption[0]);
            try {
                Files.m596a(inputStreamNewInputStream, path2, new CopyOption[0]);
                inputStreamNewInputStream.close();
            } catch (Throwable th) {
                if (inputStreamNewInputStream != null) {
                    try {
                        inputStreamNewInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (z2) {
            try {
                ((BasicFileAttributeView) Files.getFileAttributeView(path2, BasicFileAttributeView.class, new LinkOption[0])).mo502a(attributes.lastModifiedTime(), attributes.lastAccessTime(), attributes.creationTime());
            } catch (Throwable th3) {
                try {
                    Files.delete(path2);
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public static Class m511h(Class cls) {
        if (cls == null) {
            return null;
        }
        if (cls == java.nio.file.attribute.BasicFileAttributeView.class) {
            return BasicFileAttributeView.class;
        }
        if (cls == BasicFileAttributeView.class) {
            return java.nio.file.attribute.BasicFileAttributeView.class;
        }
        if (cls == PosixFileAttributeView.class) {
            return C2141t.class;
        }
        if (cls == C2141t.class) {
            return PosixFileAttributeView.class;
        }
        if (cls == FileOwnerAttributeView.class) {
            return InterfaceC2137p.class;
        }
        if (cls == InterfaceC2137p.class) {
            return FileOwnerAttributeView.class;
        }
        if (cls == C2128g.class) {
            return DosFileAttributeView.class;
        }
        if (cls == DosFileAttributeView.class) {
            return C2128g.class;
        }
        if (cls == C2143v.class) {
            return UserDefinedFileAttributeView.class;
        }
        if (cls == UserDefinedFileAttributeView.class) {
            return C2143v.class;
        }
        if (cls == C2122a.class) {
            return AclFileAttributeView.class;
        }
        if (cls == AclFileAttributeView.class) {
            return C2122a.class;
        }
        C2280a.m859a("java.nio.file.attribute.FileAttributeView", cls);
        throw null;
    }

    /* JADX INFO: renamed from: i */
    public static Class m512i(Class cls) {
        if (cls == null) {
            return null;
        }
        if (cls == java.nio.file.attribute.BasicFileAttributes.class) {
            return BasicFileAttributes.class;
        }
        if (cls == BasicFileAttributes.class) {
            return java.nio.file.attribute.BasicFileAttributes.class;
        }
        if (cls == PosixFileAttributes.class) {
            return C2142u.class;
        }
        if (cls == C2142u.class) {
            return PosixFileAttributes.class;
        }
        if (cls == C2129h.class) {
            return DosFileAttributes.class;
        }
        if (cls == DosFileAttributes.class) {
            return C2129h.class;
        }
        C2280a.m859a("java.nio.file.attribute.BasicFileAttributes", cls);
        throw null;
    }

    /* JADX INFO: renamed from: j */
    public static Map m513j(Map map) {
        if (map == null || map.isEmpty()) {
            return map;
        }
        HashMap map2 = new HashMap();
        for (String str : map.keySet()) {
            map2.put(str, m514k(map.get(str)));
        }
        return map2;
    }

    /* JADX INFO: renamed from: k */
    public static Object m514k(Object obj) {
        if (obj instanceof java.nio.file.attribute.FileTime) {
            try {
                return m506c((java.nio.file.attribute.FileTime) obj);
            } catch (ClassCastException e) {
                C2280a.m859a("java.nio.file.attribute.FileTime", e);
                throw null;
            }
        }
        if (!(obj instanceof FileTime)) {
            return obj;
        }
        try {
            return m508e((FileTime) obj);
        } catch (ClassCastException e2) {
            C2280a.m859a("java.nio.file.attribute.FileTime", e2);
            throw null;
        }
    }

    /* JADX INFO: renamed from: l */
    public static Set m515l(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof OpenOption) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    hashSet.add(C2173w.m634a((OpenOption) it.next()));
                } catch (ClassCastException e) {
                    C2280a.m859a("java.nio.file.OpenOption", e);
                    throw null;
                }
            }
        } else {
            if (!(next instanceof java.nio.file.OpenOption)) {
                C2280a.m859a("java.nio.file.OpenOption", next.getClass());
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    hashSet.add(C2172v.m633a((java.nio.file.OpenOption) it2.next()));
                } catch (ClassCastException e2) {
                    C2280a.m859a("java.nio.file.OpenOption", e2);
                    throw null;
                }
            }
        }
        return hashSet;
    }

    /* JADX INFO: renamed from: m */
    public static Set m516m(Set set) {
        if (set == null || set.isEmpty()) {
            return set;
        }
        HashSet hashSet = new HashSet();
        Object next = set.iterator().next();
        if (next instanceof PosixFilePermission) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                try {
                    PosixFilePermission posixFilePermission = (PosixFilePermission) it.next();
                    hashSet.add(posixFilePermission == null ? null : posixFilePermission == PosixFilePermission.OWNER_READ ? java.nio.file.attribute.PosixFilePermission.OWNER_READ : posixFilePermission == PosixFilePermission.OWNER_WRITE ? java.nio.file.attribute.PosixFilePermission.OWNER_WRITE : posixFilePermission == PosixFilePermission.OWNER_EXECUTE ? java.nio.file.attribute.PosixFilePermission.OWNER_EXECUTE : posixFilePermission == PosixFilePermission.GROUP_READ ? java.nio.file.attribute.PosixFilePermission.GROUP_READ : posixFilePermission == PosixFilePermission.GROUP_WRITE ? java.nio.file.attribute.PosixFilePermission.GROUP_WRITE : posixFilePermission == PosixFilePermission.GROUP_EXECUTE ? java.nio.file.attribute.PosixFilePermission.GROUP_EXECUTE : posixFilePermission == PosixFilePermission.OTHERS_READ ? java.nio.file.attribute.PosixFilePermission.OTHERS_READ : posixFilePermission == PosixFilePermission.OTHERS_WRITE ? java.nio.file.attribute.PosixFilePermission.OTHERS_WRITE : java.nio.file.attribute.PosixFilePermission.OTHERS_EXECUTE);
                } catch (ClassCastException e) {
                    C2280a.m859a("java.nio.file.attribute.PosixFilePermission", e);
                    throw null;
                }
            }
        } else {
            if (!(next instanceof java.nio.file.attribute.PosixFilePermission)) {
                C2280a.m859a("java.nio.file.attribute.PosixFilePermission", next.getClass());
                throw null;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                try {
                    java.nio.file.attribute.PosixFilePermission posixFilePermission2 = (java.nio.file.attribute.PosixFilePermission) it2.next();
                    hashSet.add(posixFilePermission2 == null ? null : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.OWNER_READ ? PosixFilePermission.OWNER_READ : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.OWNER_WRITE ? PosixFilePermission.OWNER_WRITE : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.OWNER_EXECUTE ? PosixFilePermission.OWNER_EXECUTE : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.GROUP_READ ? PosixFilePermission.GROUP_READ : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.GROUP_WRITE ? PosixFilePermission.GROUP_WRITE : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.GROUP_EXECUTE ? PosixFilePermission.GROUP_EXECUTE : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.OTHERS_READ ? PosixFilePermission.OTHERS_READ : posixFilePermission2 == java.nio.file.attribute.PosixFilePermission.OTHERS_WRITE ? PosixFilePermission.OTHERS_WRITE : PosixFilePermission.OTHERS_EXECUTE);
                } catch (ClassCastException e2) {
                    C2280a.m859a("java.nio.file.attribute.PosixFilePermission", e2);
                    throw null;
                }
            }
        }
        return hashSet;
    }

    /* JADX INFO: renamed from: n */
    public static boolean m517n(Object obj) {
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.isEmpty()) {
            return false;
        }
        Object next = set.iterator().next();
        return (next instanceof PosixFilePermission) || (next instanceof java.nio.file.attribute.PosixFilePermission);
    }

    /* JADX INFO: renamed from: o */
    public static /* synthetic */ String m518o(Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) "/");
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: p */
    public static /* synthetic */ List m519p(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            arrayList.add(obj);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: q */
    public static /* synthetic */ Set m520q(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: renamed from: r */
    public static /* synthetic */ LinkOption[] m521r(java.nio.file.LinkOption[] linkOptionArr) {
        if (linkOptionArr == null) {
            return null;
        }
        int length = linkOptionArr.length;
        LinkOption[] linkOptionArr2 = new LinkOption[length];
        for (int i = 0; i < length; i++) {
            linkOptionArr2[i] = linkOptionArr[i] == null ? null : LinkOption.NOFOLLOW_LINKS;
        }
        return linkOptionArr2;
    }

    /* JADX INFO: renamed from: s */
    public static n0[] m522s(WatchEvent.Kind[] kindArr) {
        if (kindArr == null) {
            return null;
        }
        int length = kindArr.length;
        n0[] n0VarArr = new n0[length];
        for (int i = 0; i < length; i++) {
            WatchEvent.Kind kind = kindArr[i];
            n0VarArr[i] = kind == null ? null : kind == StandardWatchEventKinds.ENTRY_CREATE ? i0.f541b : kind == StandardWatchEventKinds.ENTRY_DELETE ? i0.f542c : kind == StandardWatchEventKinds.ENTRY_MODIFY ? i0.f543d : kind == StandardWatchEventKinds.OVERFLOW ? i0.f540a : kind instanceof m0 ? ((m0) kind).f559a : new l0(kind);
        }
        return n0VarArr;
    }

    /* JADX INFO: renamed from: t */
    public static FileAttribute[] m523t(java.nio.file.attribute.FileAttribute[] fileAttributeArr) {
        if (fileAttributeArr == null) {
            return null;
        }
        int length = fileAttributeArr.length;
        FileAttribute[] fileAttributeArr2 = new FileAttribute[length];
        for (int i = 0; i < length; i++) {
            java.nio.file.attribute.FileAttribute fileAttribute = fileAttributeArr[i];
            fileAttributeArr2[i] = fileAttribute == null ? null : m517n(fileAttribute.value()) ? new C2109h(fileAttribute, 3) : fileAttribute instanceof C2131j ? ((C2131j) fileAttribute).f510a : new C2130i(fileAttribute);
        }
        return fileAttributeArr2;
    }

    /* JADX INFO: renamed from: u */
    public static /* synthetic */ java.nio.file.CopyOption[] m524u(CopyOption[] copyOptionArr) {
        java.nio.file.CopyOption c2150d;
        if (copyOptionArr == null) {
            return null;
        }
        int length = copyOptionArr.length;
        java.nio.file.CopyOption[] copyOptionArr2 = new java.nio.file.CopyOption[length];
        for (int i = 0; i < length; i++) {
            CopyOption copyOption = copyOptionArr[i];
            if (copyOption == null) {
                c2150d = null;
            } else if (copyOption instanceof C2149c) {
                c2150d = ((C2149c) copyOption).f527a;
            } else if (copyOption instanceof LinkOption) {
                c2150d = java.nio.file.LinkOption.NOFOLLOW_LINKS;
            } else if (copyOption instanceof StandardCopyOption) {
                StandardCopyOption standardCopyOption = (StandardCopyOption) copyOption;
                c2150d = standardCopyOption == StandardCopyOption.REPLACE_EXISTING ? java.nio.file.StandardCopyOption.REPLACE_EXISTING : standardCopyOption == StandardCopyOption.COPY_ATTRIBUTES ? java.nio.file.StandardCopyOption.COPY_ATTRIBUTES : java.nio.file.StandardCopyOption.ATOMIC_MOVE;
            } else {
                c2150d = new C2150d(copyOption);
            }
            copyOptionArr2[i] = c2150d;
        }
        return copyOptionArr2;
    }

    /* JADX INFO: renamed from: v */
    public static /* synthetic */ java.nio.file.LinkOption[] m525v(LinkOption[] linkOptionArr) {
        if (linkOptionArr == null) {
            return null;
        }
        int length = linkOptionArr.length;
        java.nio.file.LinkOption[] linkOptionArr2 = new java.nio.file.LinkOption[length];
        for (int i = 0; i < length; i++) {
            linkOptionArr2[i] = linkOptionArr[i] == null ? null : java.nio.file.LinkOption.NOFOLLOW_LINKS;
        }
        return linkOptionArr2;
    }

    /* JADX INFO: renamed from: w */
    public static WatchEvent.Kind[] m526w(n0[] n0VarArr) {
        if (n0VarArr == null) {
            return null;
        }
        int length = n0VarArr.length;
        WatchEvent.Kind[] kindArr = new WatchEvent.Kind[length];
        for (int i = 0; i < length; i++) {
            n0 n0Var = n0VarArr[i];
            kindArr[i] = n0Var == null ? null : n0Var == i0.f541b ? StandardWatchEventKinds.ENTRY_CREATE : n0Var == i0.f542c ? StandardWatchEventKinds.ENTRY_DELETE : n0Var == i0.f543d ? StandardWatchEventKinds.ENTRY_MODIFY : n0Var == i0.f540a ? StandardWatchEventKinds.OVERFLOW : n0Var instanceof l0 ? ((l0) n0Var).f553a : new m0(n0Var);
        }
        return kindArr;
    }

    /* JADX INFO: renamed from: x */
    public static java.nio.file.attribute.FileAttribute[] m527x(FileAttribute[] fileAttributeArr) {
        if (fileAttributeArr == null) {
            return null;
        }
        int length = fileAttributeArr.length;
        java.nio.file.attribute.FileAttribute[] fileAttributeArr2 = new java.nio.file.attribute.FileAttribute[length];
        for (int i = 0; i < length; i++) {
            FileAttribute fileAttribute = fileAttributeArr[i];
            fileAttributeArr2[i] = fileAttribute == null ? null : m517n(fileAttribute.value()) ? new C2132k(fileAttribute) : fileAttribute instanceof C2130i ? ((C2130i) fileAttribute).f509a : new C2131j(fileAttribute);
        }
        return fileAttributeArr2;
    }

    /* JADX INFO: renamed from: y */
    public static char m528y(String str, int i) {
        if (i < str.length()) {
            return str.charAt(i);
        }
        return (char) 0;
    }

    /* JADX INFO: renamed from: z */
    public static FileChannel m529z(Path path, Set set) throws IOException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((OpenOption) it.next()).getClass();
        }
        if (path.toFile().exists()) {
            if (set.contains(j$.nio.file.StandardOpenOption.CREATE_NEW) && set.contains(j$.nio.file.StandardOpenOption.WRITE)) {
                throw new FileAlreadyExistsException(path.toString());
            }
        } else if (!set.contains(j$.nio.file.StandardOpenOption.CREATE) && !set.contains(j$.nio.file.StandardOpenOption.CREATE_NEW)) {
            throw new NoSuchFileException(path.toString());
        }
        if (set.contains(j$.nio.file.StandardOpenOption.READ) && set.contains(j$.nio.file.StandardOpenOption.APPEND)) {
            C2148b.m608a("READ + APPEND not allowed");
            return null;
        }
        j$.nio.file.StandardOpenOption standardOpenOption = j$.nio.file.StandardOpenOption.APPEND;
        if (set.contains(standardOpenOption) && set.contains(j$.nio.file.StandardOpenOption.TRUNCATE_EXISTING)) {
            C2148b.m608a("APPEND + TRUNCATE_EXISTING not allowed");
            return null;
        }
        File file = path.toFile();
        j$.nio.file.StandardOpenOption standardOpenOption2 = j$.nio.file.StandardOpenOption.WRITE;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, (set.contains(standardOpenOption2) || set.contains(standardOpenOption)) ? set.contains(j$.nio.file.StandardOpenOption.SYNC) ? "rws" : set.contains(j$.nio.file.StandardOpenOption.DSYNC) ? "rwd" : "rw" : "r");
        if (set.contains(j$.nio.file.StandardOpenOption.TRUNCATE_EXISTING) && set.contains(standardOpenOption2)) {
            randomAccessFile.setLength(0L);
        }
        if (!set.contains(standardOpenOption) && !set.contains(j$.nio.file.StandardOpenOption.DELETE_ON_CLOSE)) {
            return randomAccessFile.getChannel();
        }
        FileChannel channel = randomAccessFile.getChannel();
        int i = C2106e.f452e;
        if (channel instanceof C2106e) {
            channel = ((C2106e) channel).f453a;
        }
        return new C2106e(channel, set.contains(j$.nio.file.StandardOpenOption.DELETE_ON_CLOSE), set.contains(standardOpenOption), path);
    }
}
