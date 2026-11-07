package com.exteragram.messenger.preferences.chats.components;

import com.google.android.gms.cast.MediaTrack;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0011R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0018\u001a\u0004\b\u001b\u0010\u001aR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\n\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/preferences/chats/components/InlineFeature;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "icon", _UrlKt.FRAGMENT_ENCODE_SET, "title", MediaTrack.ROLE_SUBTITLE, "badge", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock;", "docs", "<init>", "(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getIcon", "Ljava/lang/CharSequence;", "getTitle", "()Ljava/lang/CharSequence;", "getSubtitle", "getBadge", "Ljava/util/List;", "getDocs", "()Ljava/util/List;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class InlineFeature {
    private final CharSequence badge;
    private final List<InlineDocBlock> docs;
    private final int icon;
    private final CharSequence subtitle;
    private final CharSequence title;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InlineFeature)) {
            return false;
        }
        InlineFeature inlineFeature = (InlineFeature) other;
        return this.icon == inlineFeature.icon && Intrinsics.areEqual(this.title, inlineFeature.title) && Intrinsics.areEqual(this.subtitle, inlineFeature.subtitle) && Intrinsics.areEqual(this.badge, inlineFeature.badge) && Intrinsics.areEqual(this.docs, inlineFeature.docs);
    }

    public int hashCode() {
        int iHashCode = ((((Integer.hashCode(this.icon) * 31) + this.title.hashCode()) * 31) + this.subtitle.hashCode()) * 31;
        CharSequence charSequence = this.badge;
        int iHashCode2 = (iHashCode + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        List<InlineDocBlock> list = this.docs;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        int i = this.icon;
        CharSequence charSequence = this.title;
        CharSequence charSequence2 = this.subtitle;
        CharSequence charSequence3 = this.badge;
        return "InlineFeature(icon=" + i + ", title=" + ((Object) charSequence) + ", subtitle=" + ((Object) charSequence2) + ", badge=" + ((Object) charSequence3) + ", docs=" + this.docs + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InlineFeature(int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, List<? extends InlineDocBlock> list) {
        this.icon = i;
        this.title = charSequence;
        this.subtitle = charSequence2;
        this.badge = charSequence3;
        this.docs = list;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    public final CharSequence getSubtitle() {
        return this.subtitle;
    }

    public final CharSequence getBadge() {
        return this.badge;
    }

    public final List<InlineDocBlock> getDocs() {
        return this.docs;
    }
}
