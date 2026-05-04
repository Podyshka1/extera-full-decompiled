package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.util.Consumer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.WallpaperCell;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.PhotoViewer;
import org.telegram.p029ui.WallpapersListActivity;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachAlertColorsLayout extends ChatAttachAlert.AttachAlertLayout {
    Adapter adapter;
    public int currentItemTop;
    public RecyclerListView gridView;
    private int itemSize;
    private int itemsPerRow;
    GridLayoutManager layoutManager;
    Consumer wallpaperConsumer;

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    public ChatAttachAlertColorsLayout(ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.itemSize = AndroidUtilities.m1124dp(80.0f);
        this.itemsPerRow = 3;
        this.currentItemTop = 0;
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ChatAttachAlertColorsLayout.1
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() >= ChatAttachAlertColorsLayout.this.parentAlert.scrollOffsetY[0] - AndroidUtilities.m1124dp(80.0f)) {
                    return super.onTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || motionEvent.getY() >= ChatAttachAlertColorsLayout.this.parentAlert.scrollOffsetY[0] - AndroidUtilities.m1124dp(80.0f)) {
                    return super.onInterceptTouchEvent(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                PhotoViewer.getInstance().checkCurrentImageVisibility();
            }
        };
        this.gridView = recyclerListView;
        Adapter adapter = new Adapter(context);
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        this.gridView.setClipToPadding(false);
        this.gridView.setItemAnimator(null);
        this.gridView.setLayoutAnimation(null);
        this.gridView.setVerticalScrollBarEnabled(false);
        this.gridView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        addView(this.gridView, LayoutHelper.createFrame(-1, -1.0f));
        this.gridView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachAlertColorsLayout.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                if (ChatAttachAlertColorsLayout.this.gridView.getChildCount() <= 0) {
                    return;
                }
                ChatAttachAlertColorsLayout chatAttachAlertColorsLayout = ChatAttachAlertColorsLayout.this;
                chatAttachAlertColorsLayout.parentAlert.updateLayout(chatAttachAlertColorsLayout, true, i2);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                RecyclerListView.Holder holder;
                if (i == 0) {
                    int iM1124dp = AndroidUtilities.m1124dp(13.0f);
                    ActionBarMenuItem actionBarMenuItem = ChatAttachAlertColorsLayout.this.parentAlert.selectedMenuItem;
                    int iM1124dp2 = iM1124dp + (actionBarMenuItem != null ? AndroidUtilities.m1124dp(actionBarMenuItem.getAlpha() * 26.0f) : 0);
                    int backgroundPaddingTop = ChatAttachAlertColorsLayout.this.parentAlert.getBackgroundPaddingTop();
                    if (((ChatAttachAlertColorsLayout.this.parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - iM1124dp2) + backgroundPaddingTop >= ActionBar.getCurrentActionBarHeight() || (holder = (RecyclerListView.Holder) ChatAttachAlertColorsLayout.this.gridView.findViewHolderForAdapterPosition(0)) == null || holder.itemView.getTop() <= AndroidUtilities.m1124dp(7.0f)) {
                        return;
                    }
                    ChatAttachAlertColorsLayout.this.gridView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m1124dp(7.0f));
                }
            }
        });
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, this.itemSize) { // from class: org.telegram.ui.Components.ChatAttachAlertColorsLayout.3
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.ChatAttachAlertColorsLayout.3.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    public int calculateDyToMakeVisible(View view, int i2) {
                        return super.calculateDyToMakeVisible(view, i2) - (ChatAttachAlertColorsLayout.this.gridView.getPaddingTop() - AndroidUtilities.m1124dp(7.0f));
                    }

                    @Override // androidx.recyclerview.widget.LinearSmoothScroller
                    protected int calculateTimeForDeceleration(int i2) {
                        return super.calculateTimeForDeceleration(i2) * 2;
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                startSmoothScroll(linearSmoothScroller);
            }
        };
        this.layoutManager = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ChatAttachAlertColorsLayout.4
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i) {
                return ChatAttachAlertColorsLayout.this.itemSize + (i % ChatAttachAlertColorsLayout.this.itemsPerRow != ChatAttachAlertColorsLayout.this.itemsPerRow + (-1) ? AndroidUtilities.m1124dp(5.0f) : 0);
            }
        });
        this.gridView.setLayoutManager(this.layoutManager);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.gridView.smoothScrollToPosition(0);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.gridView.getPaddingTop();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.gridView.getChildCount() <= 0) {
            RecyclerListView recyclerListView = this.gridView;
            int paddingTop = recyclerListView.getPaddingTop();
            this.currentItemTop = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            return Integer.MAX_VALUE;
        }
        View childAt = this.gridView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.gridView.findContainingViewHolder(childAt);
        int top = childAt.getTop();
        int iM1124dp = AndroidUtilities.m1124dp(7.0f);
        if (top < AndroidUtilities.m1124dp(7.0f) || holder == null || holder.getAdapterPosition() != 0) {
            top = iM1124dp;
        }
        this.gridView.setTopGlowOffset(top);
        this.currentItemTop = top;
        return top;
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m1124dp(56.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0098  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int i3;
        if (AndroidUtilities.isTablet()) {
            this.itemsPerRow = 4;
        } else {
            Point point = AndroidUtilities.displaySize;
            if (point.x > point.y) {
                this.itemsPerRow = 4;
            } else {
                this.itemsPerRow = 3;
            }
        }
        ((FrameLayout.LayoutParams) getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight();
        int iM1124dp = ((i - AndroidUtilities.m1124dp(12.0f)) - AndroidUtilities.m1124dp(10.0f)) / this.itemsPerRow;
        if (this.itemSize != iM1124dp) {
            this.itemSize = iM1124dp;
            this.adapter.notifyDataSetChanged();
        }
        this.layoutManager.setSpanCount(Math.max(1, (this.itemsPerRow * iM1124dp) + (AndroidUtilities.m1124dp(5.0f) * (this.itemsPerRow - 1))));
        int iCeil = (int) Math.ceil((this.adapter.getItemCount() - 1) / this.itemsPerRow);
        Math.max(0, ((i2 - ((iM1124dp * iCeil) + ((iCeil - 1) * AndroidUtilities.m1124dp(5.0f)))) - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.m1124dp(60.0f));
        if (!AndroidUtilities.isTablet()) {
            Point point2 = AndroidUtilities.displaySize;
            i3 = point2.x > point2.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
        }
        int iM1124dp2 = i3 - AndroidUtilities.m1124dp(52.0f);
        int i4 = iM1124dp2 >= 0 ? iM1124dp2 : 0;
        if (this.gridView.getPaddingTop() != i4) {
            this.gridView.setPadding(AndroidUtilities.m1124dp(6.0f), i4, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(48.0f));
        }
    }

    public void setDelegate(Consumer consumer) {
        this.wallpaperConsumer = consumer;
    }

    public void updateColors(boolean z) {
        this.adapter.wallpapers.clear();
        WallpapersListActivity.fillDefaultColors(this.adapter.wallpapers, z);
        this.adapter.notifyDataSetChanged();
    }

    private class Adapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;
        private final ArrayList wallpapers = new ArrayList();

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        public Adapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.wallpapers.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            WallpaperCell wallpaperCell = new WallpaperCell(this.mContext, 1) { // from class: org.telegram.ui.Components.ChatAttachAlertColorsLayout.Adapter.1
                @Override // org.telegram.p029ui.Cells.WallpaperCell
                protected void onWallpaperClick(Object obj, int i2) {
                    Consumer consumer = ChatAttachAlertColorsLayout.this.wallpaperConsumer;
                    if (consumer != null) {
                        consumer.accept(obj);
                    }
                }
            };
            wallpaperCell.drawStubBackground = false;
            return new RecyclerListView.Holder(wallpaperCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            WallpaperCell wallpaperCell = (WallpaperCell) viewHolder.itemView;
            wallpaperCell.setParams(1, false, false);
            wallpaperCell.setSize(ChatAttachAlertColorsLayout.this.itemSize);
            wallpaperCell.setWallpaper(1, 0, this.wallpapers.get(i), null, null, false);
        }
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        try {
            this.parentAlert.actionBar.getTitleTextView().setBuildFullLayout(true);
        } catch (Exception unused) {
        }
        this.parentAlert.actionBar.setTitle(LocaleController.getString(C2888R.string.SelectColor));
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }
}
