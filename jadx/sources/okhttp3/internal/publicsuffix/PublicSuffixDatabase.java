package okhttp3.internal.publicsuffix;

import java.net.IDN;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.url._UrlKt;
import okio.ByteString;

/* JADX INFO: loaded from: classes5.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    private final PublicSuffixList publicSuffixList;
    public static final Companion Companion = new Companion(null);
    private static final ByteString WILDCARD_LABEL = ByteString.Companion.m1104of(42);
    private static final List<String> PREVAILING_RULE = CollectionsKt.listOf("*");
    private static PublicSuffixDatabase instance = new PublicSuffixDatabase(PublicSuffixList_androidKt.getDefault(PublicSuffixList.Companion));

    public PublicSuffixDatabase(PublicSuffixList publicSuffixList) {
        Intrinsics.checkNotNullParameter(publicSuffixList, "publicSuffixList");
        this.publicSuffixList = publicSuffixList;
    }

    public final String getEffectiveTldPlusOne(String domain) {
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(domain, "domain");
        String unicode = IDN.toUnicode(domain);
        Intrinsics.checkNotNull(unicode);
        List<String> listSplitDomain = splitDomain(unicode);
        List<String> listFindMatchingRule = findMatchingRule(listSplitDomain);
        if (listSplitDomain.size() == listFindMatchingRule.size() && listFindMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (listFindMatchingRule.get(0).charAt(0) == '!') {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size();
        } else {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size() + 1;
        }
        return SequencesKt.joinToString$default(SequencesKt.drop(CollectionsKt.asSequence(splitDomain(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
    }

    private final List<String> splitDomain(String str) {
        List<String> listSplit$default = StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null);
        return Intrinsics.areEqual(CollectionsKt.last((List) listSplit$default), _UrlKt.FRAGMENT_ENCODE_SET) ? CollectionsKt.dropLast(listSplit$default, 1) : listSplit$default;
    }

    private final List<String> findMatchingRule(List<String> list) {
        String str;
        String strBinarySearch;
        String str2;
        List<String> listEmptyList;
        List<String> listEmptyList2;
        this.publicSuffixList.ensureLoaded();
        int size = list.size();
        ByteString[] byteStringArr = new ByteString[size];
        for (int i = 0; i < size; i++) {
            byteStringArr[i] = ByteString.Companion.encodeUtf8(list.get(i));
        }
        int i2 = 0;
        while (true) {
            str = null;
            if (i2 >= size) {
                strBinarySearch = null;
                break;
            }
            strBinarySearch = Companion.binarySearch(this.publicSuffixList.getBytes(), byteStringArr, i2);
            if (strBinarySearch != null) {
                break;
            }
            i2++;
        }
        if (size > 1) {
            ByteString[] byteStringArr2 = (ByteString[]) byteStringArr.clone();
            int length = byteStringArr2.length - 1;
            for (int i3 = 0; i3 < length; i3++) {
                byteStringArr2[i3] = WILDCARD_LABEL;
                String strBinarySearch2 = Companion.binarySearch(this.publicSuffixList.getBytes(), byteStringArr2, i3);
                if (strBinarySearch2 != null) {
                    str2 = strBinarySearch2;
                    break;
                }
            }
            str2 = null;
        } else {
            str2 = null;
        }
        if (str2 != null) {
            int i4 = size - 1;
            int i5 = 0;
            while (true) {
                if (i5 >= i4) {
                    break;
                }
                String strBinarySearch3 = Companion.binarySearch(this.publicSuffixList.getExceptionBytes(), byteStringArr, i5);
                if (strBinarySearch3 != null) {
                    str = strBinarySearch3;
                    break;
                }
                i5++;
            }
        }
        if (str != null) {
            return StringsKt.split$default((CharSequence) (EXCEPTION_MARKER + str), new char[]{'.'}, false, 0, 6, (Object) null);
        }
        if (strBinarySearch == null && str2 == null) {
            return PREVAILING_RULE;
        }
        if (strBinarySearch == null || (listEmptyList = StringsKt.split$default((CharSequence) strBinarySearch, new char[]{'.'}, false, 0, 6, (Object) null)) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        if (str2 == null || (listEmptyList2 = StringsKt.split$default((CharSequence) str2, new char[]{'.'}, false, 0, 6, (Object) null)) == null) {
            listEmptyList2 = CollectionsKt.emptyList();
        }
        return listEmptyList.size() > listEmptyList2.size() ? listEmptyList : listEmptyList2;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(ByteString byteString, ByteString[] byteStringArr, int i) {
            int i2;
            int iAnd;
            boolean z;
            int iAnd2;
            int size = byteString.size();
            int i3 = 0;
            while (i3 < size) {
                int i4 = (i3 + size) / 2;
                while (i4 > -1 && byteString.getByte(i4) != 10) {
                    i4--;
                }
                int i5 = i4 + 1;
                int i6 = 1;
                while (true) {
                    i2 = i5 + i6;
                    if (byteString.getByte(i2) == 10) {
                        break;
                    }
                    i6++;
                }
                int i7 = i2 - i5;
                int i8 = i;
                boolean z2 = false;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    if (z2) {
                        iAnd = 46;
                        z = false;
                    } else {
                        boolean z3 = z2;
                        iAnd = _UtilCommonKt.and(byteStringArr[i8].getByte(i9), 255);
                        z = z3;
                    }
                    iAnd2 = iAnd - _UtilCommonKt.and(byteString.getByte(i5 + i10), 255);
                    if (iAnd2 != 0) {
                        break;
                    }
                    i10++;
                    i9++;
                    if (i10 == i7) {
                        break;
                    }
                    if (byteStringArr[i8].size() != i9) {
                        z2 = z;
                    } else {
                        if (i8 == byteStringArr.length - 1) {
                            break;
                        }
                        i8++;
                        z2 = true;
                        i9 = -1;
                    }
                }
                if (iAnd2 >= 0) {
                    if (iAnd2 <= 0) {
                        int i11 = i7 - i10;
                        int size2 = byteStringArr[i8].size() - i9;
                        int length = byteStringArr.length;
                        for (int i12 = i8 + 1; i12 < length; i12++) {
                            size2 += byteStringArr[i12].size();
                        }
                        if (size2 >= i11) {
                            if (size2 <= i11) {
                                return byteString.substring(i5, i7 + i5).string(Charsets.UTF_8);
                            }
                        }
                    }
                    i3 = i2 + 1;
                }
                size = i4;
            }
            return null;
        }

        public final void resetForTests$okhttp() {
            PublicSuffixDatabase.instance = new PublicSuffixDatabase(PublicSuffixList_androidKt.getDefault(PublicSuffixList.Companion));
        }
    }
}
