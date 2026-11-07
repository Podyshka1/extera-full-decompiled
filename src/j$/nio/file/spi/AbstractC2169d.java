package j$.nio.file.spi;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.channels.C2119a;
import j$.nio.file.C2148b;
import j$.nio.file.CopyOption;
import j$.nio.file.EnumC2121a;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2169d {

    /* JADX INFO: renamed from: b */
    public static volatile List f582b = null;

    /* JADX INFO: renamed from: c */
    public static boolean f583c = false;

    /* JADX INFO: renamed from: a */
    public static final Object f581a = new Object();

    /* JADX INFO: renamed from: d */
    public static final Set f584d = AbstractC2108g.m520q(new Object[]{StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE});

    public AbstractC2169d() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new RuntimePermission("fileSystemProvider"));
        }
    }

    /* JADX INFO: renamed from: A */
    public abstract void mo545A(Path path, String str, Object obj, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: a */
    public abstract void mo546a(Path path, EnumC2121a... enumC2121aArr);

    /* JADX INFO: renamed from: b */
    public abstract void mo547b(Path path, Path path2, CopyOption... copyOptionArr);

    /* JADX INFO: renamed from: c */
    public abstract void mo548c(Path path, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: d */
    public abstract void mo549d(Path path, Path path2);

    /* JADX INFO: renamed from: e */
    public abstract void mo550e(Path path, Path path2, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: f */
    public abstract void mo551f(Path path);

    /* JADX INFO: renamed from: g */
    public abstract boolean mo552g(Path path);

    /* JADX INFO: renamed from: h */
    public abstract FileAttributeView mo553h(Path path, Class cls, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: i */
    public abstract FileStore mo554i(Path path);

    /* JADX INFO: renamed from: j */
    public abstract FileSystem mo555j(URI uri);

    /* JADX INFO: renamed from: k */
    public abstract Path mo556k(URI uri);

    /* JADX INFO: renamed from: l */
    public abstract String mo557l();

    /* JADX INFO: renamed from: m */
    public abstract boolean mo558m(Path path);

    /* JADX INFO: renamed from: n */
    public abstract boolean mo559n(Path path, Path path2);

    /* JADX INFO: renamed from: o */
    public abstract void mo560o(Path path, Path path2, CopyOption... copyOptionArr);

    /* JADX INFO: renamed from: p */
    public abstract C2119a mo561p(Path path, Set set, ExecutorService executorService, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: q */
    public abstract SeekableByteChannel mo562q(Path path, Set set, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: r */
    public abstract DirectoryStream mo563r(Path path, DirectoryStream.Filter filter);

    /* JADX INFO: renamed from: s */
    public abstract FileChannel mo564s(Path path, Set set, FileAttribute... fileAttributeArr);

    /* JADX INFO: renamed from: t */
    public FileSystem mo630t(Path path, Map map) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: renamed from: u */
    public abstract FileSystem mo565u(URI uri, Map map);

    /* JADX INFO: renamed from: v */
    public InputStream mo631v(Path path, OpenOption... openOptionArr) {
        Set hashSet;
        if (openOptionArr.length > 0) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == StandardOpenOption.APPEND || openOption == StandardOpenOption.WRITE) {
                    C2148b.m612e("'", openOption, "' not allowed");
                    return null;
                }
            }
        }
        Set set = Files.f491a;
        if (openOptionArr.length == 0) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet();
            Collections.addAll(hashSet, openOptionArr);
        }
        return Channels.newInputStream(Files.m597b(path).mo562q(path, hashSet, new FileAttribute[0]));
    }

    /* JADX INFO: renamed from: w */
    public OutputStream mo632w(Path path, OpenOption... openOptionArr) {
        Set set;
        if (openOptionArr.length == 0) {
            set = f584d;
        } else {
            HashSet hashSet = new HashSet();
            for (OpenOption openOption : openOptionArr) {
                if (openOption == StandardOpenOption.READ) {
                    C2148b.m608a("READ not allowed");
                    return null;
                }
                hashSet.add(openOption);
            }
            hashSet.add(StandardOpenOption.WRITE);
            set = hashSet;
        }
        return Channels.newOutputStream(mo562q(path, set, new FileAttribute[0]));
    }

    /* JADX INFO: renamed from: x */
    public abstract BasicFileAttributes mo566x(Path path, Class cls, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: y */
    public abstract Map mo567y(Path path, String str, LinkOption... linkOptionArr);

    /* JADX INFO: renamed from: z */
    public abstract Path mo568z(Path path);
}
