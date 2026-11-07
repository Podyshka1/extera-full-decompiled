package com.exteragram.messenger.feed.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.feed.FeedConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ChatSearchTabs;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.TopicsTabsView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.GradientClip;

/* JADX INFO: loaded from: classes4.dex */
public class FeedCategoryTabsView extends FrameLayout {
    private int animateFromCategoryId;
    private final int currentAccount;
    private final Delegate delegate;
    private int drawnSelectedCategoryId;
    private final BaseFragment fragment;
    private final UniversalRecyclerView listView;
    private final int[] location;
    private final Theme.ResourcesProvider resourcesProvider;
    private int selectedCategoryId;
    private HashMap<Integer, TLRPC.TL_forumTopic> topics;

    public interface Delegate {
        void onCategorySelected(int i);

        void onCreateCategory();

        void onDeleteCategory(FeedConfig.Category category);

        void onEditCategory(FeedConfig.Category category);

        void onHideCategory(FeedConfig.Category category);
    }

    public FeedCategoryTabsView(Context context, BaseFragment baseFragment, int i, Theme.ResourcesProvider resourcesProvider, Delegate delegate) {
        super(context);
        this.topics = new HashMap<>();
        this.location = new int[2];
        this.fragment = baseFragment;
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        this.delegate = delegate;
        int selectedCategoryId = FeedConfig.getInstance(i).getSelectedCategoryId();
        this.drawnSelectedCategoryId = selectedCategoryId;
        this.selectedCategoryId = selectedCategoryId;
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, i, 0, new Utilities.Callback2() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onItemLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }, resourcesProvider) { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView.1
            private final AnimatedFloat animateTab;
            private final AnimatedFloat animatedClipL;
            private final AnimatedFloat animatedClipR;
            private final GradientClip clip = new GradientClip();
            private final Paint selectionPaint;
            private final RectF selectionRect;

            {
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                this.animatedClipL = new AnimatedFloat(this, 320L, cubicBezierInterpolator);
                this.animatedClipR = new AnimatedFloat(this, 320L, cubicBezierInterpolator);
                this.animateTab = new AnimatedFloat(this, 420L, cubicBezierInterpolator);
                this.selectionRect = new RectF();
                this.selectionPaint = new Paint(1);
            }

            @Override // org.telegram.ui.Components.UniversalRecyclerView, org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                float f = this.animatedClipL.set(canScrollHorizontally(-1));
                boolean z = true;
                float f2 = this.animatedClipR.set(canScrollHorizontally(1));
                if (f <= 0.0f && f2 <= 0.0f) {
                    z = false;
                }
                if (z) {
                    canvas2 = canvas;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255);
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
                drawSelection(canvas2);
                if (z) {
                    canvas2.save();
                    if (f > 0.0f) {
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(0.0f, 0.0f, AndroidUtilities.dp(12.0f), getHeight());
                        this.clip.draw(canvas2, rectF, 0, f);
                    }
                    if (f2 > 0.0f) {
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        rectF2.set(getWidth() - AndroidUtilities.dp(12.0f), 0.0f, getWidth(), getHeight());
                        this.clip.draw(canvas2, rectF2, 2, f2);
                    }
                    canvas2.restore();
                    canvas2.restore();
                }
            }

            private void drawSelection(Canvas canvas) {
                int i2;
                if (FeedCategoryTabsView.this.drawnSelectedCategoryId != FeedCategoryTabsView.this.selectedCategoryId) {
                    FeedCategoryTabsView feedCategoryTabsView = FeedCategoryTabsView.this;
                    feedCategoryTabsView.animateFromCategoryId = feedCategoryTabsView.drawnSelectedCategoryId;
                    this.animateTab.force(0.0f);
                }
                FeedCategoryTabsView feedCategoryTabsView2 = FeedCategoryTabsView.this;
                feedCategoryTabsView2.drawnSelectedCategoryId = feedCategoryTabsView2.selectedCategoryId;
                View view = null;
                View view2 = null;
                for (int i3 = 0; i3 < getChildCount(); i3++) {
                    View childAt = getChildAt(i3);
                    UItem item = this.adapter.getItem(getChildAdapterPosition(childAt));
                    if (item != null && (i2 = item.id) != -2) {
                        if (i2 == FeedCategoryTabsView.this.selectedCategoryId) {
                            view = childAt;
                        }
                        if (item.id == FeedCategoryTabsView.this.animateFromCategoryId) {
                            view2 = childAt;
                        }
                    }
                }
                if (view == null) {
                    return;
                }
                setTabRect(this.selectionRect, view);
                if (view2 != null) {
                    RectF rectF = AndroidUtilities.rectTmp;
                    setTabRect(rectF, view2);
                    AndroidUtilities.lerp(rectF, this.selectionRect, this.animateTab.set(1.0f), this.selectionRect);
                }
                this.selectionPaint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), 31));
                canvas.drawRoundRect(this.selectionRect, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), this.selectionPaint);
            }

            private void setTabRect(RectF rectF, View view) {
                rectF.set(view.getX() + AndroidUtilities.dp(1.0f), view.getY() + AndroidUtilities.dp(4.0f), (view.getX() + view.getWidth()) - AndroidUtilities.dp(1.0f), (view.getY() + getHeight()) - AndroidUtilities.dp(4.0f));
            }

            @Override // org.telegram.ui.Components.RecyclerListView
            public Integer getSelectorColor(int i2) {
                return 0;
            }
        };
        this.listView = universalRecyclerView;
        universalRecyclerView.setWillNotDraw(false);
        universalRecyclerView.adapter.setApplyBackground(false);
        universalRecyclerView.makeHorizontal();
        universalRecyclerView.setPadding(AndroidUtilities.dp(3.0f), 0, AndroidUtilities.dp(3.0f), 0);
        universalRecyclerView.setClipToPadding(false);
        addView(universalRecyclerView, LayoutHelper.createFrame(-1, 36, 16));
    }

    public void attachTo(ChatSearchTabs chatSearchTabs) {
        ViewPagerFixed.TabsView tabsView = chatSearchTabs.tabs;
        if (tabsView != null) {
            tabsView.setVisibility(8);
        }
        chatSearchTabs.setPadding(0, AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f));
        chatSearchTabs.addView(this, LayoutHelper.createFrame(-1, -1.0f, 119, 7.0f, 0.0f, 7.0f, 0.0f));
    }

    public boolean isTouchInside(MotionEvent motionEvent) {
        if (motionEvent != null && isShown()) {
            getLocationOnScreen(this.location);
            if (motionEvent.getRawX() >= this.location[0] && motionEvent.getRawX() < this.location[0] + getWidth() && motionEvent.getRawY() >= this.location[1] && motionEvent.getRawY() < this.location[1] + getHeight()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasCategories() {
        return !FeedConfig.getInstance(this.currentAccount).getVisibleCategories().isEmpty();
    }

    public void setSelectedCategory(int i) {
        if (this.selectedCategoryId == i) {
            return;
        }
        this.selectedCategoryId = i;
        this.listView.adapter.update(true);
        this.listView.invalidate();
        scrollToSelected();
    }

    public void update() {
        this.selectedCategoryId = FeedConfig.getInstance(this.currentAccount).getSelectedCategoryId();
        this.listView.adapter.update(true);
        this.listView.invalidate();
        scrollToSelected();
    }

    private void scrollToSelected() {
        List<FeedConfig.Category> visibleCategories = FeedConfig.getInstance(this.currentAccount).getVisibleCategories();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= visibleCategories.size()) {
                break;
            }
            if (visibleCategories.get(i2).getId() == this.selectedCategoryId) {
                i = i2 + 1;
                break;
            }
            i2++;
        }
        this.listView.smoothScrollToPosition(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        HashMap<Integer, TLRPC.TL_forumTopic> map = this.topics;
        this.topics = new HashMap<>();
        arrayList.add(TopicsTabsView.HorizontalTabView.Factory.asAll(false, false).setChecked(this.selectedCategoryId == 0));
        for (FeedConfig.Category category : FeedConfig.getInstance(this.currentAccount).getVisibleCategories()) {
            TLRPC.TL_forumTopic tL_forumTopic = map.get(Integer.valueOf(category.getId()));
            if (tL_forumTopic == null) {
                tL_forumTopic = new TLRPC.TL_forumTopic();
            }
            tL_forumTopic.id = category.getId();
            tL_forumTopic.title = category.getTitle();
            tL_forumTopic.icon_emoji_id = category.getEmojiId();
            this.topics.put(Integer.valueOf(category.getId()), tL_forumTopic);
            arrayList.add(TopicsTabsView.HorizontalTabView.Factory.asTab(0L, tL_forumTopic, false).setChecked(category.getId() == this.selectedCategoryId));
        }
        arrayList.add(TopicsTabsView.HorizontalTabView.Factory.asAdd());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 == -2) {
            this.delegate.onCreateCategory();
        } else if (i2 != this.selectedCategoryId) {
            this.delegate.onCategorySelected(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemLongClick(UItem uItem, View view, int i, float f, float f2) {
        final FeedConfig.Category category = uItem.id > 0 ? FeedConfig.getInstance(this.currentAccount).getCategory(uItem.id) : null;
        if (category == null) {
            return false;
        }
        ItemOptions.makeOptions(this.fragment, view).add(C2807R.drawable.msg_edit, LocaleController.getString(C2807R.string.FeedCategoryEdit), new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onItemLongClick$0(category);
            }
        }).add(C2807R.drawable.msg_view_file, LocaleController.getString(C2807R.string.FeedCategoryHide), new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onItemLongClick$1(category);
            }
        }).add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.FeedCategoryDelete), true, new Runnable() { // from class: com.exteragram.messenger.feed.ui.FeedCategoryTabsView$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onItemLongClick$2(category);
            }
        }).setScrimViewBackground(new TabScrimDrawable(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, this.resourcesProvider))).setGravity(1).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$0(FeedConfig.Category category) {
        this.delegate.onEditCategory(category);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$1(FeedConfig.Category category) {
        this.delegate.onHideCategory(category);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$2(FeedConfig.Category category) {
        this.delegate.onDeleteCategory(category);
    }

    public static class TabScrimDrawable extends Drawable {
        private final RectF bounds;
        private final Paint paint;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public TabScrimDrawable(int i) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.bounds = new RectF();
            paint.setColor(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.bounds.set(getBounds());
            this.bounds.inset(AndroidUtilities.dp(1.0f), (this.bounds.height() - AndroidUtilities.dp(28.0f)) / 2.0f);
            canvas.drawRoundRect(this.bounds, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), this.paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.paint.setAlpha(i);
        }
    }
}
