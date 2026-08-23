package org.telegram.p029ui.Adapters;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.HashtagSearchController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.DialogCell;
import org.telegram.p029ui.Components.AvatarsDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.FlickerLoadingView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.p029ui.Stories.StoriesListPlaceProvider;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class MessagesSearchAdapter extends RecyclerListView.SelectionAdapter implements NotificationCenter.NotificationCenterDelegate {
    public boolean containsStories;
    public int flickerCount;
    private final BaseFragment fragment;
    private boolean isSavedMessages;
    public int loadedCount;
    private final Context mContext;
    private final Theme.ResourcesProvider resourcesProvider;
    private int searchType;
    public StoriesController.SearchStoriesList storiesList;
    public String storiesListQuery;
    private final HashSet messageIds = new HashSet();
    private final ArrayList searchResultMessages = new ArrayList();
    private int currentAccount = UserConfig.selectedAccount;
    private Runnable loadStories = new Runnable() { // from class: org.telegram.ui.Adapters.MessagesSearchAdapter$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };

    public MessagesSearchAdapter(Context context, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, int i, boolean z) {
        this.resourcesProvider = resourcesProvider;
        this.mContext = context;
        this.fragment = baseFragment;
        this.searchType = i;
        this.isSavedMessages = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        StoriesController.SearchStoriesList searchStoriesList = this.storiesList;
        if (searchStoriesList != null) {
            searchStoriesList.load(true, 3);
        }
    }

    public void searchStories(String str, boolean z) {
        if (TextUtils.equals(this.storiesListQuery, str)) {
            return;
        }
        String strTrim = str.trim();
        boolean z2 = false;
        String strSubstring = null;
        if (strTrim.charAt(0) == '$' || strTrim.charAt(0) == '#') {
            int iIndexOf = strTrim.indexOf(64);
            if (iIndexOf >= 0) {
                String strSubstring2 = strTrim.substring(0, iIndexOf);
                strSubstring = strTrim.substring(iIndexOf + 1);
                strTrim = strSubstring2;
            }
        } else {
            strTrim = null;
        }
        boolean z3 = this.containsStories;
        AndroidUtilities.cancelRunOnUIThread(this.loadStories);
        StoriesController.SearchStoriesList searchStoriesList = this.storiesList;
        if (searchStoriesList != null) {
            searchStoriesList.cancel();
        }
        if (!TextUtils.isEmpty(strTrim)) {
            this.storiesListQuery = str;
            this.storiesList = new StoriesController.SearchStoriesList(this.currentAccount, strSubstring, strTrim);
            if (z) {
                this.loadStories.run();
            } else {
                AndroidUtilities.runOnUIThread(this.loadStories, 1000L);
            }
        }
        StoriesController.SearchStoriesList searchStoriesList2 = this.storiesList;
        if (searchStoriesList2 != null && searchStoriesList2.getCount() > 0) {
            z2 = true;
        }
        if (z2 != z3) {
            notifyDataSetChanged();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.storiesListUpdated && objArr[0] == this.storiesList) {
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void notifyDataSetChanged() {
        int itemCount = getItemCount();
        int iClamp = 0;
        this.containsStories = false;
        this.searchResultMessages.clear();
        this.messageIds.clear();
        ArrayList<MessageObject> foundMessageObjects = this.searchType == 0 ? MediaDataController.getInstance(this.currentAccount).getFoundMessageObjects() : HashtagSearchController.getInstance(this.currentAccount).getMessages(this.searchType);
        for (int i = 0; i < foundMessageObjects.size(); i++) {
            MessageObject messageObject = foundMessageObjects.get(i);
            if ((!messageObject.hasValidGroupId() || messageObject.isPrimaryGroupMessage) && !this.messageIds.contains(Integer.valueOf(messageObject.getId()))) {
                this.searchResultMessages.add(messageObject);
                this.messageIds.add(Integer.valueOf(messageObject.getId()));
            }
        }
        int i2 = this.flickerCount;
        this.loadedCount = this.searchResultMessages.size();
        if (this.searchType != 0) {
            if (!HashtagSearchController.getInstance(this.currentAccount).isEndReached(this.searchType) && this.loadedCount != 0) {
                iClamp = Utilities.clamp(HashtagSearchController.getInstance(this.currentAccount).getCount(this.searchType) - this.loadedCount, 3, 0);
            }
            this.flickerCount = iClamp;
        } else {
            if (!MediaDataController.getInstance(this.currentAccount).searchEndReached() && this.loadedCount != 0) {
                iClamp = Utilities.clamp(MediaDataController.getInstance(this.currentAccount).getSearchCount() - this.loadedCount, 3, 0);
            }
            this.flickerCount = iClamp;
        }
        int itemCount2 = getItemCount();
        if (itemCount < itemCount2) {
            if (i2 > 0) {
                notifyItemRangeChanged(itemCount - i2, i2);
            }
            notifyItemRangeInserted(itemCount, itemCount2 - itemCount);
            return;
        }
        super.notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        boolean z = this.containsStories;
        return (z ? 1 : 0) + this.searchResultMessages.size() + this.flickerCount;
    }

    public Object getItem(int i) {
        if (this.containsStories) {
            i--;
        }
        if (i < 0 || i >= this.searchResultMessages.size()) {
            return null;
        }
        return this.searchResultMessages.get(i);
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return viewHolder.getItemViewType() == 0 || viewHolder.getItemViewType() == 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View dialogCell;
        if (i == 0) {
            dialogCell = new DialogCell(null, this.mContext, false, true, this.currentAccount, this.resourcesProvider);
        } else if (i == 1) {
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, this.resourcesProvider);
            flickerLoadingView.setIsSingleCell(true);
            flickerLoadingView.setViewType(7);
            dialogCell = flickerLoadingView;
        } else {
            dialogCell = i != 2 ? null : new StoriesView(this.mContext, this.resourcesProvider);
        }
        dialogCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
        return new RecyclerListView.Holder(dialogCell);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        int i2;
        int i3;
        int i4;
        if (viewHolder.getItemViewType() == 0) {
            DialogCell dialogCell = (DialogCell) viewHolder.itemView;
            dialogCell.useSeparator = true;
            MessageObject messageObject = (MessageObject) getItem(i);
            long fromChatId = messageObject.getFromChatId();
            int i5 = messageObject.messageOwner.date;
            if (this.isSavedMessages) {
                dialogCell.isSavedDialog = true;
                long savedDialogId = messageObject.getSavedDialogId();
                TLRPC.Message message = messageObject.messageOwner;
                TLRPC.MessageFwdHeader messageFwdHeader = message.fwd_from;
                if (messageFwdHeader != null && ((i4 = messageFwdHeader.date) != 0 || messageFwdHeader.saved_date != 0)) {
                    i3 = i4 == 0 ? messageFwdHeader.saved_date : i4;
                } else {
                    i3 = message.date;
                }
                z = false;
                i2 = i3;
                fromChatId = savedDialogId;
            } else {
                if (messageObject.isOutOwner() || ChatObject.isMonoForum(this.currentAccount, fromChatId)) {
                    fromChatId = messageObject.getFromChatId();
                }
                z = true;
                i2 = i5;
            }
            dialogCell.setDialog(fromChatId, messageObject, i2, z, false);
            dialogCell.setDialogCellDelegate(new DialogCell.DialogCellDelegate() { // from class: org.telegram.ui.Adapters.MessagesSearchAdapter.1
                @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
                public boolean canClickButtonInside() {
                    return false;
                }

                @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
                public void onButtonClicked(DialogCell dialogCell2) {
                }

                @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
                public void onButtonLongPress(DialogCell dialogCell2) {
                }

                @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
                public void openHiddenStories() {
                }

                @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
                public void showChatPreview(DialogCell dialogCell2) {
                }

                @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
                public void openStory(DialogCell dialogCell2, Runnable runnable) {
                    if (MessagesController.getInstance(MessagesSearchAdapter.this.currentAccount).getStoriesController().hasStories(dialogCell2.getDialogId())) {
                        MessagesSearchAdapter.this.fragment.getOrCreateStoryViewer().doOnAnimationReady(runnable);
                        MessagesSearchAdapter.this.fragment.getOrCreateStoryViewer().open(MessagesSearchAdapter.this.mContext, dialogCell2.getDialogId(), StoriesListPlaceProvider.m1320of((RecyclerListView) dialogCell2.getParent()));
                    }
                }
            });
            return;
        }
        if (viewHolder.getItemViewType() == 2) {
            ((StoriesView) viewHolder.itemView).set(this.storiesList);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.containsStories && i - 1 == -1) {
            return 2;
        }
        return i < this.searchResultMessages.size() ? 0 : 1;
    }

    public void attach() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesListUpdated);
    }

    public void detach() {
        AndroidUtilities.cancelRunOnUIThread(this.loadStories);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesListUpdated);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class StoriesView extends FrameLayout {
        private final ImageView arrowView;
        private final AvatarsDrawable avatarsDrawable;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView[] subtitleTextView;
        private final TextView[] titleTextView;
        private float transitValue;
        private ValueAnimator transitionAnimator;

        public StoriesView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.titleTextView = new TextView[2];
            this.subtitleTextView = new TextView[2];
            this.resourcesProvider = resourcesProvider;
            setWillNotDraw(false);
            AvatarsDrawable avatarsDrawable = new AvatarsDrawable(this, false);
            this.avatarsDrawable = avatarsDrawable;
            avatarsDrawable.setCentered(true);
            avatarsDrawable.width = AndroidUtilities.m1124dp(75.0f);
            avatarsDrawable.height = AndroidUtilities.m1124dp(48.0f);
            avatarsDrawable.drawStoriesCircle = true;
            avatarsDrawable.setSize(AndroidUtilities.m1124dp(22.0f));
            int i = 0;
            while (i < 2) {
                this.titleTextView[i] = new TextView(context);
                this.titleTextView[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                this.titleTextView[i].setTypeface(AndroidUtilities.bold());
                this.titleTextView[i].setTextSize(1, 14.0f);
                int i2 = 8;
                this.titleTextView[i].setVisibility(i == 0 ? 0 : 8);
                addView(this.titleTextView[i], LayoutHelper.createFrame(-1, -2.0f, 48, 76.0f, 7.0f, 40.0f, 0.0f));
                this.subtitleTextView[i] = new TextView(context);
                this.subtitleTextView[i].setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
                this.subtitleTextView[i].setTextSize(1, 12.0f);
                TextView textView = this.subtitleTextView[i];
                if (i == 0) {
                    i2 = 0;
                }
                textView.setVisibility(i2);
                addView(this.subtitleTextView[i], LayoutHelper.createFrame(-1, -2.0f, 48, 76.0f, 26.33f, 40.0f, 0.0f));
                i++;
            }
            ImageView imageView = new ImageView(context);
            this.arrowView = imageView;
            imageView.setImageResource(C2888R.drawable.msg_arrowright);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_dialogSearchHint, resourcesProvider), PorterDuff.Mode.SRC_IN));
            addView(imageView, LayoutHelper.createFrame(24, 24.0f, 21, 0.0f, 0.0f, 8.66f, 0.0f));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(48.0f), TLObject.FLAG_30));
        }

        public boolean set(StoriesController.SearchStoriesList searchStoriesList) {
            int i = 0;
            for (int i2 = 0; i2 < searchStoriesList.messageObjects.size() && i < 3; i2++) {
                MessageObject messageObject = (MessageObject) searchStoriesList.messageObjects.get(i2);
                long j = messageObject.storyItem.dialogId;
                TextUtils.isEmpty(searchStoriesList.username);
                this.avatarsDrawable.setObject(i, searchStoriesList.currentAccount, messageObject.storyItem);
                i++;
            }
            this.avatarsDrawable.setCount(i);
            this.avatarsDrawable.commitTransition(false);
            if (!TextUtils.isEmpty(searchStoriesList.username)) {
                this.titleTextView[0].setText(AndroidUtilities.replaceSingleLink(LocaleController.formatPluralStringSpaced("HashtagStoriesFoundChannel", searchStoriesList.getCount(), "@" + searchStoriesList.username), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), null));
            } else {
                this.titleTextView[0].setText(LocaleController.formatPluralStringSpaced("HashtagStoriesFound", searchStoriesList.getCount()));
            }
            this.subtitleTextView[0].setText(LocaleController.formatString(C2888R.string.HashtagStoriesFoundSubtitle, searchStoriesList.query));
            return i > 0;
        }

        public void setMessages(int i, String str, String str2) {
            if (!TextUtils.isEmpty(str2)) {
                this.titleTextView[1].setText(AndroidUtilities.replaceSingleLink(LocaleController.formatPluralStringSpaced("HashtagMessagesFoundChannel", i, "@" + str2), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), null));
            } else {
                this.titleTextView[1].setText(LocaleController.formatPluralStringSpaced("HashtagMessagesFound", i));
            }
            this.subtitleTextView[1].setText(LocaleController.formatString(C2888R.string.HashtagMessagesFoundSubtitle, str));
        }

        public void transition(final boolean z) {
            ValueAnimator valueAnimator = this.transitionAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.transitValue, z ? 1.0f : 0.0f);
            this.transitionAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Adapters.MessagesSearchAdapter.StoriesView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    StoriesView.this.transitValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    StoriesView.this.invalidate();
                    int i = 0;
                    while (i < 2) {
                        StoriesView.this.titleTextView[i].setTranslationX(AndroidUtilities.lerp(0, -AndroidUtilities.m1124dp(62.0f), StoriesView.this.transitValue));
                        StoriesView.this.titleTextView[i].setVisibility(0);
                        float f = 0.0f;
                        StoriesView.this.titleTextView[i].setAlpha(AndroidUtilities.lerp(i == 0 ? 1.0f : 0.0f, i == 1 ? 1.0f : 0.0f, StoriesView.this.transitValue));
                        StoriesView.this.subtitleTextView[i].setTranslationX(AndroidUtilities.lerp(0, -AndroidUtilities.m1124dp(62.0f), StoriesView.this.transitValue));
                        StoriesView.this.subtitleTextView[i].setVisibility(0);
                        TextView textView = StoriesView.this.subtitleTextView[i];
                        float f2 = i == 0 ? 1.0f : 0.0f;
                        if (i == 1) {
                            f = 1.0f;
                        }
                        textView.setAlpha(AndroidUtilities.lerp(f2, f, StoriesView.this.transitValue));
                        i++;
                    }
                }
            });
            this.transitionAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Adapters.MessagesSearchAdapter.StoriesView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoriesView.this.transitValue = z ? 1.0f : 0.0f;
                    StoriesView.this.invalidate();
                    int i = 0;
                    while (i < 2) {
                        StoriesView.this.titleTextView[i].setTranslationX(AndroidUtilities.lerp(0, -AndroidUtilities.m1124dp(62.0f), StoriesView.this.transitValue));
                        StoriesView.this.titleTextView[i].setVisibility((i == 1) == z ? 0 : 8);
                        StoriesView.this.titleTextView[i].setAlpha(AndroidUtilities.lerp(i == 0 ? 1.0f : 0.0f, i == 1 ? 1.0f : 0.0f, StoriesView.this.transitValue));
                        StoriesView.this.subtitleTextView[i].setTranslationX(AndroidUtilities.lerp(0, -AndroidUtilities.m1124dp(62.0f), StoriesView.this.transitValue));
                        StoriesView.this.subtitleTextView[i].setVisibility((i == 1) == z ? 0 : 8);
                        StoriesView.this.subtitleTextView[i].setAlpha(AndroidUtilities.lerp(i == 0 ? 1.0f : 0.0f, i == 1 ? 1.0f : 0.0f, StoriesView.this.transitValue));
                        i++;
                    }
                }
            });
            this.transitionAnimator.setDuration(320L);
            this.transitionAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.transitionAnimator.start();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.transitValue > 0.0f) {
                canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) ((1.0f - this.transitValue) * 255.0f), 31);
            } else {
                canvas.save();
            }
            canvas.translate(AndroidUtilities.lerp(0, -AndroidUtilities.m1124dp(62.0f), this.transitValue), 0.0f);
            this.avatarsDrawable.onDraw(canvas);
            canvas.restore();
            super.onDraw(canvas);
            Paint themePaint = Theme.getThemePaint("paintDivider", this.resourcesProvider);
            if (themePaint == null) {
                themePaint = Theme.dividerPaint;
            }
            canvas.drawRect(0.0f, getHeight() - 1, getWidth(), getHeight(), themePaint);
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public StoriesView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new StoriesView(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                ((StoriesView) view).set((StoriesController.SearchStoriesList) uItem.object);
            }

            public static UItem asStoriesList(StoriesController.SearchStoriesList searchStoriesList) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.object = searchStoriesList;
                return uItemOfFactory;
            }
        }
    }
}
