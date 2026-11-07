package j$.nio.file;

import j$.nio.file.spi.AbstractC2309d;
import j$.nio.file.spi.C2306a;
import java.net.URI;
import java.nio.file.FileSystemNotFoundException;
import java.security.AccessController;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class Paths {
    public static Path get(URI uri) {
        String scheme = uri.getScheme();
        if (scheme == null) {
            C2288b.m632a("Missing scheme");
            return null;
        }
        if (scheme.equalsIgnoreCase("file")) {
            return AbstractC2296j.f545a.mo564g().mo580k(uri);
        }
        if (AbstractC2309d.f583b == null) {
            AbstractC2309d abstractC2309dMo564g = AbstractC2296j.f545a.mo564g();
            synchronized (AbstractC2309d.f582a) {
                try {
                    if (AbstractC2309d.f583b == null) {
                        if (AbstractC2309d.f584c) {
                            throw new Error("Circular loading of installed providers detected");
                        }
                        AbstractC2309d.f584c = true;
                        List list = (List) AccessController.doPrivileged(new C2306a());
                        list.add(0, abstractC2309dMo564g);
                        AbstractC2309d.f583b = Collections.unmodifiableList(list);
                    }
                } finally {
                }
            }
        }
        for (AbstractC2309d abstractC2309d : AbstractC2309d.f583b) {
            if (abstractC2309d.mo581l().equalsIgnoreCase(scheme)) {
                return abstractC2309d.mo580k(uri);
            }
        }
        throw new FileSystemNotFoundException("Provider \"" + scheme + "\" not installed");
    }

    public static Path get(String str, String... strArr) {
        return AbstractC2296j.f545a.getPath(str, strArr);
    }
}
