package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.ChatListItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import java.util.HashSet;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.TopicsController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.AvatarSpan;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.GradientClip;
import org.telegram.p029ui.TopicCreateFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TopicsTabsView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private long animateFromSelectedTopicId;
    private ValueAnimator animator;
    private final BoolAnimator animatorCloseButtonVisibility;
    private final boolean bot;
    private final HorizontalTabView botCreateTopicButtonHorizontal;
    private final VerticalTabView botCreateTopicButtonVertical;
    private final boolean canShowProgress;
    private final ImageView closeButtonSide;
    private final ImageView closeButtonTop;
    private final int currentAccount;
    private long currentTopicId;
    private final long dialogId;
    private final HashSet excludeTopics;
    private final BaseFragment fragment;
    private long lastSelectedTopicId;
    private final boolean mono;
    private boolean notificationsAttached;
    private Utilities.Callback2 onDialogSelected;
    private Runnable onTopicCreated;
    private Utilities.Callback2 onTopicSelected;
    private Boolean pendingSidemenu;
    private final Theme.ResourcesProvider resourcesProvider;
    private BlurredBackgroundDrawable sideMenuBackgroundDrawable;
    private float sideMenuBackgroundMarginBottom;
    private float sideMenuBackgroundMarginTop;
    private final UniversalRecyclerView sideTabs;
    private final FrameLayout sideTabsContainer;
    public boolean sidemenuAnimating;
    public boolean sidemenuEnabled;
    public float sidemenuT;
    private final ImageView toggleButtonSide;
    private final ImageView toggleButtonTop;
    private BlurredBackgroundDrawable topMenuBackgroundDrawable;
    private final UniversalRecyclerView topTabs;
    private final FrameLayout topTabsContainer;

    public static /* synthetic */ void $r8$lambda$whz9_2q0Ul6L4zdHpqUqnJxFQVc() {
    }

    public TopicsTabsView(Context context, BaseFragment baseFragment, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        ViewGroup viewGroup;
        super(context);
        this.animatorCloseButtonVisibility = new BoolAnimator(0, new FactorAnimator.Target() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda0
            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public /* synthetic */ void onFactorChangeFinished(int i2, float f, FactorAnimator factorAnimator) {
                FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i2, f, factorAnimator);
            }

            @Override // me.vkryl.android.animator.FactorAnimator.Target
            public final void onFactorChanged(int i2, float f, float f2, FactorAnimator factorAnimator) {
                this.f$0.lambda$new$1(i2, f, f2, factorAnimator);
            }
        }, CubicBezierInterpolator.EASE_OUT_QUINT, 320L);
        this.sidemenuT = 0.0f;
        this.excludeTopics = new HashSet();
        this.fragment = baseFragment;
        this.currentAccount = i;
        this.dialogId = j;
        this.resourcesProvider = resourcesProvider;
        long j2 = -j;
        this.mono = ChatObject.isMonoForum(MessagesController.getInstance(i).getChat(Long.valueOf(j2)));
        boolean zIsBotForumWithEditableTopics = UserObject.isBotForumWithEditableTopics(MessagesController.getInstance(i).getUser(Long.valueOf(j)));
        this.bot = zIsBotForumWithEditableTopics;
        SharedPreferences preferences = UserConfig.getInstance(i).getPreferences();
        this.canShowProgress = !preferences.getBoolean("topics_end_reached_" + j2, false);
        setClipChildren(true);
        setClipToPadding(true);
        setWillNotDraw(false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.topTabsContainer = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(-1, 36.0f, 55, 7.0f, 7.0f, 7.0f, 7.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.sideTabsContainer = frameLayout2;
        addView(frameLayout2, LayoutHelper.createFrame(64, -1.0f, 115, 7.0f, 7.0f, 7.0f, 7.0f));
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, i, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillHorizontalTabs((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onTabClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onTabLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }, resourcesProvider) { // from class: org.telegram.ui.Components.TopicsTabsView.1
            private final AnimatedFloat animateTab;
            private final AnimatedFloat animatedClip;
            private final GradientClip clip = new GradientClip();
            private final Paint linePaint;
            private final RectF lineRect;
            private Drawable pinIcon;
            private int pinIconColor;
            private final Paint pinnedBackgroundPaint;

            {
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.animatedClip = new AnimatedFloat(this, 320L, cubicBezierInterpolator);
                this.lineRect = new RectF();
                this.linePaint = new Paint(1);
                this.animateTab = new AnimatedFloat(this, 420L, cubicBezierInterpolator);
                this.pinnedBackgroundPaint = new Paint(1);
            }

            @Override // org.telegram.p029ui.Components.UniversalRecyclerView, org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                float f = this.animatedClip.set(canScrollHorizontally(-1));
                if (f > 0.0f) {
                    canvas2 = canvas;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                } else {
                    canvas2 = canvas;
                }
                drawPinnedBackground(canvas2);
                super.dispatchDraw(canvas2);
                if (TopicsTabsView.this.lastSelectedTopicId != TopicsTabsView.this.currentTopicId) {
                    TopicsTabsView topicsTabsView = TopicsTabsView.this;
                    topicsTabsView.animateFromSelectedTopicId = topicsTabsView.lastSelectedTopicId;
                    this.animateTab.force(0.0f);
                }
                TopicsTabsView topicsTabsView2 = TopicsTabsView.this;
                topicsTabsView2.lastSelectedTopicId = topicsTabsView2.currentTopicId;
                HorizontalTabView horizontalTabView = null;
                HorizontalTabView horizontalTabView2 = null;
                for (int i2 = 0; i2 < getChildCount(); i2++) {
                    View childAt = getChildAt(i2);
                    if (childAt instanceof HorizontalTabView) {
                        HorizontalTabView horizontalTabView3 = (HorizontalTabView) childAt;
                        if (!horizontalTabView3.isAdd) {
                            if (horizontalTabView3.getTopicId() == TopicsTabsView.this.currentTopicId) {
                                horizontalTabView = horizontalTabView3;
                            }
                            if (horizontalTabView3.getTopicId() == TopicsTabsView.this.animateFromSelectedTopicId) {
                                horizontalTabView2 = horizontalTabView3;
                            }
                        }
                    }
                }
                if (horizontalTabView != null) {
                    this.lineRect.set(horizontalTabView.getX() + AndroidUtilities.m1124dp(1.0f), horizontalTabView.getY() + AndroidUtilities.m1124dp(4.0f), (horizontalTabView.getX() + horizontalTabView.getWidth()) - AndroidUtilities.m1124dp(1.0f), (horizontalTabView.getY() + getHeight()) - AndroidUtilities.m1124dp(4.0f));
                    if (horizontalTabView2 != null) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(horizontalTabView2.getX() + AndroidUtilities.m1124dp(1.0f), horizontalTabView2.getY() + AndroidUtilities.m1124dp(4.0f), (horizontalTabView2.getX() + horizontalTabView2.getWidth()) - AndroidUtilities.m1124dp(1.0f), (horizontalTabView2.getY() + getHeight()) - AndroidUtilities.m1124dp(4.0f));
                        AndroidUtilities.lerp(rectF, this.lineRect, this.animateTab.set(1.0f), this.lineRect);
                    }
                    this.linePaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), 31));
                    canvas2.drawRoundRect(this.lineRect, AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(14.0f), this.linePaint);
                }
                if (f > 0.0f) {
                    canvas2.save();
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    rectF2.set(0.0f, 0.0f, AndroidUtilities.m1124dp(12.0f), getHeight());
                    this.clip.draw(canvas2, rectF2, 0, f);
                    canvas2.restore();
                    canvas2.restore();
                }
            }

            private void drawPinnedBackground(Canvas canvas) {
                float width = getWidth();
                float x = 0.0f;
                for (int i2 = 0; i2 < getChildCount(); i2++) {
                    View childAt = getChildAt(i2);
                    if (childAt instanceof HorizontalTabView) {
                        HorizontalTabView horizontalTabView = (HorizontalTabView) childAt;
                        if (horizontalTabView.pinned) {
                            if (width > horizontalTabView.getX()) {
                                width = horizontalTabView.getX();
                                getChildAdapterPosition(horizontalTabView);
                            }
                            if (x < horizontalTabView.getX() + horizontalTabView.getWidth()) {
                                x = horizontalTabView.getX() + horizontalTabView.getWidth();
                                getChildAdapterPosition(horizontalTabView);
                            }
                        }
                    }
                }
                if (x > width) {
                    this.pinnedBackgroundPaint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, this.resourcesProvider), 0.06f));
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(width + AndroidUtilities.m1124dp(1.0f), (getHeight() - AndroidUtilities.m1124dp(28.0f)) / 2.0f, x - AndroidUtilities.m1124dp(1.0f), (getHeight() + AndroidUtilities.m1124dp(28.0f)) / 2.0f);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(14.0f), this.pinnedBackgroundPaint);
                    if (this.pinIcon == null) {
                        this.pinIcon = getContext().getResources().getDrawable(C2888R.drawable.msg_limit_pin).mutate();
                    }
                    int color = Theme.getColor(Theme.key_chats_pinnedIcon, this.resourcesProvider);
                    if (this.pinIconColor != color) {
                        Drawable drawable = this.pinIcon;
                        this.pinIconColor = color;
                        drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                    }
                    this.pinIcon.setBounds((int) (AndroidUtilities.m1124dp(-17.0f) + x), (int) (rectF.top + AndroidUtilities.m1124dp(10.0f)), (int) (x + AndroidUtilities.m1124dp(-7.0f)), (int) (rectF.top + AndroidUtilities.m1124dp(20.0f)));
                    this.pinIcon.draw(canvas);
                }
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView
            public Integer getSelectorColor(int i2) {
                return 0;
            }
        };
        this.topTabs = universalRecyclerView;
        universalRecyclerView.listenReorder(new Utilities.Callback2() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.whenReordered(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        });
        universalRecyclerView.setWillNotDraw(false);
        universalRecyclerView.adapter.setApplyBackground(false);
        universalRecyclerView.makeHorizontal();
        frameLayout.addView(universalRecyclerView, LayoutHelper.createFrame(-1, -1.0f, 119, 41.0f, 0.0f, 0.0f, 0.0f));
        universalRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.TopicsTabsView.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (TopicsTabsView.this.isLoadingVisible()) {
                    TopicsTabsView.this.loadMore();
                }
            }
        });
        if (zIsBotForumWithEditableTopics) {
            this.botCreateTopicButtonHorizontal = null;
            VerticalTabView verticalTabView = new VerticalTabView(context, i, resourcesProvider);
            this.botCreateTopicButtonVertical = verticalTabView;
            verticalTabView.setAll(true, false, this.currentTopicId == 0);
            verticalTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            viewGroup = frameLayout2;
            viewGroup.addView(verticalTabView, LayoutHelper.createFrame(64, 42.0f, 51, 0.0f, 48.0f, 0.0f, 0.0f));
        } else {
            viewGroup = frameLayout2;
            this.botCreateTopicButtonHorizontal = null;
            this.botCreateTopicButtonVertical = null;
        }
        ViewGroup viewGroup2 = viewGroup;
        UniversalRecyclerView universalRecyclerView2 = new UniversalRecyclerView(context, i, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillVerticalTabs((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onTabClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onTabLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }, resourcesProvider) { // from class: org.telegram.ui.Components.TopicsTabsView.3
            private Drawable pinIcon;
            private int pinIconColor;
            private final GradientClip clip = new GradientClip();
            private final AnimatedFloat animatedClip = new AnimatedFloat(this, 320, CubicBezierInterpolator.EASE_OUT_QUINT);
            private final Paint pinnedBackgroundPaint = new Paint(1);

            @Override // org.telegram.p029ui.Components.UniversalRecyclerView, org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                float f = this.animatedClip.set(canScrollVertically(-1));
                if (f > 0.0f) {
                    canvas2 = canvas;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                } else {
                    canvas2 = canvas;
                }
                drawPinnedBackground(canvas2);
                super.dispatchDraw(canvas2);
                if (f > 0.0f) {
                    canvas2.save();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, getWidth(), AndroidUtilities.m1124dp(12.0f));
                    this.clip.draw(canvas2, rectF, 1, f);
                    canvas2.restore();
                    canvas2.restore();
                }
            }

            private void drawPinnedBackground(Canvas canvas) {
                float height = getHeight();
                float y = 0.0f;
                for (int i2 = 0; i2 < getChildCount(); i2++) {
                    View childAt = getChildAt(i2);
                    if (childAt instanceof VerticalTabView) {
                        VerticalTabView verticalTabView2 = (VerticalTabView) childAt;
                        if (verticalTabView2.pinned) {
                            if (height > verticalTabView2.getY()) {
                                height = verticalTabView2.getY();
                                getChildAdapterPosition(verticalTabView2);
                            }
                            if (y < verticalTabView2.getY() + verticalTabView2.getHeight()) {
                                y = verticalTabView2.getY() + verticalTabView2.getHeight();
                                getChildAdapterPosition(verticalTabView2);
                            }
                        }
                    }
                }
                if (y > height) {
                    this.pinnedBackgroundPaint.setColor(Theme.getColor(Theme.key_chats_pinnedOverlay, this.resourcesProvider));
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set((getWidth() - AndroidUtilities.m1124dp(56.0f)) / 2.0f, height, (getWidth() + AndroidUtilities.m1124dp(56.0f)) / 2.0f, y);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.pinnedBackgroundPaint);
                    if (this.pinIcon == null) {
                        this.pinIcon = getContext().getResources().getDrawable(C2888R.drawable.msg_limit_pin).mutate();
                    }
                    int color = Theme.getColor(Theme.key_chats_pinnedIcon, this.resourcesProvider);
                    if (this.pinIconColor != color) {
                        Drawable drawable = this.pinIcon;
                        this.pinIconColor = color;
                        drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
                    }
                    this.pinIcon.setBounds((int) (rectF.left + AndroidUtilities.m1124dp(4.0f)), (int) (rectF.top + AndroidUtilities.m1124dp(2.66f)), (int) (rectF.left + AndroidUtilities.m1124dp(13.66f)), (int) (rectF.top + AndroidUtilities.m1124dp(12.32f)));
                    this.pinIcon.draw(canvas);
                }
            }
        };
        this.sideTabs = universalRecyclerView2;
        universalRecyclerView2.listenReorder(new Utilities.Callback2() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.whenReordered(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        });
        universalRecyclerView2.adapter.setApplyBackground(false);
        universalRecyclerView2.setClipToPadding(false);
        universalRecyclerView2.setClipChildren(false);
        viewGroup2.addView(universalRecyclerView2, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, zIsBotForumWithEditableTopics ? 90.0f : 48.0f, 0.0f, 0.0f));
        universalRecyclerView2.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.TopicsTabsView.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (TopicsTabsView.this.isLoadingVisible()) {
                    TopicsTabsView.this.loadMore();
                }
            }
        });
        ImageView imageViewCreateButton = createButton(context, C2888R.drawable.menu_sidebar, new View.OnClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onSideMenuButtonClick(view);
            }
        });
        this.toggleButtonTop = imageViewCreateButton;
        ImageView imageViewCreateButton2 = createButton(context, C2888R.drawable.menu_sidebar, new View.OnClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onSideMenuButtonClick(view);
            }
        });
        this.toggleButtonSide = imageViewCreateButton2;
        frameLayout.addView(imageViewCreateButton, LayoutHelper.createFrame(44, 36, 51));
        viewGroup2.addView(imageViewCreateButton2, LayoutHelper.createFrame(64, 48, 51));
        ImageView imageViewCreateButton3 = createButton(context, C2888R.drawable.msg_select, new View.OnClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onCloseButtonClick(view);
            }
        });
        this.closeButtonTop = imageViewCreateButton3;
        ImageView imageViewCreateButton4 = createButton(context, C2888R.drawable.msg_select, new View.OnClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onCloseButtonClick(view);
            }
        });
        this.closeButtonSide = imageViewCreateButton4;
        frameLayout.addView(imageViewCreateButton3, LayoutHelper.createFrame(44, 36, 51));
        viewGroup2.addView(imageViewCreateButton4, LayoutHelper.createFrame(64, 48, 51));
        MessagesController.getInstance(i).getTopicsController().loadTopics(j2, false, 3);
        if (MessagesController.getInstance(i).getMainSettings().getBoolean("topicssidetabs" + j, false)) {
            this.sidemenuT = 1.0f;
            this.sidemenuEnabled = true;
        }
        checkUi_closeButtonVisibility();
        updateSidemenuPosition();
        updateTabs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.onTopicSelected.run(0, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSideMenuButtonClick(View view) {
        Boolean bool = this.pendingSidemenu;
        boolean z = false;
        if (bool == null ? !this.sidemenuEnabled : !bool.booleanValue()) {
            z = true;
        }
        animateSidemenuTo(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCloseButtonClick(View view) {
        this.sideTabs.allowReorder(false);
        this.topTabs.allowReorder(false);
        this.animatorCloseButtonVisibility.setValue(false, true);
        AndroidUtilities.updateVisibleRows(this.sideTabs);
        AndroidUtilities.updateVisibleRows(this.topTabs);
    }

    private ImageView createButton(Context context, int i, View.OnClickListener onClickListener) {
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(i);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setOnClickListener(onClickListener);
        ScaleStateListAnimator.apply(imageView);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i, float f, float f2, FactorAnimator factorAnimator) {
        checkUi_closeButtonVisibility();
    }

    private void checkUi_closeButtonVisibility() {
        float floatValue = this.animatorCloseButtonVisibility.getFloatValue();
        this.closeButtonTop.setAlpha(floatValue);
        this.closeButtonTop.setScaleX(AndroidUtilities.lerp(0.4f, 1.0f, floatValue));
        this.closeButtonTop.setScaleY(AndroidUtilities.lerp(0.4f, 1.0f, floatValue));
        this.closeButtonTop.setVisibility(floatValue > 0.0f ? 0 : 8);
        this.closeButtonSide.setAlpha(floatValue);
        this.closeButtonSide.setScaleX(AndroidUtilities.lerp(0.4f, 1.0f, floatValue));
        this.closeButtonSide.setScaleY(AndroidUtilities.lerp(0.4f, 1.0f, floatValue));
        this.closeButtonSide.setVisibility(floatValue > 0.0f ? 0 : 8);
        float floatValue2 = 1.0f - this.animatorCloseButtonVisibility.getFloatValue();
        this.toggleButtonTop.setAlpha(floatValue2);
        this.toggleButtonTop.setScaleX(AndroidUtilities.lerp(0.4f, 1.0f, floatValue2));
        this.toggleButtonTop.setScaleY(AndroidUtilities.lerp(0.4f, 1.0f, floatValue2));
        this.toggleButtonTop.setVisibility(floatValue2 > 0.0f ? 0 : 8);
        this.toggleButtonSide.setAlpha(floatValue2);
        this.toggleButtonSide.setScaleX(AndroidUtilities.lerp(0.4f, 1.0f, floatValue2));
        this.toggleButtonSide.setScaleY(AndroidUtilities.lerp(0.4f, 1.0f, floatValue2));
        this.toggleButtonSide.setVisibility(floatValue2 > 0.0f ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.sideTabsContainer.getVisibility() == 0) {
            this.sideMenuBackgroundDrawable.setBounds((int) this.sideTabsContainer.getTranslationX(), (int) this.sideMenuBackgroundMarginTop, (int) (this.sideTabsContainer.getTranslationX() + AndroidUtilities.m1124dp(78.0f)), (int) (getMeasuredHeight() - this.sideMenuBackgroundMarginBottom));
            this.sideMenuBackgroundDrawable.draw(canvas);
        }
        if (this.topTabsContainer.getVisibility() == 0) {
            this.topMenuBackgroundDrawable.setBounds(0, (int) this.topTabsContainer.getTranslationY(), getMeasuredWidth(), (int) (this.topTabsContainer.getTranslationY() + AndroidUtilities.m1124dp(50.0f)));
            this.topMenuBackgroundDrawable.draw(canvas);
        }
        canvas.save();
        canvas.clipRect(0, 0, getWidth(), getHeight());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        canvas.save();
        if (view == this.sideTabsContainer) {
            canvas.clipPath(this.sideMenuBackgroundDrawable.getPath());
        }
        if (view == this.topTabsContainer) {
            canvas.clipPath(this.topMenuBackgroundDrawable.getPath());
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restore();
        return zDrawChild;
    }

    public void setSideMenuBackgroundDrawable(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.sideMenuBackgroundDrawable = blurredBackgroundDrawable;
        blurredBackgroundDrawable.setRadius(AndroidUtilities.m1124dp(16.0f));
        this.sideMenuBackgroundDrawable.setPadding(AndroidUtilities.m1124dp(7.0f));
    }

    public void setTopMenuBackgroundDrawable(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.topMenuBackgroundDrawable = blurredBackgroundDrawable;
        blurredBackgroundDrawable.setRadius(AndroidUtilities.m1124dp(18.0f));
        this.topMenuBackgroundDrawable.setPadding(AndroidUtilities.m1124dp(7.0f));
    }

    public void setSideMenuBackgroundMarginBottom(float f) {
        this.sideMenuBackgroundMarginBottom = f;
        checkSideTabsPadding(true);
        invalidate();
    }

    public void setSideMenuBackgroundMarginTop(float f) {
        this.sideMenuBackgroundMarginTop = f;
        this.sideTabsContainer.setTranslationY(f);
        checkSideTabsPadding(true);
        invalidate();
    }

    private void checkSideTabsPadding(boolean z) {
        int paddingBottom = this.sideTabsContainer.getPaddingBottom();
        int iRound = Math.round(this.sideMenuBackgroundMarginBottom + this.sideMenuBackgroundMarginTop);
        if (paddingBottom == iRound) {
            return;
        }
        if (z) {
            this.sideTabsContainer.setPadding(0, 0, 0, iRound);
        } else if (iRound < paddingBottom) {
            this.sideTabsContainer.setPadding(0, 0, 0, 0);
        }
    }

    public void updateSidemenuPosition() {
        this.topTabsContainer.setTranslationY((-AndroidUtilities.m1124dp(43.0f)) * this.sidemenuT);
        this.topTabsContainer.setAlpha(AndroidUtilities.lerp(1.0f, 0.85f, this.sidemenuT));
        this.topTabsContainer.setVisibility(this.sidemenuT >= 1.0f ? 8 : 0);
        this.sideTabsContainer.setTranslationX((-AndroidUtilities.m1124dp(78.0f)) * (1.0f - this.sidemenuT));
        this.sideTabsContainer.setVisibility(this.sidemenuT <= 0.0f ? 8 : 0);
        ImageView imageView = this.toggleButtonTop;
        int i = Theme.key_windowBackgroundWhiteGrayText2;
        int color = Theme.getColor(i, this.resourcesProvider);
        int i2 = Theme.key_featuredStickers_addButton;
        int iBlendARGB = ColorUtils.blendARGB(color, Theme.getColor(i2, this.resourcesProvider), 1.0f - this.sidemenuT);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(iBlendARGB, mode));
        this.toggleButtonSide.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(Theme.getColor(i, this.resourcesProvider), Theme.getColor(i2, this.resourcesProvider), this.sidemenuT), mode));
        this.closeButtonTop.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, this.resourcesProvider), mode));
        this.closeButtonSide.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, this.resourcesProvider), mode));
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateSidemenuTo(boolean z) {
        if (this.sidemenuEnabled == z) {
            return;
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            if (this.sidemenuAnimating) {
                this.pendingSidemenu = Boolean.valueOf(z);
                return;
            }
        }
        this.sidemenuEnabled = z;
        this.sidemenuAnimating = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.sidemenuT, z ? 1.0f : 0.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda18
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateSidemenuTo$2(valueAnimator2);
            }
        });
        this.animator.addListener(new C52455(z));
        this.animator.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
        this.animator.setDuration(250L);
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateSidemenuTo$2(ValueAnimator valueAnimator) {
        this.sidemenuT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateSidemenuPosition();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.TopicsTabsView$5 */
    class C52455 extends AnimatorListenerAdapter {
        final /* synthetic */ boolean val$side;

        C52455(boolean z) {
            this.val$side = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (TopicsTabsView.this.animator == animator) {
                TopicsTabsView topicsTabsView = TopicsTabsView.this;
                topicsTabsView.sidemenuT = this.val$side ? 1.0f : 0.0f;
                topicsTabsView.updateSidemenuPosition();
                TopicsTabsView topicsTabsView2 = TopicsTabsView.this;
                topicsTabsView2.sidemenuAnimating = false;
                topicsTabsView2.animator = null;
                MessagesController.getInstance(TopicsTabsView.this.currentAccount).getMainSettings().edit().putBoolean("topicssidetabs" + TopicsTabsView.this.dialogId, TopicsTabsView.this.sidemenuEnabled).apply();
                if (TopicsTabsView.this.pendingSidemenu != null && this.val$side != TopicsTabsView.this.pendingSidemenu.booleanValue()) {
                    boolean zBooleanValue = TopicsTabsView.this.pendingSidemenu.booleanValue();
                    TopicsTabsView.this.pendingSidemenu = null;
                    TopicsTabsView.this.animateSidemenuTo(zBooleanValue);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAnimationEnd$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            if (TopicsTabsView.this.isLoadingVisible()) {
                TopicsTabsView.this.loadMore();
            }
        }
    }

    private void updateTabs() {
        boolean zCanScrollHorizontally = this.topTabs.canScrollHorizontally(-1);
        this.topTabs.adapter.update(true);
        if (!zCanScrollHorizontally) {
            this.topTabs.scrollToPosition(0);
        }
        boolean zCanScrollVertically = this.sideTabs.canScrollVertically(-1);
        this.sideTabs.adapter.update(true);
        if (!zCanScrollVertically) {
            this.sideTabs.scrollToPosition(0);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateTabs$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTabs$3() {
        if (isLoadingVisible()) {
            loadMore();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.topicsDidLoaded) {
            if (((Long) objArr[0]).longValue() != (-this.dialogId)) {
                return;
            }
            updateTabs();
        } else {
            if (i != NotificationCenter.updateInterfaces || (((Integer) objArr[0]).intValue() & MessagesController.UPDATE_MASK_SELECT_DIALOG) <= 0) {
                return;
            }
            MessagesController.getInstance(this.currentAccount).getTopicsController().sortTopics(-this.dialogId, false);
            updateTabs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void whenReordered(int i, ArrayList arrayList) {
        TopicsController topicsController = MessagesController.getInstance(this.currentAccount).getTopicsController();
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(Integer.valueOf(((UItem) arrayList.get(i2)).f2105id));
        }
        topicsController.reorderPinnedTopics(-this.dialogId, arrayList2);
        topicsController.sortTopics(-this.dialogId, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAttached(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setAttached(false);
    }

    private void setAttached(boolean z) {
        if (this.notificationsAttached == z) {
            return;
        }
        this.notificationsAttached = z;
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.topicsDidLoaded);
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
            MessagesController.getInstance(this.currentAccount).getTopicsController().onTopicFragmentResume(-this.dialogId);
        } else {
            MessagesController.getInstance(this.currentAccount).getTopicsController().onTopicFragmentPause(-this.dialogId);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.topicsDidLoaded);
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillVerticalTabs(ArrayList arrayList, UniversalAdapter universalAdapter) {
        boolean z;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
        TopicsController topicsController = MessagesController.getInstance(this.currentAccount).getTopicsController();
        ArrayList<TLRPC.TL_forumTopic> topics = topicsController.getTopics(-this.dialogId);
        boolean z2 = this.bot;
        if (!z2) {
            arrayList.add(VerticalTabView.Factory.asAll(z2, this.mono).setChecked(this.currentTopicId == 0));
        }
        if (topics != null) {
            int size = topics.size();
            z = false;
            int i = 0;
            while (i < size) {
                TLRPC.TL_forumTopic tL_forumTopic = topics.get(i);
                i++;
                TLRPC.TL_forumTopic tL_forumTopic2 = tL_forumTopic;
                if (!this.bot || tL_forumTopic2.f1720id != 1) {
                    if (!this.excludeTopics.contains(Integer.valueOf(tL_forumTopic2.f1720id))) {
                        boolean z3 = tL_forumTopic2.pinned;
                        if (!z3 && z) {
                            universalAdapter.reorderSectionEnd();
                            z = false;
                        } else if (z3 && !z) {
                            universalAdapter.reorderSectionStart();
                            z = true;
                        }
                        arrayList.add(VerticalTabView.Factory.asTab(this.dialogId, tL_forumTopic2, this.mono).setChecked(this.currentTopicId == getTopicId(tL_forumTopic2)));
                    }
                }
            }
        } else {
            z = false;
        }
        if (z) {
            universalAdapter.reorderSectionEnd();
        }
        if (topics != null && !topics.isEmpty() && !topicsController.endIsReached(-this.dialogId) && this.canShowProgress) {
            arrayList.add(VerticalTabView.Factory.asLoading(-2));
            arrayList.add(VerticalTabView.Factory.asLoading(-3));
            arrayList.add(VerticalTabView.Factory.asLoading(-4));
        }
        if (this.bot || this.mono) {
            return;
        }
        if ((chat == null || !ChatObject.canCreateTopic(chat)) && !UserObject.isBotForumWithEditableTopics(user)) {
            return;
        }
        arrayList.add(VerticalTabView.Factory.asAdd(false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillHorizontalTabs(ArrayList arrayList, UniversalAdapter universalAdapter) {
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.dialogId));
        TopicsController topicsController = MessagesController.getInstance(this.currentAccount).getTopicsController();
        ArrayList<TLRPC.TL_forumTopic> topics = topicsController.getTopics(-this.dialogId);
        boolean z = false;
        arrayList.add(HorizontalTabView.Factory.asAll(this.bot, this.mono).setChecked(this.currentTopicId == 0));
        if (topics != null) {
            int size = topics.size();
            boolean z2 = false;
            int i = 0;
            while (i < size) {
                TLRPC.TL_forumTopic tL_forumTopic = topics.get(i);
                i++;
                TLRPC.TL_forumTopic tL_forumTopic2 = tL_forumTopic;
                if (!this.bot || tL_forumTopic2.f1720id != 1) {
                    if (!this.excludeTopics.contains(Integer.valueOf(tL_forumTopic2.f1720id))) {
                        boolean z3 = tL_forumTopic2.pinned;
                        if (!z3 && z2) {
                            if (!arrayList.isEmpty()) {
                                ((UItem) arrayList.get(arrayList.size() - 1)).flags |= 8;
                            }
                            universalAdapter.reorderSectionEnd();
                            z2 = false;
                        } else if (z3 && !z2) {
                            universalAdapter.reorderSectionStart();
                            z2 = true;
                        }
                        arrayList.add(HorizontalTabView.Factory.asTab(this.dialogId, tL_forumTopic2, this.mono).setChecked(this.currentTopicId == getTopicId(tL_forumTopic2)));
                    }
                }
            }
            z = z2;
        }
        if (z) {
            universalAdapter.reorderSectionEnd();
        }
        if (topics != null && !topics.isEmpty() && !topicsController.endIsReached(-this.dialogId) && this.canShowProgress) {
            arrayList.add(HorizontalTabView.Factory.asLoading(-2));
            arrayList.add(HorizontalTabView.Factory.asLoading(-3));
            arrayList.add(HorizontalTabView.Factory.asLoading(-4));
        }
        if (this.bot || this.mono) {
            return;
        }
        if ((chat == null || !ChatObject.canCreateTopic(chat)) && !UserObject.isBotForumWithEditableTopics(user)) {
            return;
        }
        arrayList.add(HorizontalTabView.Factory.asAdd());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLoadingVisible() {
        if (this.sidemenuT > 0.5f) {
            for (int i = 0; i < this.sideTabs.getChildCount(); i++) {
                UItem item = this.sideTabs.adapter.getItem(this.sideTabs.getChildAdapterPosition(this.sideTabs.getChildAt(i)));
                if (item != null && item.red) {
                    return true;
                }
            }
        } else {
            for (int i2 = 0; i2 < this.topTabs.getChildCount(); i2++) {
                UItem item2 = this.topTabs.adapter.getItem(this.topTabs.getChildAdapterPosition(this.topTabs.getChildAt(i2)));
                if (item2 != null && item2.red) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMore() {
        TopicsController topicsController = MessagesController.getInstance(this.currentAccount).getTopicsController();
        if (topicsController.endIsReached(-this.dialogId)) {
            return;
        }
        topicsController.loadTopics(-this.dialogId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTabClick(UItem uItem, View view, int i, float f, float f2) {
        if (this.mono) {
            Utilities.Callback2 callback2 = this.onDialogSelected;
            if (callback2 != null) {
                callback2.run(Long.valueOf(uItem.longValue), Boolean.FALSE);
                return;
            }
            return;
        }
        if (uItem.longValue == -2) {
            Runnable runnable = this.onTopicCreated;
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        Utilities.Callback2 callback22 = this.onTopicSelected;
        if (callback22 != null) {
            callback22.run(Integer.valueOf(uItem.f2105id), Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onTabLongClick(UItem uItem, View view, int i, float f, float f2) {
        if (!this.sideTabs.isReorderAllowed() && !this.topTabs.isReorderAllowed()) {
            Object obj = uItem.object;
            if (obj instanceof TLRPC.TL_forumTopic) {
                final TLRPC.TL_forumTopic tL_forumTopic = (TLRPC.TL_forumTopic) obj;
                final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
                long j = this.dialogId;
                final TLRPC.Chat chat = j < 0 ? messagesController.getChat(Long.valueOf(-j)) : null;
                long j2 = this.dialogId;
                TLRPC.User user = j2 > 0 ? messagesController.getUser(Long.valueOf(j2)) : null;
                final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.fragment, view, true);
                if (ChatObject.isMonoForum(chat)) {
                    final long peerDialogId = DialogObject.getPeerDialogId(tL_forumTopic.from_id);
                    if (peerDialogId == 0 || !ChatObject.canManageMonoForum(this.currentAccount, chat)) {
                        return false;
                    }
                    TLRPC.Chat chat2 = chat;
                    itemOptionsMakeOptions.add(C2888R.drawable.msg_clear, LocaleController.getString(C2888R.string.ClearHistory), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onTabLongClick$5(itemOptionsMakeOptions, peerDialogId, chat);
                        }
                    });
                    long j3 = chat2.f1660id;
                    if (ChatObject.isMonoForum(chat2) && ChatObject.canManageMonoForum(this.currentAccount, chat2)) {
                        long j4 = chat2.linked_monoforum_id;
                        if (j4 != 0) {
                            j3 = j4;
                        }
                    }
                    final TLRPC.Chat chat3 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j3));
                    final TLRPC.User user2 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                    if (user2 != null && ChatObject.canBlockUsers(chat3)) {
                        itemOptionsMakeOptions.add(C2888R.drawable.msg_remove, LocaleController.getString(C2888R.string.BanUserMonoforum), (Runnable) null);
                        final long j5 = j3;
                        final ActionBarMenuSubItem last = itemOptionsMakeOptions.getLast();
                        last.setVisibility(8);
                        MessagesController.getInstance(this.currentAccount).checkIsInChat(true, chat3, user2, new MessagesController.IsInChatCheckedCallback() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda11
                            @Override // org.telegram.messenger.MessagesController.IsInChatCheckedCallback
                            public final void run(boolean z, TLRPC.TL_chatAdminRights tL_chatAdminRights, String str) {
                                this.f$0.lambda$onTabLongClick$10(last, itemOptionsMakeOptions, j5, user2, chat3, z, tL_chatAdminRights, str);
                            }
                        });
                    }
                } else {
                    TLRPC.Chat chat4 = chat;
                    if (ChatObject.canManageTopics(chat4) || UserObject.isBotForumWithEditableTopics(user)) {
                        boolean z = tL_forumTopic.pinned;
                        itemOptionsMakeOptions.add(z ? C2888R.drawable.msg_unpin : C2888R.drawable.msg_pin, LocaleController.getString(z ? C2888R.string.DialogUnpin : C2888R.string.DialogPin), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda12
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTabLongClick$11(itemOptionsMakeOptions, messagesController, tL_forumTopic);
                            }
                        });
                        if (tL_forumTopic.pinned) {
                            itemOptionsMakeOptions.add(C2888R.drawable.tabs_reorder, LocaleController.getString(C2888R.string.FilterReorder), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda13
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onTabLongClick$12();
                                }
                            });
                        }
                    }
                    if (ChatObject.canManageTopics(chat4) || UserObject.isBotForumWithEditableTopics(user)) {
                        itemOptionsMakeOptions.add(C2888R.drawable.outline_profile_edit_24, LocaleController.getString(C2888R.string.EditTopic), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda14
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTabLongClick$13(itemOptionsMakeOptions, tL_forumTopic);
                            }
                        });
                    }
                    final ItemOptions itemOptionsAddAsItemOptions = ChatNotificationsPopupWrapper.addAsItemOptions(this.fragment, itemOptionsMakeOptions, this.dialogId, tL_forumTopic.f1720id);
                    boolean zIsDialogMuted = messagesController.isDialogMuted(this.dialogId, tL_forumTopic.f1720id);
                    itemOptionsMakeOptions.add(zIsDialogMuted ? C2888R.drawable.msg_unmute : C2888R.drawable.msg_mute, LocaleController.getString(zIsDialogMuted ? C2888R.string.Unmute : C2888R.string.Mute), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda15
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onTabLongClick$14(messagesController, tL_forumTopic, itemOptionsMakeOptions, itemOptionsAddAsItemOptions);
                        }
                    });
                    if (ChatObject.canManageTopic(this.currentAccount, chat4, tL_forumTopic) && !UserObject.isBotForum(user)) {
                        boolean z2 = tL_forumTopic.closed;
                        itemOptionsMakeOptions.add(z2 ? C2888R.drawable.msg_topic_restart : C2888R.drawable.msg_topic_close, LocaleController.getString(z2 ? C2888R.string.RestartTopic : C2888R.string.CloseTopic), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda16
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTabLongClick$15(itemOptionsMakeOptions, tL_forumTopic);
                            }
                        });
                    }
                    if (ChatObject.canDeleteTopic(this.currentAccount, chat4, tL_forumTopic)) {
                        itemOptionsMakeOptions.add(C2888R.drawable.msg_delete, LocaleController.getPluralString("DeleteTopics", 1), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda17
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onTabLongClick$17(itemOptionsMakeOptions, tL_forumTopic);
                            }
                        });
                    }
                }
                if (view instanceof HorizontalTabView) {
                    itemOptionsMakeOptions.setScrimViewBackground(new Drawable() { // from class: org.telegram.ui.Components.TopicsTabsView.6
                        private Paint paint = new Paint(1);
                        private RectF bound = new RectF();

                        @Override // android.graphics.drawable.Drawable
                        public int getOpacity() {
                            return -2;
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void setColorFilter(ColorFilter colorFilter) {
                        }

                        {
                            this.paint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, TopicsTabsView.this.resourcesProvider));
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void draw(Canvas canvas) {
                            this.bound.set(getBounds());
                            this.bound.inset(AndroidUtilities.m1124dp(1.0f), (this.bound.height() - AndroidUtilities.m1124dp(28.0f)) / 2.0f);
                            canvas.drawRoundRect(this.bound, AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(14.0f), this.paint);
                        }

                        @Override // android.graphics.drawable.Drawable
                        public void setAlpha(int i2) {
                            this.paint.setAlpha(i2);
                        }
                    });
                    itemOptionsMakeOptions.translate(AndroidUtilities.m1124dp(16.0f), 0.0f);
                } else {
                    itemOptionsMakeOptions.setScrimViewBackground(Theme.createRoundRectDrawable(0, AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f), 0, Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider)));
                }
                itemOptionsMakeOptions.show();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$5(ItemOptions itemOptions, final long j, TLRPC.Chat chat) {
        itemOptions.dismiss();
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        if (user != null) {
            AlertsCreator.createClearDaysDialogAlert(this.fragment, -1, user, chat, true, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda19
                @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                public final void run(boolean z) {
                    this.f$0.lambda$onTabLongClick$4(j, z);
                }
            }, this.fragment.getResourceProvider());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$4(long j, boolean z) {
        BaseFragment baseFragment = this.fragment;
        if (baseFragment instanceof ChatActivity) {
            ((ChatActivity) baseFragment).performHistoryClear(j, false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$10(final ActionBarMenuSubItem actionBarMenuSubItem, final ItemOptions itemOptions, final long j, final TLRPC.User user, final TLRPC.Chat chat, final boolean z, TLRPC.TL_chatAdminRights tL_chatAdminRights, String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onTabLongClick$9(z, actionBarMenuSubItem, itemOptions, j, user, chat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$9(boolean z, ActionBarMenuSubItem actionBarMenuSubItem, final ItemOptions itemOptions, final long j, final TLRPC.User user, final TLRPC.Chat chat) {
        final boolean z2 = !z;
        actionBarMenuSubItem.setVisibility(0);
        actionBarMenuSubItem.setText(LocaleController.getString(!z ? C2888R.string.UnbanUserMonoforum : C2888R.string.BanUserMonoforum));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onTabLongClick$8(itemOptions, z2, j, user, chat, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$8(ItemOptions itemOptions, boolean z, long j, TLRPC.User user, TLRPC.Chat chat, View view) {
        itemOptions.dismiss();
        if (!z) {
            MessagesController.getInstance(this.currentAccount).deleteParticipantFromChat(j, user, (TLRPC.Chat) null, false, false);
            return;
        }
        TLRPC.TL_channels_editBanned tL_channels_editBanned = new TLRPC.TL_channels_editBanned();
        tL_channels_editBanned.participant = MessagesController.getInputPeer(user);
        tL_channels_editBanned.channel = MessagesController.getInputChannel(chat);
        tL_channels_editBanned.banned_rights = new TLRPC.TL_chatBannedRights();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_editBanned, new RequestDelegate() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda27
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onTabLongClick$7(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$7(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            if (updates.chats.isEmpty()) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTabLongClick$6(updates);
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$6(TLRPC.Updates updates) {
        MessagesController.getInstance(this.currentAccount).loadFullChat(updates.chats.get(0).f1660id, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$11(ItemOptions itemOptions, MessagesController messagesController, TLRPC.TL_forumTopic tL_forumTopic) {
        itemOptions.dismiss();
        messagesController.getTopicsController().pinTopic(-this.dialogId, tL_forumTopic.f1720id, !tL_forumTopic.pinned, this.fragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$12() {
        this.sideTabs.allowReorder(true);
        this.topTabs.allowReorder(true);
        this.animatorCloseButtonVisibility.setValue(true, true);
        AndroidUtilities.updateVisibleRows(this.topTabs);
        AndroidUtilities.updateVisibleRows(this.sideTabs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$13(ItemOptions itemOptions, TLRPC.TL_forumTopic tL_forumTopic) {
        itemOptions.dismiss();
        this.fragment.presentFragment(TopicCreateFragment.create(-this.dialogId, tL_forumTopic.f1720id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$14(MessagesController messagesController, TLRPC.TL_forumTopic tL_forumTopic, ItemOptions itemOptions, ItemOptions itemOptions2) {
        if (messagesController.isDialogMuted(this.dialogId, tL_forumTopic.f1720id)) {
            itemOptions.dismiss();
            NotificationsController.getInstance(this.currentAccount).muteDialog(this.dialogId, tL_forumTopic.f1720id, false);
            if (BulletinFactory.canShowBulletin(this.fragment)) {
                BulletinFactory.createMuteBulletin(this.fragment, 4, 0, this.resourcesProvider).show();
                return;
            }
            return;
        }
        itemOptions.openSwipeback(itemOptions2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$15(ItemOptions itemOptions, TLRPC.TL_forumTopic tL_forumTopic) {
        itemOptions.dismiss();
        MessagesController.getInstance(this.currentAccount).getTopicsController().toggleCloseTopic(-this.dialogId, tL_forumTopic.f1720id, !tL_forumTopic.closed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTabLongClick$17(ItemOptions itemOptions, TLRPC.TL_forumTopic tL_forumTopic) {
        itemOptions.dismiss();
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(tL_forumTopic.f1720id));
        deleteTopics(hashSet, new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                TopicsTabsView.$r8$lambda$whz9_2q0Ul6L4zdHpqUqnJxFQVc();
            }
        });
    }

    public TLRPC.TL_forumTopic getTopic(long j) {
        ArrayList<TLRPC.TL_forumTopic> topics = MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(-this.dialogId);
        if (topics == null) {
            return null;
        }
        int size = topics.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_forumTopic tL_forumTopic = topics.get(i);
            i++;
            TLRPC.TL_forumTopic tL_forumTopic2 = tL_forumTopic;
            if (tL_forumTopic2.f1720id == j) {
                return tL_forumTopic2;
            }
        }
        return null;
    }

    public void setCurrentTopic(long j) {
        this.currentTopicId = j;
        this.topTabs.adapter.update(true);
        this.topTabs.invalidate();
        this.sideTabs.adapter.update(true);
        VerticalTabView verticalTabView = this.botCreateTopicButtonVertical;
        if (verticalTabView != null) {
            verticalTabView.setAll(true, false, j == 0);
        }
        HorizontalTabView horizontalTabView = this.botCreateTopicButtonHorizontal;
        if (horizontalTabView != null) {
            horizontalTabView.setAll(true, false, j == 0);
        }
    }

    public void setOnTopicSelected(Utilities.Callback2<Integer, Boolean> callback2) {
        this.onTopicSelected = callback2;
    }

    public void setOnNewTopicSelected(Runnable runnable) {
        this.onTopicCreated = runnable;
    }

    public void selectTopic(long j, boolean z) {
        if (this.mono) {
            Utilities.Callback2 callback2 = this.onDialogSelected;
            if (callback2 != null) {
                callback2.run(Long.valueOf(j), Boolean.valueOf(z));
                return;
            }
            return;
        }
        Utilities.Callback2 callback22 = this.onTopicSelected;
        if (callback22 != null) {
            callback22.run(Integer.valueOf((int) j), Boolean.valueOf(z));
        }
    }

    public void setOnDialogSelected(Utilities.Callback2<Long, Boolean> callback2) {
        this.onDialogSelected = callback2;
    }

    public static class VerticalTabView extends FrameLayout {
        private final AvatarDrawable avatarDrawable;
        private float countScale;
        private ValueAnimator counterAnimator;
        private int counterBackgroundColorKey;
        private final AnimatedTextView.AnimatedTextDrawable counterText;
        private final int currentAccount;
        private final FrameLayout imageLayoutView;
        private final BackupImageView imageView;
        private final FrameLayout.LayoutParams imageViewParams;
        private boolean isAdd;
        private boolean lastMention;
        private boolean lastReactions;
        private int lastUnread;
        private final LinearLayout layout;
        private final View lineView;
        private LoadingDrawable loadingDrawable;
        private CharSequence mentionString;
        private boolean mono;
        private boolean pinned;
        private CharSequence reactionString;
        private boolean reorder;
        private final Theme.ResourcesProvider resourcesProvider;
        private ValueAnimator selectAnimator;
        private float selectT;
        private boolean selected;
        private Shaker shaker;
        private boolean staticImage;
        private final TextView textView;
        private long topicId;

        public void setReorder(boolean z) {
            this.reorder = z;
            this.layout.invalidate();
        }

        public VerticalTabView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.mono = false;
            this.pinned = false;
            this.counterBackgroundColorKey = Theme.key_chats_unreadCounter;
            this.countScale = 1.0f;
            this.topicId = 0L;
            this.isAdd = false;
            this.staticImage = false;
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.TopicsTabsView.VerticalTabView.1
                private final AnimatedFloat shakeAlpha = new AnimatedFloat(this, 360, CubicBezierInterpolator.EASE_OUT_QUINT);

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    canvas.save();
                    float f = this.shakeAlpha.set(VerticalTabView.this.reorder);
                    if (f > 0.0f) {
                        if (VerticalTabView.this.shaker == null) {
                            VerticalTabView.this.shaker = new Shaker(this);
                        }
                        canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
                        VerticalTabView.this.shaker.concat(canvas, f);
                        canvas.translate((-getWidth()) / 2.0f, (-getHeight()) / 2.0f);
                    }
                    super.dispatchDraw(canvas);
                    canvas.restore();
                }
            };
            this.layout = linearLayout;
            linearLayout.setWillNotDraw(false);
            linearLayout.setOrientation(1);
            addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 1.0f, 0.0f, 0.0f, 0.0f));
            ScaleStateListAnimator.apply(linearLayout);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
            this.counterText = animatedTextDrawable;
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(11.0f));
            animatedTextDrawable.setTypeface(AndroidUtilities.bold());
            animatedTextDrawable.setTextColor(Theme.getColor(Theme.key_chats_unreadCounterText, resourcesProvider));
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable.setGravity(17);
            FrameLayout frameLayout = new FrameLayout(context, resourcesProvider) { // from class: org.telegram.ui.Components.TopicsTabsView.VerticalTabView.2
                private final AnimatedPaint backgroundPaint;
                private final Paint clipPaint;
                final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

                {
                    this.val$resourcesProvider = resourcesProvider;
                    Paint paint = new Paint(1);
                    this.clipPaint = paint;
                    this.backgroundPaint = new AnimatedPaint(this, resourcesProvider);
                    paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                    VerticalTabView.this.counterText.setCallback(this);
                }

                @Override // android.view.View
                protected boolean verifyDrawable(Drawable drawable) {
                    return VerticalTabView.this.counterText == drawable || super.verifyDrawable(drawable);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    Canvas canvas2;
                    float f;
                    float f2;
                    float fIsNotEmpty = VerticalTabView.this.counterText.isNotEmpty();
                    boolean z = fIsNotEmpty > 0.0f;
                    float fLerp = AndroidUtilities.lerp(0.5f, 1.0f, fIsNotEmpty) * VerticalTabView.this.countScale;
                    float fM1124dp = AndroidUtilities.m1124dp(10.0f);
                    float fM1124dp2 = AndroidUtilities.m1124dp(8.33f);
                    float width = (getWidth() / 2.0f) + AndroidUtilities.m1124dp(12.0f);
                    float fM1124dp3 = AndroidUtilities.m1124dp(12.0f);
                    float fMax = Math.max(fM1124dp2 + fM1124dp2, VerticalTabView.this.counterText.getCurrentWidth() + AndroidUtilities.m1124dp(10.0f));
                    if (z) {
                        f = 2.0f;
                        f2 = fM1124dp3;
                        canvas2 = canvas;
                        canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                    } else {
                        canvas2 = canvas;
                        f = 2.0f;
                        f2 = fM1124dp3;
                    }
                    super.dispatchDraw(canvas);
                    if (z) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        float f3 = fMax / f;
                        rectF.set((width - f3) - AndroidUtilities.m1124dp(1.33f), f2 - fM1124dp, f3 + width + AndroidUtilities.m1124dp(1.33f), f2 + fM1124dp);
                        AndroidUtilities.scaleRect(rectF, fIsNotEmpty);
                        float f4 = fM1124dp * fIsNotEmpty;
                        canvas2.drawRoundRect(rectF, f4, f4, this.clipPaint);
                        canvas2.restore();
                    }
                    if (fIsNotEmpty > 0.0f) {
                        canvas2.save();
                        canvas2.scale(fLerp, fLerp, width, f2);
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        float f5 = fMax / f;
                        rectF2.set(width - f5, f2 - fM1124dp2, width + f5, f2 + fM1124dp2);
                        canvas2.drawRoundRect(rectF2, fM1124dp2, fM1124dp2, this.backgroundPaint.setByKey(VerticalTabView.this.counterBackgroundColorKey, fIsNotEmpty));
                        VerticalTabView.this.counterText.setBounds(rectF2);
                        VerticalTabView.this.counterText.setAlpha((int) (fIsNotEmpty * 255.0f));
                        VerticalTabView.this.counterText.draw(canvas2);
                        canvas2.restore();
                    }
                }
            };
            this.imageLayoutView = frameLayout;
            frameLayout.setWillNotDraw(false);
            frameLayout.setPadding(0, AndroidUtilities.m1124dp(4.0f), 0, 0);
            linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 17));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(34, 34, 17);
            this.imageViewParams = layoutParamsCreateFrame;
            frameLayout.addView(backupImageView, layoutParamsCreateFrame);
            this.avatarDrawable = new AvatarDrawable();
            TextView textView = new TextView(context);
            this.textView = textView;
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider);
            int i2 = Theme.key_featuredStickers_addButton;
            textView.setTextColor(ColorUtils.blendARGB(color, Theme.getColor(i2, resourcesProvider), this.selectT));
            textView.setTextSize(1, 10.0f);
            textView.setGravity(17);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setMaxLines(3);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 4, 0, 4, 0));
            linearLayout.setPadding(0, 0, 0, AndroidUtilities.m1124dp(4.0f));
            View imageView = new ImageView(context);
            this.lineView = imageView;
            imageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(2.33f), Theme.getColor(i2, resourcesProvider)));
            addView(imageView, LayoutHelper.createFrame(6, -1.0f, 115, -3.0f, 3.0f, 0.0f, 3.0f));
            imageView.setTranslationX(-AndroidUtilities.m1124dp(3.0f));
            imageView.setVisibility(8);
        }

        private void setLayout(boolean z) {
            if (this.mono == z) {
                return;
            }
            this.mono = z;
            this.imageView.setRoundRadius(ExteraConfig.getAvatarCorners(28.0f));
            this.imageLayoutView.setPadding(0, AndroidUtilities.m1124dp(z ? 7.0f : 4.0f), 0, 0);
            this.imageViewParams.width = z ? AndroidUtilities.m1124dp(28.0f) : AndroidUtilities.m1124dp(30.0f);
            this.imageViewParams.height = z ? AndroidUtilities.m1124dp(28.0f) : AndroidUtilities.m1124dp(30.0f);
        }

        private void setPinned(boolean z, boolean z2) {
            if (this.pinned != z) {
                this.pinned = z;
            }
        }

        private void setCounter(boolean z, int i, boolean z2, boolean z3, boolean z4) {
            if (z3) {
                this.counterBackgroundColorKey = Theme.key_dialogReactionMentionBackground;
                if (this.reactionString == null) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("❤️");
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_like_filled);
                    coloredImageSpan.setScale(0.8f, 0.8f);
                    coloredImageSpan.spaceScaleX = 0.5f;
                    coloredImageSpan.translate(-AndroidUtilities.m1124dp(3.0f), 0.0f);
                    spannableStringBuilder.setSpan(coloredImageSpan, 0, spannableStringBuilder.length(), 33);
                    this.reactionString = spannableStringBuilder;
                }
                this.counterText.setText(this.reactionString, z4);
            } else if (z2) {
                this.counterBackgroundColorKey = z ? Theme.key_chats_unreadCounterMuted : Theme.key_chats_unreadCounter;
                if (this.mentionString == null) {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("@");
                    ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2888R.drawable.mini_mention_filled_16);
                    coloredImageSpan2.setScale(0.8f, 0.8f);
                    coloredImageSpan2.spaceScaleX = 0.5f;
                    coloredImageSpan2.translate(-AndroidUtilities.m1124dp(3.0f), 0.0f);
                    spannableStringBuilder2.setSpan(coloredImageSpan2, 0, 1, 33);
                    this.mentionString = spannableStringBuilder2;
                }
                this.counterText.setText(this.mentionString, z4);
            } else if (i > 0) {
                this.counterBackgroundColorKey = z ? Theme.key_chats_unreadCounterMuted : Theme.key_chats_unreadCounter;
                this.counterText.setText(LocaleController.formatNumber(i, ','), z4);
            } else {
                this.counterBackgroundColorKey = Theme.key_chats_unreadCounterMuted;
                this.counterText.setText(_UrlKt.FRAGMENT_ENCODE_SET, z4);
            }
            if (z4 && (this.lastUnread < i || ((!this.lastMention && z2) || (!this.lastReactions && z3)))) {
                animateCounterBounce();
            }
            this.lastUnread = i;
            this.lastMention = z2;
            this.lastReactions = z3;
            this.imageLayoutView.invalidate();
        }

        private void animateCounterBounce() {
            ValueAnimator valueAnimator = this.counterAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.counterAnimator = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.counterAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TopicsTabsView$VerticalTabView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateCounterBounce$0(valueAnimator2);
                }
            });
            this.counterAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.TopicsTabsView.VerticalTabView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    VerticalTabView.this.countScale = 1.0f;
                    VerticalTabView.this.imageLayoutView.invalidate();
                }
            });
            this.counterAnimator.setInterpolator(new OvershootInterpolator(2.0f));
            this.counterAnimator.setDuration(200L);
            this.counterAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateCounterBounce$0(ValueAnimator valueAnimator) {
            this.countScale = Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            this.imageLayoutView.invalidate();
        }

        public void setAll(boolean z, boolean z2, boolean z3) {
            setLayout(z2);
            this.topicId = -1L;
            this.staticImage = true;
            this.isAdd = false;
            this.textView.setText(LocaleController.getString(z ? C2888R.string.BotForumNewTopic : C2888R.string.AllTopicsSide));
            this.textView.setVisibility(z ? 8 : 0);
            this.imageView.clearImage();
            this.imageView.setAnimatedEmojiDrawable(null);
            if (z) {
                BotNewTopicDrawable botNewTopicDrawable = new BotNewTopicDrawable(getContext());
                botNewTopicDrawable.setColor(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider));
                this.imageView.setImageDrawable(botNewTopicDrawable);
            } else {
                this.imageView.setImageResource(C2888R.drawable.other_chats);
            }
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            setSelected(z3);
            updateImageColor();
            updateState();
            setCounter(true, 0, false, false, false);
            setPinned(false, false);
        }

        public void setAdd(boolean z, boolean z2) {
            setLayout(z);
            this.staticImage = true;
            this.isAdd = true;
            this.textView.setText(LocaleController.getString(C2888R.string.NewTopic));
            this.textView.setVisibility(0);
            this.imageView.clearImage();
            this.imageView.setAnimatedEmojiDrawable(null);
            this.imageView.setImageResource(C2888R.drawable.emoji_tabs_new3);
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            setSelected(z2);
            updateImageColor();
            updateState();
            setCounter(true, 0, false, false, false);
            setPinned(false, false);
        }

        public void setLoading() {
            setLayout(false);
            this.topicId = -1L;
            this.staticImage = true;
            this.isAdd = false;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x");
            LoadingSpan loadingSpan = new LoadingSpan(this.textView, AndroidUtilities.m1124dp(38.0f));
            loadingSpan.setScaleY(0.75f);
            spannableStringBuilder.setSpan(loadingSpan, 0, 1, 33);
            this.textView.setText(spannableStringBuilder);
            this.textView.setVisibility(0);
            this.imageView.clearImage();
            this.imageView.setAnimatedEmojiDrawable(null);
            if (this.loadingDrawable == null) {
                LoadingDrawable loadingDrawable = new LoadingDrawable(this.resourcesProvider);
                this.loadingDrawable = loadingDrawable;
                loadingDrawable.setRadiiDp(38.0f);
                this.loadingDrawable.setCallback(this.imageView);
                int color = Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider);
                this.loadingDrawable.setColors(Theme.multAlpha(color, 0.15f), Theme.multAlpha(color, 0.5f), Theme.multAlpha(color, 0.6f), Theme.multAlpha(color, 0.15f));
                this.loadingDrawable.stroke = false;
            }
            this.imageView.setImageDrawable(this.loadingDrawable);
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            setSelected(false);
            updateImageColor();
            setCounter(true, 0, false, false, false);
            setPinned(false, false);
            updateState();
        }

        public void set(long j, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            setLayout(false);
            long j2 = this.topicId;
            int i = tL_forumTopic.f1720id;
            boolean z2 = j2 == ((long) i);
            this.staticImage = false;
            this.topicId = i;
            this.isAdd = false;
            this.textView.setText(tL_forumTopic.title);
            this.textView.setVisibility(0);
            if (tL_forumTopic.f1720id == 1) {
                this.staticImage = true;
                this.imageView.clearImage();
                this.imageView.setAnimatedEmojiDrawable(null);
                this.imageView.setImageResource(C2888R.drawable.msg_filled_general);
                this.imageView.setScaleX(0.66f);
                this.imageView.setScaleY(0.66f);
            } else if (tL_forumTopic.icon_emoji_id != 0) {
                this.imageView.clearImage();
                this.imageView.setAnimatedEmojiDrawable(AnimatedEmojiDrawable.make(UserConfig.selectedAccount, 3, tL_forumTopic.icon_emoji_id));
                this.imageView.setScaleX(1.0f);
                this.imageView.setScaleY(1.0f);
            } else {
                this.imageView.setAnimatedEmojiDrawable(null);
                this.imageView.setImageDrawable(ForumUtilities.createTopicDrawable(tL_forumTopic, false));
                this.imageView.setScaleX(1.0f);
                this.imageView.setScaleY(1.0f);
            }
            setSelected(z);
            updateImageColor();
            setCounter(MessagesController.getInstance(this.currentAccount).isDialogMuted(j, tL_forumTopic.f1720id), tL_forumTopic.unread_count, tL_forumTopic.unread_mentions_count > 0, tL_forumTopic.unread_reactions_count > 0, z2);
            setPinned(tL_forumTopic.pinned, z2);
            updateState();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateImageColor() {
            int iBlendARGB = ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), this.isAdd ? 1.0f : this.selectT);
            if (!this.staticImage) {
                this.imageView.setColorFilter(null);
            } else {
                this.imageView.setColorFilter(new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN));
            }
            this.imageView.setEmojiColorFilter(new PorterDuffColorFilter(iBlendARGB, PorterDuff.Mode.SRC_IN));
            this.imageView.invalidate();
        }

        public void setMf(TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            setLayout(true);
            this.isAdd = false;
            this.staticImage = false;
            long peerDialogId = DialogObject.getPeerDialogId(tL_forumTopic.from_id);
            boolean z2 = peerDialogId == this.topicId;
            this.topicId = peerDialogId;
            this.textView.setText(DialogObject.getName(peerDialogId));
            this.textView.setVisibility(0);
            if (peerDialogId >= 0) {
                TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peerDialogId));
                this.avatarDrawable.setInfo(user);
                this.imageView.setForUserOrChat(user, this.avatarDrawable);
            } else {
                TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-peerDialogId));
                this.avatarDrawable.setInfo(chat);
                this.imageView.setForUserOrChat(chat, this.avatarDrawable);
            }
            this.imageView.setScaleX(1.0f);
            this.imageView.setScaleY(1.0f);
            updateState();
            setSelected(z);
            setCounter(false, tL_forumTopic.unread_count, false, tL_forumTopic.unread_reactions_count > 0, z2);
            setPinned(false, z2);
        }

        @Override // android.view.View
        public void setSelected(final boolean z) {
            if (this.selected == z) {
                return;
            }
            this.selected = z;
            ValueAnimator valueAnimator = this.selectAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.selectT, z ? 1.0f : 0.0f);
            this.selectAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TopicsTabsView$VerticalTabView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setSelected$1(valueAnimator2);
                }
            });
            this.selectAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.TopicsTabsView.VerticalTabView.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    VerticalTabView.this.selectT = z ? 1.0f : 0.0f;
                    VerticalTabView.this.updateState();
                    VerticalTabView.this.updateImageColor();
                }
            });
            this.selectAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.selectAnimator.setDuration(320L);
            this.selectAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelected$1(ValueAnimator valueAnimator) {
            this.selectT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateState();
            updateImageColor();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateState() {
            this.lineView.setTranslationX((-AndroidUtilities.m1124dp(3.0f)) * (1.0f - this.selectT));
            this.lineView.setVisibility(this.selectT <= 0.0f ? 8 : 0);
            this.textView.setTextColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), this.isAdd ? 1.0f : this.selectT));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(64.0f), TLObject.FLAG_30), i2);
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public VerticalTabView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new VerticalTabView(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                VerticalTabView verticalTabView = (VerticalTabView) view;
                boolean z2 = false;
                if (uItem.red) {
                    verticalTabView.setLoading();
                } else {
                    Object obj = uItem.object;
                    if (obj == null) {
                        if (uItem.longValue == -2) {
                            verticalTabView.setAdd(uItem.accent, uItem.checked);
                        } else {
                            verticalTabView.setAll((uItem.flags & 1) != 0, uItem.accent, uItem.checked);
                        }
                    } else if (obj instanceof TLRPC.TL_forumTopic) {
                        if (!uItem.withUsername) {
                            verticalTabView.setMf((TLRPC.TL_forumTopic) obj, uItem.checked);
                        } else {
                            verticalTabView.set(uItem.dialogId, (TLRPC.TL_forumTopic) obj, uItem.checked);
                        }
                    }
                }
                if (universalRecyclerView != null && universalRecyclerView.isReorderAllowed() && verticalTabView.pinned) {
                    z2 = true;
                }
                verticalTabView.setReorder(z2);
            }

            public static UItem asAll(boolean z, boolean z2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = 0;
                uItemOfFactory.longValue = 0L;
                uItemOfFactory.object = null;
                uItemOfFactory.accent = z2;
                uItemOfFactory.flags = z ? 1 : 0;
                return uItemOfFactory;
            }

            public static UItem asAdd(boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = -2;
                uItemOfFactory.longValue = -2L;
                uItemOfFactory.object = null;
                uItemOfFactory.accent = z;
                return uItemOfFactory;
            }

            public static UItem asTab(long j, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.dialogId = j;
                uItemOfFactory.f2105id = tL_forumTopic.f1720id;
                uItemOfFactory.object = tL_forumTopic;
                if (z) {
                    uItemOfFactory.longValue = DialogObject.getPeerDialogId(tL_forumTopic.from_id);
                    uItemOfFactory.withUsername = false;
                }
                return uItemOfFactory;
            }

            public static UItem asLoading(int i) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = i;
                uItemOfFactory.red = true;
                uItemOfFactory.checked = false;
                return uItemOfFactory;
            }
        }
    }

    public static class HorizontalTabView extends FrameLayout {
        private int addW;
        private AvatarSpan avatarSpan;
        private ValueAnimator counterAnimator;
        private int counterBackgroundColorKey;
        private final AnimatedTextView.AnimatedTextDrawable counterText;
        private final View counterView;
        int counterViewX;
        private final int currentAccount;
        private final ImageView imageView;
        private boolean isAdd;
        private boolean lastMention;
        private boolean lastReactions;
        private int lastUnread;
        private CharSequence mentionString;
        private boolean mono;
        private boolean pinned;
        private CharSequence reactionString;
        private boolean reorder;
        private final Theme.ResourcesProvider resourcesProvider;
        private ValueAnimator selectAnimator;
        private float selectT;
        private boolean selected;
        private final AnimatedFloat shakeAlpha;
        private Shaker shaker;
        private boolean staticImage;
        private final LinkSpanDrawable.LinksTextView textView;
        private long topicId;

        public void setReorder(boolean z) {
            this.reorder = z;
            invalidate();
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == this.textView) {
                canvas.save();
                float f = this.shakeAlpha.set(this.reorder);
                if (f > 0.0f) {
                    if (this.shaker == null) {
                        this.shaker = new Shaker(this);
                    }
                    canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
                    this.shaker.concat(canvas, f);
                    canvas.translate((-getWidth()) / 2.0f, (-getHeight()) / 2.0f);
                }
                boolean zDrawChild = super.drawChild(canvas, view, j);
                canvas.restore();
                return zDrawChild;
            }
            return super.drawChild(canvas, view, j);
        }

        public HorizontalTabView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.shakeAlpha = new AnimatedFloat(this, 360L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.pinned = false;
            this.isAdd = false;
            this.mono = false;
            this.staticImage = false;
            this.counterBackgroundColorKey = Theme.key_chats_unreadCounter;
            this.addW = 0;
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            setClipChildren(false);
            setClipToPadding(false);
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            this.textView = linksTextView;
            linksTextView.setTextSize(1, 14.0f);
            linksTextView.setTypeface(AndroidUtilities.bold());
            addView(linksTextView, LayoutHelper.createFrame(-2, -2.0f, 19, 11.0f, 0.0f, 11.0f, 0.0f));
            ScaleStateListAnimator.apply(linksTextView);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            addView(imageView, LayoutHelper.createFrame(34, 34, 17));
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
            this.counterText = animatedTextDrawable;
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(11.0f));
            animatedTextDrawable.setTypeface(AndroidUtilities.bold());
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable.setGravity(17);
            View view = new View(context, resourcesProvider) { // from class: org.telegram.ui.Components.TopicsTabsView.HorizontalTabView.1
                private final AnimatedPaint backgroundPaint;
                final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

                {
                    this.val$resourcesProvider = resourcesProvider;
                    this.backgroundPaint = new AnimatedPaint(this, resourcesProvider);
                    HorizontalTabView.this.counterText.setCallback(this);
                }

                @Override // android.view.View
                protected boolean verifyDrawable(Drawable drawable) {
                    return HorizontalTabView.this.counterText == drawable || super.verifyDrawable(drawable);
                }

                @Override // android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    float fIsNotEmpty = HorizontalTabView.this.counterText.isNotEmpty();
                    float fLerp = AndroidUtilities.lerp(0.6f, 1.0f, fIsNotEmpty);
                    float fMax = Math.max(AndroidUtilities.m1124dp(16.66f), HorizontalTabView.this.counterText.getCurrentWidth() + AndroidUtilities.m1124dp(10.0f));
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(0.0f, 0.0f, fMax, getHeight());
                    canvas.save();
                    canvas.scale(fLerp, fLerp, rectF.centerX(), rectF.centerY());
                    canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(8.33f), AndroidUtilities.m1124dp(8.33f), this.backgroundPaint.setByKey(HorizontalTabView.this.counterBackgroundColorKey).blendTo(HorizontalTabView.this.getTextColor(), HorizontalTabView.this.selectT).multAlpha(fIsNotEmpty));
                    HorizontalTabView.this.counterText.setBounds(rectF);
                    HorizontalTabView.this.counterText.setAlpha((int) (fIsNotEmpty * 255.0f));
                    HorizontalTabView.this.counterText.setTextColor(Theme.getColor(Theme.key_chats_unreadCounterText, this.val$resourcesProvider));
                    HorizontalTabView.this.counterText.draw(canvas);
                    canvas.restore();
                    super.dispatchDraw(canvas);
                }

                @Override // android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) Math.max(AndroidUtilities.m1124dp(16.66f), HorizontalTabView.this.counterText.getAnimateToWidth() + AndroidUtilities.m1124dp(10.0f)), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(16.66f), TLObject.FLAG_30));
                }
            };
            this.counterView = view;
            addView(view, LayoutHelper.createFrame(-2, -2.0f, 21, 4.66f, 0.0f, 11.0f, 0.0f));
            ScaleStateListAnimator.apply(view);
            updateTextColor();
        }

        private void setPinned(boolean z, boolean z2) {
            if (this.pinned != z) {
                this.pinned = z;
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            int i6 = i4 - i2;
            int measuredWidth = (i5 - this.imageView.getMeasuredWidth()) / 2;
            int measuredHeight = (i6 - this.imageView.getMeasuredHeight()) / 2;
            ImageView imageView = this.imageView;
            imageView.layout(measuredWidth, measuredHeight, imageView.getMeasuredWidth() + measuredWidth, this.imageView.getMeasuredHeight() + measuredHeight);
            int i7 = i6 / 2;
            this.textView.layout(AndroidUtilities.m1124dp(11.0f), i7 - (this.textView.getMeasuredHeight() / 2), AndroidUtilities.m1124dp(11.0f) + this.textView.getMeasuredWidth(), (this.textView.getMeasuredHeight() / 2) + i7);
            if (this.counterText.getAnimateToWidth() > 0.0f) {
                this.counterView.layout((i5 - AndroidUtilities.m1124dp(11.0f)) - this.counterView.getMeasuredWidth(), i7 - (this.counterView.getMeasuredHeight() / 2), i5 - AndroidUtilities.m1124dp(11.0f), i7 + (this.counterView.getMeasuredHeight() / 2));
            } else {
                this.counterView.layout(AndroidUtilities.m1124dp(11.0f) + this.textView.getMeasuredWidth() + AndroidUtilities.m1124dp(4.66f), i7 - (this.counterView.getMeasuredHeight() / 2), AndroidUtilities.m1124dp(11.0f) + this.textView.getMeasuredWidth() + AndroidUtilities.m1124dp(4.66f) + this.counterView.getMeasuredWidth(), i7 + (this.counterView.getMeasuredHeight() / 2));
            }
            if (this.counterViewX != 0 && this.counterView.getLeft() != this.counterViewX) {
                this.counterView.setTranslationX((-r4.getLeft()) + this.counterViewX);
                this.counterView.animate().translationX(0.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
            this.counterViewX = this.counterView.getLeft();
        }

        private void setLayout(boolean z) {
            if (this.mono == z) {
                return;
            }
            this.mono = z;
        }

        public long getTopicId() {
            return this.topicId;
        }

        public void setAll(boolean z, boolean z2, boolean z3) {
            setLayout(z2);
            this.topicId = 0L;
            this.isAdd = false;
            this.staticImage = true;
            this.imageView.setVisibility(z ? 0 : 8);
            if (z) {
                BotNewTopicDrawable botNewTopicDrawable = new BotNewTopicDrawable(getContext());
                botNewTopicDrawable.setColor(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider));
                this.imageView.setImageDrawable(botNewTopicDrawable);
            }
            this.textView.setText(LocaleController.getString(z ? C2888R.string.BotForumNewTopic : C2888R.string.AllTopicsShort));
            this.textView.setVisibility(z ? 8 : 0);
            setSelected(z3);
            updateTextColor();
            setCounter(true, 0, false, false, false);
            setPinned(false, false);
        }

        public void setAdd() {
            setLayout(false);
            this.topicId = 0L;
            this.isAdd = true;
            this.staticImage = false;
            this.imageView.setVisibility(8);
            this.textView.setVisibility(0);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("e\u200b");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2888R.drawable.menu_topic_add), 0, 1, 33);
            this.textView.setText(spannableStringBuilder);
            setSelected(false);
            updateTextColor();
            setCounter(true, 0, false, false, false);
            setPinned(false, false);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void setLoading() {
            setLayout(false);
            this.topicId = -1L;
            this.staticImage = true;
            this.imageView.setVisibility(8);
            this.textView.setVisibility(0);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x");
            LoadingSpan loadingSpan = new LoadingSpan(this.textView, AndroidUtilities.m1124dp(42.0f));
            loadingSpan.setScaleY(0.95f);
            spannableStringBuilder.setSpan(loadingSpan, 0, 1, 33);
            this.textView.setText(spannableStringBuilder);
            setSelected(false);
            updateTextColor();
            setCounter(true, 0, false, false, false);
            setPinned(false, false);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void set(long j, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            setLayout(false);
            long j2 = this.topicId;
            int i = tL_forumTopic.f1720id;
            boolean z2 = j2 == ((long) i);
            this.topicId = i;
            this.staticImage = false;
            this.imageView.setVisibility(8);
            this.textView.setVisibility(0);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (tL_forumTopic.f1720id == 1) {
                spannableStringBuilder.append((CharSequence) "#");
                spannableStringBuilder.append((CharSequence) (tL_forumTopic.hidden ? "\u200b" : " "));
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_filled_general);
                coloredImageSpan.setScale(0.66f, 0.66f);
                spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 18);
            } else if (tL_forumTopic.icon_emoji_id != 0) {
                spannableStringBuilder.append((CharSequence) "x ");
                spannableStringBuilder.setSpan(new AnimatedEmojiSpan(tL_forumTopic.icon_emoji_id, this.textView.getPaint().getFontMetricsInt()), 0, 1, 33);
            }
            if (!tL_forumTopic.hidden) {
                spannableStringBuilder.append((CharSequence) tL_forumTopic.title);
            }
            this.textView.setText(spannableStringBuilder);
            setSelected(z);
            updateTextColor();
            setCounter(MessagesController.getInstance(this.currentAccount).isDialogMuted(j, this.topicId), tL_forumTopic.unread_count, false, false, z2);
            setPinned(tL_forumTopic.pinned, z2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateTextColor() {
            int textColor = getTextColor();
            this.textView.setTextColor(textColor);
            this.textView.setEmojiColor(textColor);
            this.counterView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTextColor() {
            return ColorUtils.blendARGB(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, this.resourcesProvider), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), this.isAdd ? 1.0f : this.selectT);
        }

        public void setMf(long j, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            setLayout(true);
            long peerDialogId = DialogObject.getPeerDialogId(tL_forumTopic.from_id);
            boolean z2 = this.topicId == peerDialogId;
            this.topicId = peerDialogId;
            this.staticImage = false;
            this.imageView.setVisibility(8);
            this.textView.setVisibility(0);
            if (this.avatarSpan == null) {
                AvatarSpan avatarSpan = new AvatarSpan(this.textView, this.currentAccount, 18.0f);
                this.avatarSpan = avatarSpan;
                avatarSpan.usePaintAlpha = false;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(peerDialogId);
            if (userOrChat != null) {
                spannableStringBuilder.append((CharSequence) "x  ");
                this.avatarSpan.setObject(userOrChat);
                spannableStringBuilder.setSpan(this.avatarSpan, 0, 1, 33);
            }
            spannableStringBuilder.append((CharSequence) DialogObject.getName(peerDialogId));
            LinkSpanDrawable.LinksTextView linksTextView = this.textView;
            linksTextView.setText(TextUtils.ellipsize(spannableStringBuilder, linksTextView.getPaint(), AndroidUtilities.m1124dp(150.0f), TextUtils.TruncateAt.END));
            setSelected(z);
            setCounter(MessagesController.getInstance(this.currentAccount).isDialogMuted(j, peerDialogId), tL_forumTopic.unread_count, false, false, z2);
            setPinned(false, z2);
        }

        @Override // android.view.View
        public void setSelected(final boolean z) {
            if (this.selected == z) {
                return;
            }
            this.selected = z;
            ValueAnimator valueAnimator = this.selectAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.selectT, z ? 1.0f : 0.0f);
            this.selectAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TopicsTabsView$HorizontalTabView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$setSelected$0(valueAnimator2);
                }
            });
            this.selectAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.TopicsTabsView.HorizontalTabView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HorizontalTabView.this.selectT = z ? 1.0f : 0.0f;
                    HorizontalTabView.this.updateTextColor();
                }
            });
            this.selectAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.selectAnimator.setDuration(320L);
            this.selectAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelected$0(ValueAnimator valueAnimator) {
            this.selectT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateTextColor();
        }

        private void setCounter(boolean z, int i, boolean z2, boolean z3, boolean z4) {
            if (z3) {
                this.counterBackgroundColorKey = Theme.key_dialogReactionMentionBackground;
                if (this.reactionString == null) {
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("❤️");
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_like_filled);
                    coloredImageSpan.setScale(0.8f, 0.8f);
                    coloredImageSpan.spaceScaleX = 0.5f;
                    coloredImageSpan.translate(-AndroidUtilities.m1124dp(3.0f), 0.0f);
                    spannableStringBuilder.setSpan(coloredImageSpan, 0, spannableStringBuilder.length(), 33);
                    this.reactionString = spannableStringBuilder;
                }
                this.counterText.setText(this.reactionString, z4);
            } else if (z2) {
                this.counterBackgroundColorKey = z ? Theme.key_chats_unreadCounterMuted : Theme.key_chats_unreadCounter;
                if (this.mentionString == null) {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("@");
                    ColoredImageSpan coloredImageSpan2 = new ColoredImageSpan(C2888R.drawable.mini_mention_filled_16);
                    coloredImageSpan2.setScale(0.8f, 0.8f);
                    coloredImageSpan2.spaceScaleX = 0.5f;
                    coloredImageSpan2.translate(-AndroidUtilities.m1124dp(3.0f), 0.0f);
                    spannableStringBuilder2.setSpan(coloredImageSpan2, 0, 1, 33);
                    this.mentionString = spannableStringBuilder2;
                }
                this.counterText.setText(this.mentionString, z4);
            } else if (i > 0) {
                this.counterBackgroundColorKey = z ? Theme.key_chats_unreadCounterMuted : Theme.key_chats_unreadCounter;
                this.counterText.setText(LocaleController.formatNumber(i, ','), z4);
            } else {
                this.counterBackgroundColorKey = Theme.key_chats_unreadCounterMuted;
                this.counterText.setText(_UrlKt.FRAGMENT_ENCODE_SET, z4);
            }
            if (z4 && (this.lastUnread < i || ((!this.lastMention && z2) || (!this.lastReactions && z3)))) {
                animateCounterBounce();
            }
            this.lastUnread = i;
            this.lastMention = z2;
            this.lastReactions = z3;
            this.counterView.invalidate();
            if (getMeasuringWidth() != getMeasuredWidth()) {
                requestLayout();
            }
        }

        private void animateCounterBounce() {
            ValueAnimator valueAnimator = this.counterAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.counterAnimator = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.counterAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.TopicsTabsView$HorizontalTabView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateCounterBounce$1(valueAnimator2);
                }
            });
            this.counterAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.TopicsTabsView.HorizontalTabView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HorizontalTabView.this.counterView.setScaleX(1.0f);
                    HorizontalTabView.this.counterView.setScaleY(1.0f);
                    HorizontalTabView.this.counterView.invalidate();
                }
            });
            this.counterAnimator.setInterpolator(new OvershootInterpolator(2.0f));
            this.counterAnimator.setDuration(200L);
            this.counterAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateCounterBounce$1(ValueAnimator valueAnimator) {
            this.counterView.setScaleX(Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            this.counterView.setScaleY(Math.max(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            this.counterView.invalidate();
        }

        private int getMeasuringWidth() {
            return AndroidUtilities.m1124dp(11.0f) + this.textView.getMeasuredWidth() + (this.counterText.getAnimateToWidth() > 0.0f ? AndroidUtilities.m1124dp(4.66f) + ((int) Math.max(AndroidUtilities.m1124dp(16.66f), this.counterText.getAnimateToWidth() + AndroidUtilities.m1124dp(10.0f))) : 0) + AndroidUtilities.m1124dp(11.0f) + this.addW;
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            this.textView.measure(i, i2);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(getMeasuringWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(36.0f), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public HorizontalTabView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new HorizontalTabView(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                HorizontalTabView horizontalTabView = (HorizontalTabView) view;
                boolean z2 = false;
                if (uItem.red) {
                    horizontalTabView.setLoading();
                } else {
                    Object obj = uItem.object;
                    if (obj == null) {
                        if (uItem.f2105id == -2) {
                            horizontalTabView.setAdd();
                        } else {
                            horizontalTabView.setAll((uItem.flags & 1) != 0, uItem.accent, uItem.checked);
                        }
                    } else if (obj instanceof TLRPC.TL_forumTopic) {
                        if (!uItem.withUsername) {
                            horizontalTabView.setMf(uItem.dialogId, (TLRPC.TL_forumTopic) obj, uItem.checked);
                        } else {
                            horizontalTabView.set(uItem.dialogId, (TLRPC.TL_forumTopic) obj, uItem.checked);
                        }
                    }
                }
                horizontalTabView.addW = BitwiseUtils.hasFlag(uItem.flags, 8) ? AndroidUtilities.m1124dp(10.0f) : 0;
                if (universalRecyclerView != null && universalRecyclerView.isReorderAllowed() && horizontalTabView.pinned) {
                    z2 = true;
                }
                horizontalTabView.setReorder(z2);
            }

            public static UItem asAll(boolean z, boolean z2) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = 0;
                uItemOfFactory.longValue = 0L;
                uItemOfFactory.object = null;
                uItemOfFactory.accent = z2;
                return uItemOfFactory;
            }

            public static UItem asTab(long j, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.dialogId = j;
                uItemOfFactory.f2105id = tL_forumTopic.f1720id;
                uItemOfFactory.object = tL_forumTopic;
                if (z) {
                    uItemOfFactory.longValue = DialogObject.getPeerDialogId(tL_forumTopic.from_id);
                    uItemOfFactory.withUsername = false;
                }
                return uItemOfFactory;
            }

            public static UItem asLoading(int i) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = i;
                uItemOfFactory.red = true;
                return uItemOfFactory;
            }

            public static UItem asAdd() {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = -2;
                uItemOfFactory.longValue = -2L;
                uItemOfFactory.object = null;
                return uItemOfFactory;
            }
        }
    }

    private void deleteTopics(final HashSet hashSet, final Runnable runnable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getPluralString("DeleteTopics", hashSet.size()));
        final ArrayList arrayList = new ArrayList(hashSet);
        if (hashSet.size() == 1) {
            builder.setMessage(LocaleController.formatString(C2888R.string.DeleteSelectedTopic, MessagesController.getInstance(this.currentAccount).getTopicsController().findTopic(-this.dialogId, ((Integer) arrayList.get(0)).intValue()).title));
        } else {
            builder.setMessage(LocaleController.getString(C2888R.string.DeleteSelectedTopics));
        }
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda22
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$deleteTopics$20(hashSet, arrayList, runnable, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda23
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteTopics$20(final HashSet hashSet, final ArrayList arrayList, final Runnable runnable, AlertDialog alertDialog, int i) {
        this.excludeTopics.addAll(hashSet);
        updateTabs();
        BulletinFactory.m1246of(this.fragment).createUndoBulletin(LocaleController.getPluralString("TopicsDeleted", hashSet.size()), new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteTopics$18(hashSet);
            }
        }, new Runnable() { // from class: org.telegram.ui.Components.TopicsTabsView$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteTopics$19(arrayList, runnable);
            }
        }).show();
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteTopics$18(HashSet hashSet) {
        this.excludeTopics.removeAll(hashSet);
        updateTabs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteTopics$19(ArrayList arrayList, Runnable runnable) {
        MessagesController.getInstance(this.currentAccount).getTopicsController().deleteTopics(-this.dialogId, arrayList);
        runnable.run();
    }

    private long getTopicId(TLRPC.TL_forumTopic tL_forumTopic) {
        return this.mono ? DialogObject.getPeerDialogId(tL_forumTopic.from_id) : tL_forumTopic.f1720id;
    }

    private static class BotNewTopicDrawable extends Drawable {
        private final Drawable drawable;
        private final Paint paint = new Paint(1);
        private final RectF rectF = new RectF();

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public BotNewTopicDrawable(Context context) {
            this.drawable = context.getResources().getDrawable(C2888R.drawable.menu_topic_add).mutate();
        }

        public void setColor(int i) {
            this.paint.setColor(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawRoundRect(this.rectF, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), this.paint);
            this.drawable.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            this.rectF.set(rect);
            int iCenterX = rect.centerX() - AndroidUtilities.m1124dp(12.0f);
            int iCenterY = rect.centerY() - AndroidUtilities.m1124dp(12.0f);
            this.drawable.setBounds(iCenterX, iCenterY, AndroidUtilities.m1124dp(24.0f) + iCenterX, AndroidUtilities.m1124dp(24.0f) + iCenterY);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.paint.setAlpha(i);
            this.drawable.setAlpha(i);
        }
    }
}
