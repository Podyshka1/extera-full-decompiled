package com.exteragram.messenger.plugins.ui.components;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001\rB\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence;", _UrlKt.FRAGMENT_ENCODE_SET, "lines", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence$Line;", "more", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/util/List;I)V", "getLines", "()Ljava/util/List;", "getMore", "()I", "Line", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AnalysisEvidence {
    private final List<Line> lines;
    private final int more;

    public AnalysisEvidence(List<Line> list, int i) {
        this.lines = list;
        this.more = i;
    }

    public final List<Line> getLines() {
        return this.lines;
    }

    public final int getMore() {
        return this.more;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence$Line;", _UrlKt.FRAGMENT_ENCODE_SET, "label", _UrlKt.FRAGMENT_ENCODE_SET, "line", _UrlKt.FRAGMENT_ENCODE_SET, "code", "copy", "<init>", "(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V", "getLabel", "()Ljava/lang/CharSequence;", "getLine", "()I", "getCode", "getCopy", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Line {
        private final CharSequence code;
        private final CharSequence copy;
        private final CharSequence label;
        private final int line;

        public Line(CharSequence charSequence, int i, CharSequence charSequence2, CharSequence charSequence3) {
            this.label = charSequence;
            this.line = i;
            this.code = charSequence2;
            this.copy = charSequence3;
        }

        public /* synthetic */ Line(CharSequence charSequence, int i, CharSequence charSequence2, CharSequence charSequence3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(charSequence, i, charSequence2, (i2 & 8) != 0 ? charSequence2 : charSequence3);
        }

        public final CharSequence getCode() {
            return this.code;
        }

        public final CharSequence getCopy() {
            return this.copy;
        }

        public final CharSequence getLabel() {
            return this.label;
        }

        public final int getLine() {
            return this.line;
        }
    }
}
