package okhttp3.internal.connection;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0000¨\u0006\u0004"}, d2 = {"reorderForHappyEyeballs", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/net/InetAddress;", "addresses", "okhttp"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInetAddressOrder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InetAddressOrder.kt\nokhttp3/internal/connection/InetAddressOrderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n3301#2,10:47\n*S KotlinDebug\n*F\n+ 1 InetAddressOrder.kt\nokhttp3/internal/connection/InetAddressOrderKt\n*L\n38#1:47,10\n*E\n"})
public final class InetAddressOrderKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final List<InetAddress> reorderForHappyEyeballs(List<? extends InetAddress> list) {
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((InetAddress) obj) instanceof Inet6Address) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list2 = (List) pair.component1();
        List list3 = (List) pair.component2();
        return (list2.isEmpty() || list3.isEmpty()) ? list : _UtilCommonKt.interleave(list2, list3);
    }
}
