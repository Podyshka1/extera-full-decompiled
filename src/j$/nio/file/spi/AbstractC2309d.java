package j$.nio.file.spi;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.channels.C2259a;
import j$.nio.file.C2288b;
import j$.nio.file.CopyOption;
import j$.nio.file.EnumC2261a;
import j$.nio.file.FileStore;
import j$.nio.file.FileSystem;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardOpenOption;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileAttributeView;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.DirectoryStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: j$.nio.file.spi.d */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2309d {

    /* JADX INFO: renamed from: b */
    public static volatile List f583b = null;

    /* JADX INFO: renamed from: c */
    public static boolean f584c = false;

    /* JADX INFO: renamed from: a */
    public static final Object f582a = new Object();

    /* JADX INFO: renamed from: d */
    public static final Set f585d = AbstractC2248g.m544q(new Object[]{StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE});

    public AbstractC2309d() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new RuntimePermission("fileSystemProvider"));
        }
    }

    /* JADX INFO: renamed from: A */
    public abstract void mo569A(Path path, String str, Object obj, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: a */
    public abstract void mo570a(Path path, EnumC2261a... enumC2261aArr);

    /* JADX INFO: renamed from: b */
    public abstract void mo571b(Path path, Path path2, CopyOption... copyOptionArr);

    /* JADX INFO: renamed from: c */
    public abstract void mo572c(Path path, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: d */
    public abstract void mo573d(Path path, Path path2);

    /* JADX INFO: renamed from: e */
    public abstract void mo574e(Path path, Path path2, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: f */
    public abstract void mo575f(Path path);

    /* JADX INFO: renamed from: g */
    public abstract boolean mo576g(Path path);

    /* JADX INFO: renamed from: h */
    public abstract FileAttributeView mo577h(Path path, Class cls, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: i */
    public abstract FileStore mo578i(Path path);

    /* JADX INFO: renamed from: j */
    public abstract FileSystem mo579j(URI uri);

    /* JADX INFO: renamed from: k */
    public abstract Path mo580k(URI uri);

    /* JADX INFO: renamed from: l */
    public abstract String mo581l();

    /* JADX INFO: renamed from: m */
    public abstract boolean mo582m(Path path);

    /* JADX INFO: renamed from: n */
    public abstract boolean mo583n(Path path, Path path2);

    /* JADX INFO: renamed from: o */
    public abstract void mo584o(Path path, Path path2, CopyOption... copyOptionArr);

    /* JADX INFO: renamed from: p */
    public abstract C2259a mo585p(Path path, Set set, ExecutorService executorService, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: q */
    public abstract SeekableByteChannel mo586q(Path path, Set set, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: r */
    public abstract DirectoryStream mo587r(Path path, DirectoryStream.Filter filter);

    /* JADX INFO: renamed from: s */
    public abstract FileChannel mo588s(Path path, Set set, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: t */
    public FileSystem mo654t(Path path, Map map) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: u */
    public abstract FileSystem mo589u(URI uri, Map map);

    /* JADX INFO: renamed from: v */
    public InputStream mo655v(Path path, OpenOption... openOptionArr) {
        Set hashSet;
        if (openOptionArr.length > 0) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == StandardOpenOption.APPEND || openOption == StandardOpenOption.WRITE) {
                    C2288b.m636e("'", openOption, "' not allowed");
                    return null;
                }
            }
        }
        Set set = Files.f492a;
        if (openOptionArr.length == 0) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet();
            Collections.addAll(hashSet, openOptionArr);
        }
        return Channels.newInputStream(Files.m621b(path).mo586q(path, hashSet, new FileAttribute[0]));
    }

    /* JADX INFO: renamed from: w */
    public OutputStream mo656w(Path path, OpenOption... openOptionArr) {
        Set set;
        if (openOptionArr.length == 0) {
            set = f585d;
        } else {
            HashSet hashSet = new HashSet();
            for (OpenOption openOption : openOptionArr) {
                if (openOption == StandardOpenOption.READ) {
                    C2288b.m632a("READ not allowed");
                    return null;
                }
                hashSet.add(openOption);
            }
            hashSet.add(StandardOpenOption.WRITE);
            set = hashSet;
        }
        return Channels.newOutputStream(mo586q(path, set, new FileAttribute[0]));
    }

    /* JADX INFO: renamed from: x */
    public abstract BasicFileAttributes mo590x(Path path, Class cls, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: y */
    public abstract Map mo591y(Path path, String str, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: z */
    public abstract Path mo592z(Path path);
}
