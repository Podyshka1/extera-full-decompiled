package androidx.camera.core.impl.utils;

import android.util.Range;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/core/impl/utils/RangeUtil;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "filterFixedRanges", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRangeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RangeUtil.kt\nandroidx/camera/core/impl/utils/RangeUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n774#2:34\n865#2,2:35\n*S KotlinDebug\n*F\n+ 1 RangeUtil.kt\nandroidx/camera/core/impl/utils/RangeUtil\n*L\n31#1:34\n31#1:35,2\n*E\n"})
public final class RangeUtil {
    public static final RangeUtil INSTANCE = new RangeUtil();

    private RangeUtil() {
    }

    @JvmStatic
    public static final Set<Range<Integer>> filterFixedRanges(Set<Range<Integer>> set) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            Range range = (Range) obj;
            if (Intrinsics.areEqual(range.getUpper(), range.getLower())) {
                arrayList.add(obj);
            }
        }
        return new LinkedHashSet(arrayList);
    }
}
