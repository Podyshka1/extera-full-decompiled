package j$.util.stream;

import java.util.List;
import java.util.function.BinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.c */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2422c implements BinaryOperator {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        list.addAll((List) obj2);
        return list;
    }
}
