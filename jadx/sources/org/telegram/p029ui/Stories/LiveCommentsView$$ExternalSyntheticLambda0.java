package org.telegram.p029ui.Stories;

import java.util.Comparator;
import org.telegram.p029ui.Stories.LiveCommentsView;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class LiveCommentsView$$ExternalSyntheticLambda0 implements Comparator {
    public final /* synthetic */ LiveCommentsView f$0;

    public /* synthetic */ LiveCommentsView$$ExternalSyntheticLambda0(LiveCommentsView liveCommentsView) {
        this.f$0 = liveCommentsView;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f$0.sortTopMessages((LiveCommentsView.TopSender) obj, (LiveCommentsView.TopSender) obj2);
    }
}
