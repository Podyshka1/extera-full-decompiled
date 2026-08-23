package androidx.core.backported.fixes;

import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002R!\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Landroidx/core/backported/fixes/SystemPropertyResolver;", "Landroidx/core/backported/fixes/StatusResolver;", "<init>", "()V", "aliases", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getAliases", "()Ljava/util/Set;", "aliases$delegate", "Lkotlin/Lazy;", "getStatus", "Landroidx/core/backported/fixes/Status;", "ki", "Landroidx/core/backported/fixes/KnownIssue;", "initAliases", "parseLongListString", _UrlKt.FRAGMENT_ENCODE_SET, "s", _UrlKt.FRAGMENT_ENCODE_SET, "getAliasBitsetString", "core-backported-fixes"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class SystemPropertyResolver implements StatusResolver {

    /* JADX INFO: renamed from: aliases$delegate, reason: from kotlin metadata */
    private final Lazy aliases = LazyKt.lazy(new Function0() { // from class: androidx.core.backported.fixes.SystemPropertyResolver$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f$0.initAliases();
        }
    });

    public final Set<Integer> getAliases() {
        return (Set) this.aliases.getValue();
    }

    @Override // androidx.core.backported.fixes.StatusResolver
    public Status getStatus(KnownIssue ki) {
        if (ki.getAlias() == null) {
            return Status.Unknown;
        }
        if (getAliases().contains(ki.getAlias())) {
            return Status.Fixed;
        }
        return Status.NotFixed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<Integer> initAliases() {
        BitSet bitSetValueOf = BitSet.valueOf(parseLongListString(getAliasBitsetString()));
        int size = bitSetValueOf.size();
        if (size == 0) {
            return SetsKt.emptySet();
        }
        Set setCreateSetBuilder = SetsKt.createSetBuilder(size);
        for (int iNextSetBit = 0; iNextSetBit >= 0; iNextSetBit = bitSetValueOf.nextSetBit(iNextSetBit + 1)) {
            if (bitSetValueOf.get(iNextSetBit)) {
                setCreateSetBuilder.add(Integer.valueOf(iNextSetBit));
            }
            if (iNextSetBit == Integer.MAX_VALUE) {
                break;
            }
        }
        return SetsKt.build(setCreateSetBuilder);
    }

    private final long[] parseLongListString(String s) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator it = StringsKt.split$default((CharSequence) s, new char[]{','}, false, 0, 6, (Object) null).iterator();
        while (it.hasNext()) {
            try {
                listCreateListBuilder.add(Long.valueOf(Long.parseLong((String) it.next())));
            } catch (NumberFormatException unused) {
            }
        }
        return CollectionsKt.toLongArray(CollectionsKt.build(listCreateListBuilder));
    }

    private final String getAliasBitsetString() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.build.backported_fixes.alias_bitset.long_list", _UrlKt.FRAGMENT_ENCODE_SET);
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
