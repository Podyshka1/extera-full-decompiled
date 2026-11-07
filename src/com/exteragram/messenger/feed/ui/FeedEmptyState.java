package com.exteragram.messenger.feed.ui;

import android.view.View;
import com.exteragram.messenger.feed.FeedConfig;
import com.exteragram.messenger.feed.FeedController;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.spoilers.SpoilersTextView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FeedEmptyState {
    public static void bind(final BaseFragment baseFragment, StickerEmptyView stickerEmptyView) {
        int currentAccount = baseFragment.getCurrentAccount();
        FeedController feedController = FeedController.getInstance(currentAccount);
        FeedConfig feedConfig = FeedConfig.getInstance(currentAccount);
        stickerEmptyView.subtitle.setVisibility(8);
        stickerEmptyView.button.setVisibility(8);
        if (!feedController.hasChannels() || feedController.hasIncludedChannels()) {
            stickerEmptyView.title.setText(LocaleController.getString(C2807R.string.FeedNoPosts));
            return;
        }
        final FeedConfig.Category selectedCategory = feedConfig.getSelectedCategory();
        SpoilersTextView spoilersTextView = stickerEmptyView.title;
        if (selectedCategory != null) {
            spoilersTextView.setText(LocaleController.getString(C2807R.string.FeedCategoryEmpty));
            stickerEmptyView.subtitle.setText(LocaleController.getString(C2807R.string.FeedCategoryEmptyInfo));
            stickerEmptyView.subtitle.setVisibility(0);
            setButton(stickerEmptyView, LocaleController.getString(C2807R.string.FeedCategoryAddChannels), new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedEmptyState$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    baseFragment.presentFragment(new FeedCategoryEditActivity(selectedCategory.getId(), false));
                }
            });
            return;
        }
        spoilersTextView.setText(LocaleController.getString(C2807R.string.FeedAllChannelsExcluded));
        if (!feedConfig.getVisibleCategories().isEmpty()) {
            stickerEmptyView.subtitle.setText(LocaleController.getString(C2807R.string.FeedAllChannelsExcludedInfo));
            stickerEmptyView.subtitle.setVisibility(0);
        }
        setButton(stickerEmptyView, LocaleController.getString(C2807R.string.FeedSettings), new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedEmptyState$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                baseFragment.presentFragment(new FeedChannelsActivity());
            }
        });
    }

    private static void setButton(StickerEmptyView stickerEmptyView, CharSequence charSequence, final Runnable runnable) {
        stickerEmptyView.button.setText(charSequence, false);
        stickerEmptyView.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.feed.ui.FeedEmptyState$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        stickerEmptyView.button.setVisibility(0);
    }
}
