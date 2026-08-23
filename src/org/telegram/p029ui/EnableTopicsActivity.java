package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.android.p003dx.p006io.Opcodes;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.TextHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class EnableTopicsActivity extends BaseFragment {
    private TLRPC.Chat currentChat;
    private long dialogId;
    private boolean forum;
    private boolean isTabs;
    private UniversalRecyclerView listView;
    private Utilities.Callback2 onForumChanged;

    public EnableTopicsActivity(long j) {
        this.dialogId = j;
    }

    public void setOnForumChanged(boolean z, boolean z2, Utilities.Callback2 callback2) {
        this.forum = z;
        this.isTabs = z2;
        this.onForumChanged = callback2;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.currentChat = getMessagesController().getChat(Long.valueOf(-this.dialogId));
        return super.onFragmentCreate();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.EnableTopicsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    EnableTopicsActivity.this.finishFragment();
                }
            }
        });
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.TopicsTitle));
        FrameLayout frameLayout = new FrameLayout(context);
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.EnableTopicsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.EnableTopicsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null) { // from class: org.telegram.ui.EnableTopicsActivity.2
            @Override // org.telegram.p029ui.Components.RecyclerListView
            public Integer getSelectorColor(int i) {
                UItem item = this.adapter.getItem(i);
                if (item != null && item.f2105id == 2) {
                    return 0;
                }
                return super.getSelectorColor(i);
            }
        };
        this.listView = universalRecyclerView;
        universalRecyclerView.setSections();
        this.listView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, this.resourceProvider));
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1, 119));
        this.actionBar.setAdaptiveBackground(this.listView);
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asTopView(LocaleController.getString(C2888R.string.TopicsInfo), C2888R.raw.topics_top));
        arrayList.add(UItem.asCheck(1, LocaleController.getString(C2888R.string.TopicsEnable)).setChecked(this.forum));
        if (this.forum) {
            arrayList.add(UItem.asShadow(null));
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.TopicsLayout)));
            arrayList.add(TopicsLayoutSwitcher.Factory.asSwitcher(2, new View.OnClickListener() { // from class: org.telegram.ui.EnableTopicsActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$0(view);
                }
            }, new View.OnClickListener() { // from class: org.telegram.ui.EnableTopicsActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$1(view);
                }
            }).setChecked(this.isTabs));
            arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.TopicsLayoutInfo)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$0(View view) {
        TopicsLayoutSwitcher topicsLayoutSwitcher = (TopicsLayoutSwitcher) view.getParent();
        this.isTabs = true;
        topicsLayoutSwitcher.setChecked(true, true);
        Utilities.Callback2 callback2 = this.onForumChanged;
        if (callback2 != null) {
            callback2.run(Boolean.valueOf(this.forum), Boolean.valueOf(this.isTabs));
        }
        topicsLayoutChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$1(View view) {
        TopicsLayoutSwitcher topicsLayoutSwitcher = (TopicsLayoutSwitcher) view.getParent();
        this.isTabs = false;
        topicsLayoutSwitcher.setChecked(false, true);
        Utilities.Callback2 callback2 = this.onForumChanged;
        if (callback2 != null) {
            callback2.run(Boolean.valueOf(this.forum), Boolean.valueOf(this.isTabs));
        }
        topicsLayoutChanged();
    }

    private void topicsLayoutChanged() {
        if (!this.isTabs || getParentLayout() == null) {
            return;
        }
        for (BaseFragment baseFragment : getParentLayout().getFragmentStack()) {
            if (baseFragment instanceof DialogsActivity) {
                RightSlidingDialogContainer rightSlidingDialogContainer = ((DialogsActivity) baseFragment).rightSlidingDialogContainer;
                if (rightSlidingDialogContainer.hasFragment()) {
                    rightSlidingDialogContainer.lambda$presentFragment$1();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
        if (uItem.f2105id != 1 || this.currentChat == null) {
            return;
        }
        boolean z = !this.forum;
        this.forum = z;
        Utilities.Callback2 callback2 = this.onForumChanged;
        if (callback2 != null) {
            callback2.run(Boolean.valueOf(z), Boolean.valueOf(this.isTabs));
        }
        ((TextCheckCell) view).setChecked(this.forum);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class TopicsLayoutSwitcher extends LinearLayout {
        private ValueAnimator animator;
        private final BackupImageView leftImageView;
        private final FrameLayout leftLayout;
        private final FrameLayout leftTitleBackground;
        private final FrameLayout leftTitleLayout;
        private final TextView leftTitleSelected;
        private final TextView leftTitleUnselected;
        private final Theme.ResourcesProvider resourcesProvider;
        private final BackupImageView rightImageView;
        private final FrameLayout rightLayout;
        private final FrameLayout rightTitleBackground;
        private final FrameLayout rightTitleLayout;
        private final TextView rightTitleSelected;
        private final TextView rightTitleUnselected;
        private float tabsAlpha;

        public TopicsLayoutSwitcher(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setOrientation(0);
            setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
            FrameLayout frameLayout = new FrameLayout(context);
            this.leftLayout = frameLayout;
            ScaleStateListAnimator.apply(frameLayout, 0.05f, 1.25f);
            addView(frameLayout, LayoutHelper.createLinear(-1, Opcodes.USHR_INT_LIT8, 1.0f, 119));
            BackupImageView backupImageView = new BackupImageView(context);
            this.leftImageView = backupImageView;
            backupImageView.setImageDrawable(new RLottieDrawable(C2888R.raw.topics_tabs, "topics_tabs", AndroidUtilities.m1124dp(160.0f), AndroidUtilities.m1124dp(160.0f)));
            frameLayout.addView(backupImageView, LayoutHelper.createFrame(160, 160.0f, 49, 0.0f, 12.33f, 0.0f, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.leftTitleLayout = frameLayout2;
            int i = Theme.key_windowBackgroundWhiteGrayText2;
            TextView textViewMakeTextView = TextHelper.makeTextView(context, 14.0f, i, true);
            this.leftTitleUnselected = textViewMakeTextView;
            textViewMakeTextView.setText(LocaleController.getString(C2888R.string.TopicsLayoutTabs));
            textViewMakeTextView.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
            frameLayout2.addView(textViewMakeTextView, LayoutHelper.createFrame(-2, -2, 17));
            FrameLayout frameLayout3 = new FrameLayout(context);
            this.leftTitleBackground = frameLayout3;
            frameLayout3.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
            int iM1124dp = AndroidUtilities.m1124dp(13.0f);
            int i2 = Theme.key_featuredStickers_addButton;
            frameLayout3.setBackground(Theme.createRoundRectDrawable(iM1124dp, Theme.getColor(i2, resourcesProvider)));
            frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-2, 26, 17));
            int i3 = Theme.key_windowBackgroundCheckText;
            TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i3, true);
            this.leftTitleSelected = textViewMakeTextView2;
            textViewMakeTextView2.setText(LocaleController.getString(C2888R.string.TopicsLayoutTabs));
            frameLayout3.addView(textViewMakeTextView2, LayoutHelper.createFrame(-2, -2, 17));
            frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-2, 26.0f, 49, 0.0f, 182.0f, 0.0f, 0.0f));
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.rightLayout = frameLayout4;
            ScaleStateListAnimator.apply(frameLayout4, 0.05f, 1.25f);
            addView(frameLayout4, LayoutHelper.createLinear(-1, Opcodes.USHR_INT_LIT8, 1.0f, 119));
            BackupImageView backupImageView2 = new BackupImageView(context);
            this.rightImageView = backupImageView2;
            backupImageView2.setImageDrawable(new RLottieDrawable(C2888R.raw.topics_list, "topics_list", AndroidUtilities.m1124dp(160.0f), AndroidUtilities.m1124dp(160.0f)));
            frameLayout4.addView(backupImageView2, LayoutHelper.createFrame(160, 160.0f, 49, 0.0f, 12.33f, 0.0f, 0.0f));
            FrameLayout frameLayout5 = new FrameLayout(context);
            this.rightTitleLayout = frameLayout5;
            TextView textViewMakeTextView3 = TextHelper.makeTextView(context, 14.0f, i, true);
            this.rightTitleUnselected = textViewMakeTextView3;
            textViewMakeTextView3.setText(LocaleController.getString(C2888R.string.TopicsLayoutList));
            textViewMakeTextView3.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
            frameLayout5.addView(textViewMakeTextView3, LayoutHelper.createFrame(-2, -2, 17));
            FrameLayout frameLayout6 = new FrameLayout(context);
            this.rightTitleBackground = frameLayout6;
            frameLayout6.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
            frameLayout6.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(13.0f), Theme.getColor(i2, resourcesProvider)));
            frameLayout5.addView(frameLayout6, LayoutHelper.createFrame(-2, 26, 17));
            TextView textViewMakeTextView4 = TextHelper.makeTextView(context, 14.0f, i3, true);
            this.rightTitleSelected = textViewMakeTextView4;
            textViewMakeTextView4.setText(LocaleController.getString(C2888R.string.TopicsLayoutList));
            frameLayout6.addView(textViewMakeTextView4, LayoutHelper.createFrame(-2, -2, 17));
            frameLayout4.addView(frameLayout5, LayoutHelper.createFrame(-2, 26.0f, 49, 0.0f, 182.0f, 0.0f, 0.0f));
            setChecked(false, false);
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
        }

        public void setChecked(final boolean z, boolean z2) {
            ValueAnimator valueAnimator = this.animator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.animator = null;
            }
            if (z2) {
                ViewPropertyAnimator viewPropertyAnimatorAlpha = this.leftTitleBackground.animate().scaleX(!z ? 0.0f : 1.0f).scaleY(!z ? 0.0f : 1.0f).alpha(!z ? 0.0f : 1.0f);
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                viewPropertyAnimatorAlpha.setInterpolator(cubicBezierInterpolator).setDuration(320L).start();
                this.rightTitleBackground.animate().scaleX(z ? 0.0f : 1.0f).scaleY(z ? 0.0f : 1.0f).alpha(z ? 0.0f : 1.0f).setInterpolator(cubicBezierInterpolator).setDuration(320L).start();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.tabsAlpha, z ? 1.0f : 0.0f);
                this.animator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.EnableTopicsActivity$TopicsLayoutSwitcher$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setChecked$0(valueAnimator2);
                    }
                });
                this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.EnableTopicsActivity.TopicsLayoutSwitcher.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        TopicsLayoutSwitcher.this.tabsAlpha = z ? 1.0f : 0.0f;
                        BackupImageView backupImageView = TopicsLayoutSwitcher.this.leftImageView;
                        int i = Theme.key_windowBackgroundWhiteGrayText5;
                        int color = Theme.getColor(i, TopicsLayoutSwitcher.this.resourcesProvider);
                        int i2 = Theme.key_featuredStickers_addButton;
                        int iBlendARGB = ColorUtils.blendARGB(color, Theme.getColor(i2, TopicsLayoutSwitcher.this.resourcesProvider), TopicsLayoutSwitcher.this.tabsAlpha);
                        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                        backupImageView.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
                        TopicsLayoutSwitcher.this.leftImageView.invalidate();
                        TopicsLayoutSwitcher.this.rightImageView.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(i, TopicsLayoutSwitcher.this.resourcesProvider), Theme.getColor(i2, TopicsLayoutSwitcher.this.resourcesProvider), 1.0f - TopicsLayoutSwitcher.this.tabsAlpha), mode));
                        TopicsLayoutSwitcher.this.rightImageView.invalidate();
                    }
                });
                this.animator.setInterpolator(cubicBezierInterpolator);
                this.animator.setDuration(320L);
                this.animator.start();
            } else {
                this.leftTitleBackground.animate().cancel();
                this.rightTitleBackground.animate().cancel();
                this.leftTitleBackground.setScaleX(!z ? 0.0f : 1.0f);
                this.leftTitleBackground.setScaleY(!z ? 0.0f : 1.0f);
                this.leftTitleBackground.setAlpha(!z ? 0.0f : 1.0f);
                this.rightTitleBackground.setScaleX(z ? 0.0f : 1.0f);
                this.rightTitleBackground.setScaleY(z ? 0.0f : 1.0f);
                this.rightTitleBackground.setAlpha(z ? 0.0f : 1.0f);
                this.tabsAlpha = z ? 1.0f : 0.0f;
                BackupImageView backupImageView = this.leftImageView;
                int i = Theme.key_windowBackgroundWhiteGrayText5;
                int color = Theme.getColor(i, this.resourcesProvider);
                int i2 = Theme.key_featuredStickers_addButton;
                int iBlendARGB = ColorUtils.blendARGB(color, Theme.getColor(i2, this.resourcesProvider), this.tabsAlpha);
                PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                backupImageView.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
                this.leftImageView.invalidate();
                this.rightImageView.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(i, this.resourcesProvider), Theme.getColor(i2, this.resourcesProvider), 1.0f - this.tabsAlpha), mode));
                this.rightImageView.invalidate();
            }
            RLottieDrawable lottieAnimation = (z ? this.leftImageView : this.rightImageView).getImageReceiver().getLottieAnimation();
            if (lottieAnimation != null) {
                if (lottieAnimation.getProgress() > (z ? 0.85f : 0.8f)) {
                    lottieAnimation.setProgress(0.0f, false);
                }
                lottieAnimation.restart(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setChecked$0(ValueAnimator valueAnimator) {
            this.tabsAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BackupImageView backupImageView = this.leftImageView;
            int i = Theme.key_windowBackgroundWhiteGrayText5;
            int color = Theme.getColor(i, this.resourcesProvider);
            int i2 = Theme.key_featuredStickers_addButton;
            int iBlendARGB = ColorUtils.blendARGB(color, Theme.getColor(i2, this.resourcesProvider), this.tabsAlpha);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            backupImageView.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
            this.leftImageView.invalidate();
            this.rightImageView.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(i, this.resourcesProvider), Theme.getColor(i2, this.resourcesProvider), 1.0f - this.tabsAlpha), mode));
            this.rightImageView.invalidate();
        }

        public static final class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public TopicsLayoutSwitcher createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new TopicsLayoutSwitcher(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                TopicsLayoutSwitcher topicsLayoutSwitcher = (TopicsLayoutSwitcher) view;
                topicsLayoutSwitcher.leftLayout.setOnClickListener((View.OnClickListener) uItem.object);
                topicsLayoutSwitcher.rightLayout.setOnClickListener((View.OnClickListener) uItem.object2);
                topicsLayoutSwitcher.setChecked(uItem.checked, false);
            }

            public static UItem asSwitcher(int i, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = i;
                uItemOfFactory.object = onClickListener;
                uItemOfFactory.object2 = onClickListener2;
                return uItemOfFactory;
            }
        }
    }
}
