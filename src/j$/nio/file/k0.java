package j$.nio.file;

import j$.nio.file.attribute.FileAttribute;
import j$.sun.security.action.C2182a;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.InvalidPathException;
import java.security.AccessController;
import java.security.SecureRandom;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k0 {

    /* JADX INFO: renamed from: a */
    public static final Path f549a;

    /* JADX INFO: renamed from: b */
    public static final boolean f550b;

    /* JADX INFO: renamed from: c */
    public static final SecureRandom f551c;

    static {
        String property;
        if (System.getSecurityManager() == null) {
            property = System.getProperty("java.io.tmpdir");
        } else {
            C2182a c2182a = new C2182a();
            c2182a.f598b = "java.io.tmpdir";
            property = (String) AccessController.doPrivileged(c2182a);
        }
        FileSystem fileSystem = AbstractC2156j.f544a;
        f549a = fileSystem.getPath(property, new String[0]);
        f550b = fileSystem.mo541h().contains("posix");
        f551c = new SecureRandom();
    }

    /* JADX INFO: renamed from: a */
    public static Path m623a(Path path, String str, String str2, boolean z, FileAttribute[] fileAttributeArr) {
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (str2 == null) {
            str2 = z ? _UrlKt.FRAGMENT_ENCODE_SET : ".tmp";
        }
        Path path2 = f549a;
        if (path == null) {
            path = path2;
        }
        if (f550b && path.getFileSystem() == AbstractC2156j.f544a) {
            if (fileAttributeArr.length == 0) {
                fileAttributeArr = new FileAttribute[]{z ? j0.f546b : j0.f545a};
            } else {
                int i = 0;
                while (true) {
                    if (i >= fileAttributeArr.length) {
                        int length = fileAttributeArr.length;
                        FileAttribute[] fileAttributeArr2 = new FileAttribute[length + 1];
                        System.arraycopy(fileAttributeArr, 0, fileAttributeArr2, 0, fileAttributeArr.length);
                        fileAttributeArr2[length] = z ? j0.f546b : j0.f545a;
                        fileAttributeArr = fileAttributeArr2;
                    } else {
                        if (fileAttributeArr[i].name().equals("posix:permissions")) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        SecurityManager securityManager = System.getSecurityManager();
        while (true) {
            try {
                Path pathM624b = m624b(str, str2, path);
                try {
                    return z ? Files.createDirectory(pathM624b, fileAttributeArr) : Files.createFile(pathM624b, fileAttributeArr);
                } catch (SecurityException e) {
                    if (path != path2 || securityManager == null) {
                        throw e;
                    }
                    throw new SecurityException("Unable to create temporary file or directory");
                } catch (FileAlreadyExistsException unused) {
                }
            } catch (InvalidPathException e2) {
                if (securityManager == null) {
                    throw e2;
                }
                C2148b.m608a("Invalid prefix or suffix");
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static Path m624b(String str, String str2, Path path) {
        String str3;
        long jNextLong = f551c.nextLong();
        if (jNextLong == 0) {
            str3 = MVEL.VERSION_SUB;
        } else if (jNextLong > 0) {
            str3 = Long.toString(jNextLong, 10);
        } else {
            char[] cArr = new char[64];
            long j = (jNextLong >>> 1) / 5;
            int i = 63;
            cArr[63] = Character.forDigit((int) (jNextLong - (j * 10)), 10);
            while (j > 0) {
                i--;
                cArr[i] = Character.forDigit((int) (j % 10), 10);
                j /= 10;
            }
            str3 = new String(cArr, i, 64 - i);
        }
        Path path2 = path.getFileSystem().getPath(str + str3 + str2, new String[0]);
        if (path2.getParent() == null) {
            return path.resolve(path2);
        }
        C2148b.m608a("Invalid prefix or suffix");
        return null;
    }
}
