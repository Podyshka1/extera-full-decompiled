package com.exteragram.messenger.plugins.ui.components;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaTrack;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementRow;", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, _UrlKt.FRAGMENT_ENCODE_SET, "iconRes", _UrlKt.FRAGMENT_ENCODE_SET, "color", "title", _UrlKt.FRAGMENT_ENCODE_SET, MediaTrack.ROLE_SUBTITLE, "values", _UrlKt.FRAGMENT_ENCODE_SET, "evidence", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence;", "notes", "<init>", "(Ljava/lang/String;IILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence;Ljava/util/List;)V", "getKey", "()Ljava/lang/String;", "getIconRes", "()I", "getColor", "getTitle", "()Ljava/lang/CharSequence;", "getSubtitle", "getValues", "()Ljava/util/List;", "getEvidence", "()Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence;", "getNotes", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AnalysisStatementRow {
    private final int color;
    private final AnalysisEvidence evidence;
    private final int iconRes;
    private final String key;
    private final List<CharSequence> notes;
    private final CharSequence subtitle;
    private final CharSequence title;
    private final List<String> values;

    /* JADX WARN: Multi-variable type inference failed */
    public AnalysisStatementRow(String str, int i, int i2, CharSequence charSequence, CharSequence charSequence2, List<String> list, AnalysisEvidence analysisEvidence, List<? extends CharSequence> list2) {
        this.key = str;
        this.iconRes = i;
        this.color = i2;
        this.title = charSequence;
        this.subtitle = charSequence2;
        this.values = list;
        this.evidence = analysisEvidence;
        this.notes = list2;
    }

    public final String getKey() {
        return this.key;
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

    public final List<String> getValues() {
        return this.values;
    }

    public final AnalysisEvidence getEvidence() {
        return this.evidence;
    }

    public /* synthetic */ AnalysisStatementRow(String str, int i, int i2, CharSequence charSequence, CharSequence charSequence2, List list, AnalysisEvidence analysisEvidence, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, charSequence, charSequence2, list, analysisEvidence, (i3 & 128) != 0 ? CollectionsKt.emptyList() : list2);
    }

    public final List<CharSequence> getNotes() {
        return this.notes;
    }
}
