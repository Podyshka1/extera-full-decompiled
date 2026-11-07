package j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import java.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.f */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2286f {

    /* JADX INFO: renamed from: a */
    public static final Set f903a = Collections.EMPTY_SET;

    static {
        Collections.unmodifiableSet(EnumSet.of(Collector.Characteristics.UNORDERED));
    }
}
