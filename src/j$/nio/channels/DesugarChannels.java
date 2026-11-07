package j$.nio.channels;

import j$.adapter.AbstractC2240a;
import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.C2316z;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public class DesugarChannels {
    public static FileChannel open(Path path, OpenOption... openOptionArr) {
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, openOptionArr);
        return AbstractC2240a.f435a ? FileChannel.open(C2316z.m660s(path), AbstractC2248g.m539l(hashSet), AbstractC2248g.m551x(new FileAttribute[0])) : AbstractC2248g.m553z(path, hashSet);
    }
}
