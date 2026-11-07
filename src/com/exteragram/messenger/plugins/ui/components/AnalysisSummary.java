package com.exteragram.messenger.plugins.ui.components;

import com.google.android.gms.cast.MediaTrack;
import java.util.List;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\u0018\u00002\u00020\u0001:\u0001\u001dBY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary;", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "color", "title", _UrlKt.FRAGMENT_ENCODE_SET, MediaTrack.ROLE_SUBTITLE, "chips", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary$Chip;", "loading", _UrlKt.FRAGMENT_ENCODE_SET, "badge", "badgeColor", "<init>", "(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ZLjava/lang/CharSequence;I)V", "getIconRes", "()I", "getColor", "getTitle", "()Ljava/lang/CharSequence;", "getSubtitle", "getChips", "()Ljava/util/List;", "getLoading", "()Z", "getBadge", "getBadgeColor", "Chip", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AnalysisSummary {
    private final CharSequence badge;
    private final int badgeColor;
    private final List<Chip> chips;
    private final int color;
    private final int iconRes;
    private final boolean loading;
    private final CharSequence subtitle;
    private final CharSequence title;

    public AnalysisSummary(int i, int i2, CharSequence charSequence, CharSequence charSequence2, List<Chip> list, boolean z, CharSequence charSequence3, int i3) {
        this.iconRes = i;
        this.color = i2;
        this.title = charSequence;
        this.subtitle = charSequence2;
        this.chips = list;
        this.loading = z;
        this.badge = charSequence3;
        this.badgeColor = i3;
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final int getColor() {
        return this.color;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    public final CharSequence getSubtitle() {
        return this.subtitle;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public /* synthetic */ AnalysisSummary(int r12, int r13, java.lang.CharSequence r14, java.lang.CharSequence r15, java.util.List r16, boolean r17, java.lang.CharSequence r18, int r19, int r20, kotlin.jvm.internal.DefaultConstructorMarker r21) {
        /*
            r11 = this;
            r0 = r20
            r1 = r0 & 16
            if (r1 == 0) goto Lc
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
            r7 = r1
            goto Le
        Lc:
            r7 = r16
        Le:
            r1 = r0 & 32
            r2 = 0
            if (r1 == 0) goto L15
            r8 = r2
            goto L17
        L15:
            r8 = r17
        L17:
            r1 = r0 & 64
            if (r1 == 0) goto L1e
            r1 = 0
            r9 = r1
            goto L20
        L1e:
            r9 = r18
        L20:
            r0 = r0 & 128(0x80, float:1.8E-43)
            if (r0 == 0) goto L2b
            r10 = r2
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            r2 = r11
            goto L32
        L2b:
            r10 = r19
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
        L32:
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.exteragram.messenger.plugins.ui.components.AnalysisSummary.<init>(int, int, java.lang.CharSequence, java.lang.CharSequence, java.util.List, boolean, java.lang.CharSequence, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final List<Chip> getChips() {
        return this.chips;
    }

    public final boolean getLoading() {
        return this.loading;
    }

    public final CharSequence getBadge() {
        return this.badge;
    }

    public final int getBadgeColor() {
        return this.badgeColor;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary$Chip;", _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "color", "<init>", "(ILjava/lang/CharSequence;I)V", "getIconRes", "()I", "getText", "()Ljava/lang/CharSequence;", "getColor", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Chip {
        private final int color;
        private final int iconRes;
        private final CharSequence text;

        public Chip(int i, CharSequence charSequence, int i2) {
            this.iconRes = i;
            this.text = charSequence;
            this.color = i2;
        }

        public final int getColor() {
            return this.color;
        }

        public final int getIconRes() {
            return this.iconRes;
        }

        public final CharSequence getText() {
            return this.text;
        }
    }
}
