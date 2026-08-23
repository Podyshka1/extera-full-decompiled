package org.telegram.ui.Components.emojiview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public abstract class FoundEmojiPacksRecyclerView extends UniversalRecyclerView {
    public FoundEmojiPacksRecyclerView(Context context, int i, int i2, boolean z, Utilities.Callback2<ArrayList<UItem>, UniversalAdapter> callback2, Utilities.Callback5<UItem, View, Integer, Float, Float> callback5, Utilities.Callback5Return<UItem, View, Integer, Float, Float, Boolean> callback5Return, Theme.ResourcesProvider resourcesProvider, int i3, int i4) {
        super(context, i, i2, z, callback2, callback5, callback5Return, resourcesProvider, i3, i4);
        setAdaptiveOverScroll();
    }

    public void scrollOnSelect(final View view) {
        if (view == null) {
            return;
        }
        float fDp = AndroidUtilities.dp(92.0f);
        float width = getWidth() - fDp;
        float x = view.getX();
        float width2 = view.getWidth() + x;
        final int i = x < fDp ? (int) (x - fDp) : width2 > width ? (int) (width2 - width) : 0;
        if (i != 0) {
            AndroidUtilities.doOnLayout(this, new Runnable() { // from class: org.telegram.ui.Components.emojiview.FoundEmojiPacksRecyclerView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$scrollOnSelect$1(view, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollOnSelect$1(View view, final int i) {
        view.postOnAnimation(new Runnable() { // from class: org.telegram.ui.Components.emojiview.FoundEmojiPacksRecyclerView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scrollOnSelect$0(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollOnSelect$0(int i) {
        smoothScrollBy(i, 0);
    }
}
