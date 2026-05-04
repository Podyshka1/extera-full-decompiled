package org.telegram.p029ui.Components.Premium.boosts;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.CountDownTimer;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.ShadowSectionCell;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.Components.Premium.boosts.ReassignBoostBottomSheet;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorBtnCell;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorUserCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes7.dex */
public class ReassignBoostBottomSheet extends BottomSheetWithRecyclerListView {
    private final ButtonWithCounterView actionButton;
    private final List allUsedBoosts;
    private final SelectorBtnCell buttonContainer;
    private final TLRPC.Chat currentChat;
    private final TL_stories.TL_premium_myBoosts myBoosts;
    private final List selectedBoosts;
    private CountDownTimer timer;
    private TopCell topCell;

    public static ReassignBoostBottomSheet show(BaseFragment baseFragment, TL_stories.TL_premium_myBoosts tL_premium_myBoosts, TLRPC.Chat chat) {
        ReassignBoostBottomSheet reassignBoostBottomSheet = new ReassignBoostBottomSheet(baseFragment, tL_premium_myBoosts, chat);
        reassignBoostBottomSheet.show();
        return reassignBoostBottomSheet;
    }

    public ReassignBoostBottomSheet(BaseFragment baseFragment, TL_stories.TL_premium_myBoosts tL_premium_myBoosts, final TLRPC.Chat chat) {
        super(baseFragment, false, false);
        this.selectedBoosts = new ArrayList();
        this.allUsedBoosts = new ArrayList();
        this.topPadding = 0.3f;
        this.myBoosts = tL_premium_myBoosts;
        this.currentChat = chat;
        ArrayList<TL_stories.TL_myBoost> arrayList = tL_premium_myBoosts.my_boosts;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_stories.TL_myBoost tL_myBoost = arrayList.get(i);
            i++;
            TL_stories.TL_myBoost tL_myBoost2 = tL_myBoost;
            TLRPC.Peer peer = tL_myBoost2.peer;
            if (peer != null && DialogObject.getPeerDialogId(peer) != (-chat.f1660id)) {
                this.allUsedBoosts.add(tL_myBoost2);
            }
        }
        SelectorBtnCell selectorBtnCell = new SelectorBtnCell(getContext(), this.resourcesProvider, this.recyclerListView);
        this.buttonContainer = selectorBtnCell;
        selectorBtnCell.setClickable(true);
        selectorBtnCell.setOrientation(1);
        selectorBtnCell.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
        selectorBtnCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        GradientButtonWithCounterView gradientButtonWithCounterView = new GradientButtonWithCounterView(getContext(), true, this.resourcesProvider);
        this.actionButton = gradientButtonWithCounterView;
        gradientButtonWithCounterView.withCounterIcon();
        gradientButtonWithCounterView.setCounterColor(-6785796);
        gradientButtonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(chat, view);
            }
        });
        selectorBtnCell.addView(gradientButtonWithCounterView, LayoutHelper.createLinear(-1, 48, 87));
        ViewGroup viewGroup = this.containerView;
        int i2 = this.backgroundPaddingLeft;
        viewGroup.addView(selectorBtnCell, LayoutHelper.createFrameMarginPx(-1, -2.0f, 87, i2, 0, i2, 0));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.m1124dp(64.0f));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                this.f$0.lambda$new$4(chat, view, i4);
            }
        });
        fixNavigationBar();
        updateTitle();
        updateActionButton(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(final TLRPC.Chat chat, View view) {
        if (this.selectedBoosts.isEmpty() || this.actionButton.isLoading()) {
            return;
        }
        this.actionButton.setLoading(true);
        final ArrayList arrayList = new ArrayList();
        final HashSet hashSet = new HashSet();
        for (TL_stories.TL_myBoost tL_myBoost : this.selectedBoosts) {
            arrayList.add(Integer.valueOf(tL_myBoost.slot));
            hashSet.add(Long.valueOf(DialogObject.getPeerDialogId(tL_myBoost.peer)));
        }
        BoostRepository.applyBoost(chat.f1660id, arrayList, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$1(chat, arrayList, hashSet, (TL_stories.TL_premium_myBoosts) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$2((TLRPC.TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(TLRPC.Chat chat, final List list, final HashSet hashSet, final TL_stories.TL_premium_myBoosts tL_premium_myBoosts) {
        MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(-chat.f1660id, new Consumer() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$$ExternalSyntheticLambda4
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$0(tL_premium_myBoosts, list, hashSet, (TL_stories.TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(TL_stories.TL_premium_myBoosts tL_premium_myBoosts, List list, HashSet hashSet, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        lambda$new$0();
        NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.boostedChannelByUser, tL_premium_myBoosts, Integer.valueOf(list.size()), Integer.valueOf(hashSet.size()), tL_premium_boostsStatus);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLRPC.TL_error tL_error) {
        this.actionButton.setLoading(false);
        BoostDialogs.showToastError(getContext(), tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(TLRPC.Chat chat, View view, int i) {
        if (view instanceof SelectorUserCell) {
            SelectorUserCell selectorUserCell = (SelectorUserCell) view;
            if (selectorUserCell.getBoost().cooldown_until_date > 0) {
                BulletinFactory.m1245of(this.container, this.resourcesProvider).createSimpleBulletin(C2888R.raw.chats_infotip, AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingWaitWarningPlural", BoostRepository.boostsPerSentGift(), new Object[0])), 5).show(true);
                return;
            }
            if (this.selectedBoosts.contains(selectorUserCell.getBoost())) {
                this.selectedBoosts.remove(selectorUserCell.getBoost());
            } else {
                this.selectedBoosts.add(selectorUserCell.getBoost());
            }
            selectorUserCell.setChecked(this.selectedBoosts.contains(selectorUserCell.getBoost()), true);
            updateActionButton(true);
            this.topCell.showBoosts(this.selectedBoosts, chat);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.timer = new CountDownTimer(Long.MAX_VALUE, 1000L) { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                int i;
                ArrayList arrayList = new ArrayList(ReassignBoostBottomSheet.this.allUsedBoosts.size());
                Iterator it = ReassignBoostBottomSheet.this.allUsedBoosts.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TL_stories.TL_myBoost tL_myBoost = (TL_stories.TL_myBoost) it.next();
                    if (tL_myBoost.cooldown_until_date > 0) {
                        arrayList.add(tL_myBoost);
                    }
                    if (((long) tL_myBoost.cooldown_until_date) * 1000 < System.currentTimeMillis()) {
                        tL_myBoost.cooldown_until_date = 0;
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                for (i = 0; i < ((BottomSheetWithRecyclerListView) ReassignBoostBottomSheet.this).recyclerListView.getChildCount(); i++) {
                    View childAt = ((BottomSheetWithRecyclerListView) ReassignBoostBottomSheet.this).recyclerListView.getChildAt(i);
                    if (childAt instanceof SelectorUserCell) {
                        SelectorUserCell selectorUserCell = (SelectorUserCell) childAt;
                        if (arrayList.contains(selectorUserCell.getBoost())) {
                            selectorUserCell.updateTimer();
                        }
                    }
                }
            }
        };
        Bulletin.addDelegate(this.container, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.2
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onBottomOffsetChange(float f) {
                Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onHide(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onHide(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ void onShow(Bulletin bulletin) {
                Bulletin.Delegate.CC.$default$onShow(this, bulletin);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getTopOffset(int i) {
                return AndroidUtilities.statusBarHeight;
            }
        });
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.timer.cancel();
        Bulletin.removeDelegate(this.container);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        this.timer.start();
    }

    private void updateActionButton(boolean z) {
        this.actionButton.setShowZero(false);
        if (this.selectedBoosts.size() > 1) {
            this.actionButton.setText(LocaleController.getString(C2888R.string.BoostingReassignBoosts), z);
        } else {
            this.actionButton.setText(LocaleController.getString(C2888R.string.BoostingReassignBoost), z);
        }
        this.actionButton.setCount(this.selectedBoosts.size(), z);
        this.actionButton.setEnabled(this.selectedBoosts.size() > 0);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.BoostingReassignBoost);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        return new RecyclerListView.SelectionAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.3
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i == 0) {
                    return 0;
                }
                int i2 = 1;
                if (i != 1) {
                    i2 = 2;
                    if (i != 2) {
                        return 3;
                    }
                }
                return i2;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 3;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View shadowSectionCell;
                Context context = viewGroup.getContext();
                if (i == 0) {
                    TopCell topCell = new TopCell(context);
                    topCell.showBoosts(ReassignBoostBottomSheet.this.selectedBoosts, ReassignBoostBottomSheet.this.currentChat);
                    shadowSectionCell = topCell;
                } else if (i == 1) {
                    shadowSectionCell = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray));
                } else if (i == 2) {
                    shadowSectionCell = new HeaderCell(context, 22);
                } else if (i == 3) {
                    shadowSectionCell = new SelectorUserCell(context, true, ((BottomSheet) ReassignBoostBottomSheet.this).resourcesProvider, true);
                } else {
                    shadowSectionCell = new View(context);
                }
                shadowSectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(shadowSectionCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (viewHolder.getItemViewType() == 3) {
                    TL_stories.TL_myBoost tL_myBoost = (TL_stories.TL_myBoost) ReassignBoostBottomSheet.this.allUsedBoosts.get(i - 3);
                    SelectorUserCell selectorUserCell = (SelectorUserCell) viewHolder.itemView;
                    selectorUserCell.setBoost(tL_myBoost);
                    selectorUserCell.setChecked(ReassignBoostBottomSheet.this.selectedBoosts.contains(tL_myBoost), false);
                    return;
                }
                if (viewHolder.getItemViewType() == 2) {
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    headerCell.setTextSize(15.0f);
                    headerCell.setPadding(0, 0, 0, AndroidUtilities.m1124dp(2.0f));
                    headerCell.setText(LocaleController.getString(C2888R.string.BoostingRemoveBoostFrom));
                    return;
                }
                if (viewHolder.getItemViewType() == 0) {
                    ReassignBoostBottomSheet.this.topCell = (TopCell) viewHolder.itemView;
                    ReassignBoostBottomSheet.this.topCell.setData(ReassignBoostBottomSheet.this.currentChat, ReassignBoostBottomSheet.this);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ReassignBoostBottomSheet.this.allUsedBoosts.size() + 3;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class TopCell extends LinearLayout {
        private final List addedChats;
        private final ArrowView arrowView;
        private final FrameLayout avatarsContainer;
        private final FrameLayout avatarsWrapper;
        private final TextView description;
        private final AvatarHolderView toAvatar;

        public TopCell(Context context) {
            super(context);
            this.addedChats = new ArrayList();
            setOrientation(1);
            setClipChildren(false);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.avatarsContainer = frameLayout;
            frameLayout.setClipChildren(false);
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            this.avatarsWrapper = frameLayout2;
            frameLayout2.setClipChildren(false);
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 70.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
            ArrowView arrowView = new ArrowView(context);
            this.arrowView = arrowView;
            frameLayout.addView(arrowView, LayoutHelper.createFrame(24, 24, 17));
            AvatarHolderView avatarHolderView = new AvatarHolderView(context);
            this.toAvatar = avatarHolderView;
            avatarHolderView.setLayerType(2, null);
            frameLayout.addView(avatarHolderView, LayoutHelper.createFrame(70, 70, 17));
            addView(frameLayout, LayoutHelper.createLinear(-1, 70, 0.0f, 15.0f, 0.0f, 0.0f));
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setText(LocaleController.getString(C2888R.string.BoostingReassignBoost));
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 15, 0, 7));
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext());
            this.description = linksTextView;
            linksTextView.setTextSize(1, 14.0f);
            linksTextView.setGravity(1);
            linksTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            linksTextView.setLineSpacing(linksTextView.getLineSpacingExtra(), linksTextView.getLineSpacingMultiplier() * 1.1f);
            addView(linksTextView, LayoutHelper.createLinear(-2, -2, 1, 28, 0, 28, 18));
        }

        public void setData(TLRPC.Chat chat, final BottomSheet bottomSheet) {
            try {
                SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString("BoostingReassignBoostTextPluralWithLink", BoostRepository.boostsPerSentGift(), chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title, "%3$s"));
                SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.getString("BoostingReassignBoostTextLink", C2888R.string.BoostingReassignBoostTextLink), Theme.key_chat_messageLinkIn, 2, new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReassignBoostBottomSheet.TopCell.$r8$lambda$gWjA69fY9828v8mIfgoMFjI1LEs(bottomSheet);
                    }
                });
                final int iIndexOf = TextUtils.indexOf(spannableStringBuilderReplaceTags, "%3$s");
                spannableStringBuilderReplaceTags.replace(iIndexOf, iIndexOf + 4, (CharSequence) spannableStringBuilderReplaceSingleTag);
                this.description.setText(spannableStringBuilderReplaceTags, TextView.BufferType.EDITABLE);
                this.description.post(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setData$1(iIndexOf);
                    }
                });
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        public static /* synthetic */ void $r8$lambda$gWjA69fY9828v8mIfgoMFjI1LEs(BottomSheet bottomSheet) {
            bottomSheet.lambda$new$0();
            NotificationCenter.getInstance(UserConfig.selectedAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.didStartedMultiGiftsSelector, new Object[0]);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet$TopCell$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    UserSelectorBottomSheet.open();
                }
            }, 220L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setData$1(int i) {
            try {
                if (this.description.getLayout().getLineForOffset(i) == 0) {
                    this.description.getEditableText().insert(i, "\n");
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        public void showBoosts(List list, TLRPC.Chat chat) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(((TL_stories.TL_myBoost) it.next()).peer))));
            }
            showChats(arrayList, chat);
        }

        public void showChats(List list, TLRPC.Chat chat) {
            char c;
            float f;
            float f2;
            char c2;
            char c3;
            final AvatarHolderView avatarHolderView;
            float f3;
            char c4;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TLRPC.Chat chat2 = (TLRPC.Chat) it.next();
                if (!this.addedChats.contains(chat2)) {
                    arrayList2.add(chat2);
                }
            }
            for (TLRPC.Chat chat3 : this.addedChats) {
                if (!list.contains(chat3)) {
                    arrayList.add(chat3);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            int i = 0;
            for (int i2 = 0; i2 < this.avatarsWrapper.getChildCount(); i2++) {
                AvatarHolderView avatarHolderView2 = (AvatarHolderView) this.avatarsWrapper.getChildAt(i2);
                if (avatarHolderView2.getTag() == null) {
                    arrayList3.add(avatarHolderView2);
                }
            }
            int size = arrayList2.size();
            int i3 = 0;
            while (true) {
                c = 2;
                f = 0.0f;
                f2 = 0.1f;
                c2 = 0;
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList2.get(i3);
                i3++;
                AvatarHolderView avatarHolderView3 = new AvatarHolderView(getContext());
                avatarHolderView3.setLayerType(2, null);
                avatarHolderView3.setChat((TLRPC.Chat) obj);
                int size2 = arrayList3.size();
                this.avatarsWrapper.addView(avatarHolderView3, 0, LayoutHelper.createFrame(70, 70, 17));
                avatarHolderView3.setTranslationX((-size2) * AndroidUtilities.m1124dp(23.0f));
                avatarHolderView3.setAlpha(0.0f);
                avatarHolderView3.setScaleX(0.1f);
                avatarHolderView3.setScaleY(0.1f);
                avatarHolderView3.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setInterpolator(cubicBezierInterpolator).setDuration(200).start();
                if (size2 == 0) {
                    avatarHolderView3.boostIconView.setScaleY(1.0f);
                    avatarHolderView3.boostIconView.setScaleX(1.0f);
                    avatarHolderView3.boostIconView.setAlpha(1.0f);
                }
            }
            int size3 = arrayList.size();
            int i4 = 0;
            while (i4 < size3) {
                Object obj2 = arrayList.get(i4);
                i4++;
                TLRPC.Chat chat4 = (TLRPC.Chat) obj2;
                int size4 = arrayList3.size();
                while (true) {
                    if (i >= size4) {
                        c3 = c;
                        avatarHolderView = null;
                        break;
                    }
                    Object obj3 = arrayList3.get(i);
                    i++;
                    avatarHolderView = (AvatarHolderView) obj3;
                    c3 = c;
                    if (avatarHolderView.chat == chat4) {
                        break;
                    } else {
                        c = c3;
                    }
                }
                if (avatarHolderView != null) {
                    avatarHolderView.setTag("REMOVED");
                    long j = 200;
                    avatarHolderView.animate().alpha(f).translationXBy(AndroidUtilities.m1124dp(23.0f)).scaleX(f2).scaleY(f2).setInterpolator(cubicBezierInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Premium.boosts.ReassignBoostBottomSheet.TopCell.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            avatarHolderView.setLayerType(0, null);
                            TopCell.this.avatarsWrapper.removeView(avatarHolderView);
                        }
                    }).start();
                    int size5 = arrayList3.size();
                    int i5 = 0;
                    int i6 = 0;
                    while (i6 < size5) {
                        Object obj4 = arrayList3.get(i6);
                        i6++;
                        AvatarHolderView avatarHolderView4 = (AvatarHolderView) obj4;
                        int size6 = arrayList3.size() - 1;
                        if (avatarHolderView4 != avatarHolderView) {
                            i5++;
                            avatarHolderView4.animate().translationX((-(size6 - i5)) * AndroidUtilities.m1124dp(23.0f)).setInterpolator(cubicBezierInterpolator).setDuration(j).start();
                        }
                    }
                    if (arrayList3.get(arrayList3.size() - 1) != avatarHolderView || arrayList3.size() <= 1) {
                        f3 = 0.1f;
                        c4 = 0;
                    } else {
                        f3 = 0.1f;
                        ((AvatarHolderView) arrayList3.get(arrayList3.size() - 2)).boostIconView.setScaleY(0.1f);
                        ((AvatarHolderView) arrayList3.get(arrayList3.size() - 2)).boostIconView.setScaleX(0.1f);
                        c4 = 0;
                        ((AvatarHolderView) arrayList3.get(arrayList3.size() - 2)).boostIconView.animate().alpha(1.0f).scaleY(1.0f).scaleX(1.0f).setDuration(j).setInterpolator(cubicBezierInterpolator).start();
                    }
                } else {
                    f3 = f2;
                    c4 = c2;
                }
                f2 = f3;
                c2 = c4;
                c = c3;
                i = 0;
                f = 0.0f;
            }
            AvatarHolderView avatarHolderView5 = this.toAvatar;
            if (avatarHolderView5.chat == null) {
                avatarHolderView5.setChat(chat);
            }
            this.addedChats.removeAll(arrayList);
            this.addedChats.addAll(arrayList2);
            this.avatarsContainer.animate().cancel();
            if (this.addedChats.isEmpty() || this.addedChats.size() == 1) {
                this.avatarsContainer.animate().setInterpolator(cubicBezierInterpolator).translationX(0.0f).setDuration(200).start();
            } else {
                this.avatarsContainer.animate().setInterpolator(cubicBezierInterpolator).translationX(AndroidUtilities.m1124dp(11.5f) * (this.addedChats.size() - 1)).setDuration(200).start();
            }
            this.toAvatar.animate().cancel();
            this.avatarsWrapper.animate().cancel();
            if (this.addedChats.isEmpty()) {
                long j2 = 200;
                this.avatarsWrapper.animate().setInterpolator(cubicBezierInterpolator).translationX(0.0f).setDuration(j2).start();
                this.toAvatar.animate().setInterpolator(cubicBezierInterpolator).translationX(0.0f).setDuration(j2).start();
            } else {
                long j3 = 200;
                this.avatarsWrapper.animate().setInterpolator(cubicBezierInterpolator).translationX(-AndroidUtilities.m1124dp(48.0f)).setDuration(j3).start();
                this.toAvatar.animate().setInterpolator(cubicBezierInterpolator).translationX(AndroidUtilities.m1124dp(48.0f)).setDuration(j3).start();
            }
        }
    }

    private static class ArrowView extends FrameLayout {
        public ArrowView(Context context) {
            super(context);
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(C2888R.drawable.msg_arrow_avatar);
            imageView.setColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText7));
            addView(imageView);
        }
    }

    private static class AvatarHolderView extends FrameLayout {
        private final Paint bgPaint;
        private final BoostIconView boostIconView;
        public TLRPC.Chat chat;
        AvatarDrawable fromAvatarDrawable;
        private final BackupImageView imageView;

        public AvatarHolderView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.fromAvatarDrawable = new AvatarDrawable();
            BackupImageView backupImageView = new BackupImageView(getContext());
            this.imageView = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m1124dp(30.0f));
            BoostIconView boostIconView = new BoostIconView(context);
            this.boostIconView = boostIconView;
            boostIconView.setAlpha(0.0f);
            addView(backupImageView, LayoutHelper.createFrame(-1, -1.0f, 0, 5.0f, 5.0f, 5.0f, 5.0f));
            addView(boostIconView, LayoutHelper.createFrame(28, 28.0f, 85, 0.0f, 0.0f, 0.0f, 3.0f));
            paint.setColor(Theme.getColor(Theme.key_dialogBackground));
        }

        public void setChat(TLRPC.Chat chat) {
            this.chat = chat;
            this.fromAvatarDrawable.setInfo(chat);
            this.imageView.setForUserOrChat(chat, this.fromAvatarDrawable);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, (getMeasuredHeight() / 2.0f) - AndroidUtilities.m1124dp(2.0f), this.bgPaint);
            super.dispatchDraw(canvas);
        }
    }

    private static class BoostIconView extends View {
        Drawable boostDrawable;
        Paint paint;

        public BoostIconView(Context context) {
            super(context);
            this.paint = new Paint(1);
            this.boostDrawable = ContextCompat.getDrawable(getContext(), C2888R.drawable.mini_boost_remove);
            this.paint.setColor(Theme.getColor(Theme.key_dialogBackground));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float measuredWidth = getMeasuredWidth() / 2.0f;
            float measuredHeight = getMeasuredHeight() / 2.0f;
            canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, this.paint);
            PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m1124dp(10.0f), 0.0f);
            canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m1124dp(2.0f), PremiumGradient.getInstance().getMainGradientPaint());
            float fM1124dp = AndroidUtilities.m1124dp(18.0f) / 2.0f;
            this.boostDrawable.setBounds((int) (measuredWidth - fM1124dp), (int) (measuredHeight - fM1124dp), (int) (measuredWidth + fM1124dp), (int) (measuredHeight + fM1124dp));
            this.boostDrawable.draw(canvas);
        }
    }
}
