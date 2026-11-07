package j$.util.stream;

import java.util.List;
import java.util.function.BinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.c */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2283c implements BinaryOperator {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        list.addAll((List) obj2);
        return list;
    }
}
