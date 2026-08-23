package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.MatchResult;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
final class MatcherMatchResult implements MatchResult {
    private List groupValues_;
    private final MatchGroupCollection groups;
    private final CharSequence input;
    private final Matcher matcher;

    public MatcherMatchResult(Matcher matcher, CharSequence input) {
        Intrinsics.checkNotNullParameter(matcher, "matcher");
        Intrinsics.checkNotNullParameter(input, "input");
        this.matcher = matcher;
        this.input = input;
        this.groups = new MatcherMatchResult$groups$1(this);
    }

    @Override // kotlin.text.MatchResult
    public /* bridge */ MatchResult.Destructured getDestructured() {
        return MatchResult.DefaultImpls.getDestructured(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final java.util.regex.MatchResult getMatchResult() {
        return this.matcher;
    }

    @Override // kotlin.text.MatchResult
    public IntRange getRange() {
        return RegexKt.range(getMatchResult());
    }

    @Override // kotlin.text.MatchResult
    public String getValue() {
        String strGroup = getMatchResult().group();
        Intrinsics.checkNotNullExpressionValue(strGroup, "group(...)");
        return strGroup;
    }

    @Override // kotlin.text.MatchResult
    public MatchGroupCollection getGroups() {
        return this.groups;
    }

    @Override // kotlin.text.MatchResult
    public List getGroupValues() {
        if (this.groupValues_ == null) {
            this.groupValues_ = new AbstractList() { // from class: kotlin.text.MatcherMatchResult$groupValues$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public final /* bridge */ boolean contains(Object obj) {
                    if (obj instanceof String) {
                        return contains((String) obj);
                    }
                    return false;
                }

                public /* bridge */ boolean contains(String str) {
                    return super.contains((Object) str);
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int indexOf(Object obj) {
                    if (obj instanceof String) {
                        return indexOf((String) obj);
                    }
                    return -1;
                }

                public /* bridge */ int indexOf(String str) {
                    return super.indexOf((Object) str);
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int lastIndexOf(Object obj) {
                    if (obj instanceof String) {
                        return lastIndexOf((String) obj);
                    }
                    return -1;
                }

                public /* bridge */ int lastIndexOf(String str) {
                    return super.lastIndexOf((Object) str);
                }

                @Override // kotlin.collections.AbstractCollection
                public int getSize() {
                    return this.this$0.getMatchResult().groupCount() + 1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public String get(int i) {
                    String strGroup = this.this$0.getMatchResult().group(i);
                    return strGroup == null ? _UrlKt.FRAGMENT_ENCODE_SET : strGroup;
                }
            };
        }
        List list = this.groupValues_;
        Intrinsics.checkNotNull(list);
        return list;
    }

    @Override // kotlin.text.MatchResult
    public MatchResult next() {
        int iEnd = getMatchResult().end() + (getMatchResult().end() == getMatchResult().start() ? 1 : 0);
        if (iEnd > this.input.length()) {
            return null;
        }
        Matcher matcher = this.matcher.pattern().matcher(this.input);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        return RegexKt.findNext(matcher, iEnd, this.input);
    }
}
