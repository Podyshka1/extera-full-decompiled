package j$.nio.channels;

import j$.adapter.AbstractC2100a;
import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.C2176z;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public class DesugarChannels {
    public static FileChannel open(Path path, OpenOption... openOptionArr) {
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, openOptionArr);
        return AbstractC2100a.f434a ? FileChannel.open(C2176z.m636s(path), AbstractC2108g.m515l(hashSet), AbstractC2108g.m527x(new FileAttribute[0])) : AbstractC2108g.m529z(path, hashSet);
    }
}
