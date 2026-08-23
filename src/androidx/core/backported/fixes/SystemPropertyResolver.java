package androidx.core.backported.fixes;

import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class SystemPropertyResolver implements StatusResolver {
    private final Lazy aliases$delegate = LazyKt.lazy(new Function0() { // from class: androidx.core.backported.fixes.SystemPropertyResolver$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f$0.initAliases();
        }
    });

    public final Set getAliases() {
        return (Set) this.aliases$delegate.getValue();
    }

    @Override // androidx.core.backported.fixes.StatusResolver
    public Status getStatus(KnownIssue ki) {
        Intrinsics.checkNotNullParameter(ki, "ki");
        if (ki.getAlias$core_backported_fixes() == null) {
            return Status.Unknown;
        }
        if (getAliases().contains(ki.getAlias$core_backported_fixes())) {
            return Status.Fixed;
        }
        return Status.NotFixed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set initAliases() {
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

    private final long[] parseLongListString(String str) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator it = StringsKt.split$default((CharSequence) str, new char[]{','}, false, 0, 6, (Object) null).iterator();
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
            Object objInvoke = cls.getMethod("get", String.class, String.class).invoke(cls, "ro.build.backported_fixes.alias_bitset.long_list", _UrlKt.FRAGMENT_ENCODE_SET);
            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type kotlin.String");
            return (String) objInvoke;
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
