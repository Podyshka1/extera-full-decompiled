package j$.nio.file;

import j$.nio.file.spi.AbstractC2169d;
import j$.nio.file.spi.C2166a;
import java.net.URI;
import java.nio.file.FileSystemNotFoundException;
import java.security.AccessController;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class Paths {
    public static Path get(URI uri) {
        String scheme = uri.getScheme();
        if (scheme == null) {
            C2148b.m608a("Missing scheme");
            return null;
        }
        if (scheme.equalsIgnoreCase("file")) {
            return AbstractC2156j.f544a.mo540g().mo556k(uri);
        }
        if (AbstractC2169d.f582b == null) {
            AbstractC2169d abstractC2169dMo540g = AbstractC2156j.f544a.mo540g();
            synchronized (AbstractC2169d.f581a) {
                try {
                    if (AbstractC2169d.f582b == null) {
                        if (AbstractC2169d.f583c) {
                            throw new Error("Circular loading of installed providers detected");
                        }
                        AbstractC2169d.f583c = true;
                        List list = (List) AccessController.doPrivileged(new C2166a());
                        list.add(0, abstractC2169dMo540g);
                        AbstractC2169d.f582b = Collections.unmodifiableList(list);
                    }
                } finally {
                }
            }
        }
        for (AbstractC2169d abstractC2169d : AbstractC2169d.f582b) {
            if (abstractC2169d.mo557l().equalsIgnoreCase(scheme)) {
                return abstractC2169d.mo556k(uri);
            }
        }
        throw new FileSystemNotFoundException("Provider \"" + scheme + "\" not installed");
    }

    public static Path get(String str, String... strArr) {
        return AbstractC2156j.f544a.getPath(str, strArr);
    }
}
