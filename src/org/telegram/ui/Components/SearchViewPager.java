package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.MenuDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.DialogsSearchAdapter;
import org.telegram.ui.Adapters.FiltersView;
import org.telegram.ui.Cells.ContextLinkCell;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.HashtagSearchCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.SharedAudioCell;
import org.telegram.ui.Cells.SharedDocumentCell;
import org.telegram.ui.Cells.SharedLinkCell;
import org.telegram.ui.Cells.SharedPhotoVideoCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.utils.Blur3Utils;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.FilteredSearchView;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.ReportBottomSheet;
import org.telegram.ui.SearchAdsInfoBottomSheet;
import org.telegram.ui.TopicsFragment;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SearchViewPager extends ViewPagerFixed implements FilteredSearchView.UiCallback, NotificationCenter.NotificationCenterDelegate, IBlur3Capture {
    private ActionBarMenu actionMode;
    private ImageView actionModeCloseView;
    int animateFromCount;
    private boolean attached;
    BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableFactory;
    public StickerEmptyView botsEmptyView;
    private DefaultItemAnimator botsItemAnimator;
    public DialogsBotsAdapter botsSearchAdapter;
    public FrameLayout botsSearchContainer;
    private LinearLayoutManager botsSearchLayoutManager;
    public final RecyclerListView botsSearchListView;
    public StickerEmptyView channelsEmptyView;
    private DefaultItemAnimator channelsItemAnimator;
    public DialogsChannelsAdapter channelsSearchAdapter;
    public FrameLayout channelsSearchContainer;
    private LinearLayoutManager channelsSearchLayoutManager;
    public final RecyclerListView channelsSearchListView;
    ChatPreviewDelegate chatPreviewDelegate;
    private final long communityId;
    int currentAccount;
    private ArrayList<FiltersView.MediaFilterData> currentSearchFilters;
    private ActionBarMenuItem deleteItem;
    public DialogsSearchAdapter dialogsSearchAdapter;
    private SearchDownloadsContainer downloadsContainer;
    public StickerEmptyView emptyView;
    public boolean expandedPublicPosts;
    private FilteredSearchView.Delegate filteredSearchViewDelegate;
    private final int folderId;
    private ActionBarMenuItem forwardItem;
    SizeNotifierFrameLayout fragmentView;
    private ActionBarMenuItem gotoItem;
    public StickerEmptyView hashtagEmptyView;
    private DefaultItemAnimator hashtagItemAnimator;
    public HashtagsSearchAdapter hashtagSearchAdapter;
    public FrameLayout hashtagSearchContainer;
    private LinearLayoutManager hashtagSearchLayoutManager;
    public final RecyclerListView hashtagSearchListView;
    private boolean isActionModeShowed;
    private DefaultItemAnimator itemAnimator;
    private RecyclerItemsEnterAnimator itemsEnterAnimator;
    private int keyboardSize;
    private boolean lastSearchScrolledToTop;
    String lastSearchString;
    private FilteredSearchView noMediaFiltersSearchView;
    private int pagesPaddingBottom;
    private int pagesPaddingTop;
    DialogsActivity parent;
    public boolean postsAreNew;
    public final PostsSearchContainer postsSearchContainer;
    public FrameLayout searchContainer;
    private LinearLayoutManager searchLayoutManager;
    public final RecyclerListView searchListView;
    private HashMap<FilteredSearchView.MessageHashId, MessageObject> selectedFiles;
    private NumberTextView selectedMessagesCountTextView;
    private boolean showOnlyDialogsAdapter;
    private ActionBarMenuItem speedItem;
    protected final ViewPagerAdapter viewPagerAdapter;

    public interface ChatPreviewDelegate {
        void finish();

        void move(float f);

        void startChatPreview(RecyclerListView recyclerListView, DialogCell dialogCell);
    }

    private boolean isSpeedItemVisible() {
        return false;
    }

    @Override // org.telegram.ui.Components.ViewPagerFixed
    public long getManualScrollDuration() {
        return 320L;
    }

    public abstract boolean includeDownloads();

    public void onPageScrolled(int i, int i2) {
    }

    public SearchViewPager(Context context, final DialogsActivity dialogsActivity, int i, int i2, int i3, long j, ChatPreviewDelegate chatPreviewDelegate) {
        super(context);
        this.expandedPublicPosts = false;
        this.selectedFiles = new HashMap<>();
        this.currentSearchFilters = new ArrayList<>();
        this.currentAccount = UserConfig.selectedAccount;
        this.animateFromCount = 0;
        this.folderId = i3;
        this.communityId = j;
        this.parent = dialogsActivity;
        this.chatPreviewDelegate = chatPreviewDelegate;
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setAddDuration(150L);
        this.itemAnimator.setMoveDuration(350L);
        this.itemAnimator.setChangeDuration(0L);
        this.itemAnimator.setRemoveDuration(0L);
        this.itemAnimator.setMoveInterpolator(new OvershootInterpolator(1.1f));
        this.itemAnimator.setTranslationInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.dialogsSearchAdapter = new C42891(context, dialogsActivity, i, i2, this.itemAnimator, dialogsActivity.getAllowGlobalSearch(), null, dialogsActivity, context);
        int i4 = 1;
        if (i2 == 15) {
            ArrayList<TLRPC.Dialog> dialogsArray = dialogsActivity.getDialogsArray(this.currentAccount, i2, i3, true);
            ArrayList<Long> arrayList = new ArrayList<>();
            for (int i5 = 0; i5 < dialogsArray.size(); i5++) {
                arrayList.add(Long.valueOf(dialogsArray.get(i5).id));
            }
            this.dialogsSearchAdapter.setFilterDialogIds(arrayList);
        }
        this.fragmentView = (SizeNotifierFrameLayout) dialogsActivity.getFragmentView();
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.SearchViewPager.2
            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                SearchViewPager searchViewPager = SearchViewPager.this;
                if (searchViewPager.dialogsSearchAdapter != null && searchViewPager.itemAnimator != null && SearchViewPager.this.searchLayoutManager != null && SearchViewPager.this.dialogsSearchAdapter.showMoreAnimation) {
                    canvas.save();
                    invalidate();
                    int itemCount = SearchViewPager.this.dialogsSearchAdapter.getItemCount() - 1;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= getChildCount()) {
                            break;
                        }
                        View childAt = getChildAt(i6);
                        if (getChildAdapterPosition(childAt) == itemCount) {
                            canvas.clipRect(0.0f, 0.0f, getWidth(), childAt.getBottom() + childAt.getTranslationY());
                            break;
                        }
                        i6++;
                    }
                }
                super.dispatchDraw(canvas);
                SearchViewPager searchViewPager2 = SearchViewPager.this;
                if (searchViewPager2.dialogsSearchAdapter != null && searchViewPager2.itemAnimator != null && SearchViewPager.this.searchLayoutManager != null && SearchViewPager.this.dialogsSearchAdapter.showMoreAnimation) {
                    canvas.restore();
                }
                DialogsSearchAdapter dialogsSearchAdapter = SearchViewPager.this.dialogsSearchAdapter;
                if (dialogsSearchAdapter == null || dialogsSearchAdapter.showMoreHeader == null) {
                    return;
                }
                canvas.save();
                canvas.translate(SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.getLeft(), SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.getTop() + SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.getTranslationY());
                SearchViewPager.this.dialogsSearchAdapter.showMoreHeader.draw(canvas);
                canvas.restore();
            }
        };
        this.searchListView = recyclerListView;
        recyclerListView.setItemAnimator(this.itemAnimator);
        recyclerListView.setPivotY(0.0f);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setAdapter(this.dialogsSearchAdapter);
        recyclerListView.setVerticalScrollBarEnabled(true);
        recyclerListView.setInstantClick(true);
        recyclerListView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        this.searchLayoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setAnimateEmptyView(true, 0);
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                if (i6 == 1) {
                    AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                DialogsSearchAdapter.DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate;
                int i8;
                int iFindFirstVisibleItemPosition = SearchViewPager.this.searchLayoutManager.findFirstVisibleItemPosition();
                int iFindLastVisibleItemPosition = SearchViewPager.this.searchLayoutManager.findLastVisibleItemPosition();
                int iAbs = Math.abs(SearchViewPager.this.searchLayoutManager.findLastVisibleItemPosition() - iFindFirstVisibleItemPosition) + 1;
                int itemCount = recyclerView.getAdapter().getItemCount();
                if (iAbs > 0 && !SearchViewPager.this.dialogsSearchAdapter.isMessagesSearchEndReached() && (iFindLastVisibleItemPosition == itemCount - 1 || ((dialogsSearchAdapterDelegate = SearchViewPager.this.dialogsSearchAdapter.delegate) != null && dialogsSearchAdapterDelegate.getSearchForumDialogId() != 0 && (i8 = SearchViewPager.this.dialogsSearchAdapter.localMessagesLoadingRow) >= 0 && iFindFirstVisibleItemPosition <= i8 && iFindLastVisibleItemPosition >= i8))) {
                    SearchViewPager.this.dialogsSearchAdapter.loadMoreSearchMessages();
                }
                SearchViewPager.this.onPageScrolled(i6, i7);
            }
        });
        recyclerListView.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(this));
        FilteredSearchView filteredSearchView = new FilteredSearchView(this.parent);
        this.noMediaFiltersSearchView = filteredSearchView;
        filteredSearchView.recyclerListView.setClipToPadding(false);
        this.noMediaFiltersSearchView.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                super.onScrolled(recyclerView, i6, i7);
                SearchViewPager.this.onPageScrolled(i6, i7);
            }
        });
        this.noMediaFiltersSearchView.recyclerListView.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(this));
        this.noMediaFiltersSearchView.setUiCallback(this);
        this.noMediaFiltersSearchView.setVisibility(8);
        this.noMediaFiltersSearchView.setChatPreviewDelegate(chatPreviewDelegate);
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        flickerLoadingView.setViewType(1);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, i4) { // from class: org.telegram.ui.Components.SearchViewPager.5
            @Override // org.telegram.ui.Components.StickerEmptyView, android.view.View
            public void setVisibility(int i6) {
                if (SearchViewPager.this.noMediaFiltersSearchView.getTag() != null) {
                    super.setVisibility(8);
                } else {
                    super.setVisibility(i6);
                }
            }
        };
        this.emptyView = stickerEmptyView;
        stickerEmptyView.title.setText(LocaleController.getString(C2573R.string.NoResult));
        this.emptyView.subtitle.setVisibility(8);
        this.emptyView.setVisibility(8);
        this.emptyView.addView(flickerLoadingView, 0);
        this.emptyView.showProgress(true, false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchContainer = frameLayout;
        frameLayout.addView(this.emptyView);
        this.searchContainer.addView(recyclerListView);
        this.searchContainer.addView(this.noMediaFiltersSearchView);
        recyclerListView.setEmptyView(this.emptyView);
        this.channelsSearchContainer = new FrameLayout(context);
        DefaultItemAnimator defaultItemAnimator2 = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.SearchViewPager.6
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                SearchViewPager.this.invalidate();
            }
        };
        this.channelsItemAnimator = defaultItemAnimator2;
        defaultItemAnimator2.setSupportsChangeAnimations(false);
        this.channelsItemAnimator.setDelayAnimations(false);
        DefaultItemAnimator defaultItemAnimator3 = this.channelsItemAnimator;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        defaultItemAnimator3.setInterpolator(cubicBezierInterpolator);
        this.channelsItemAnimator.setDurations(350L);
        RecyclerListView recyclerListView2 = new RecyclerListView(context);
        this.channelsSearchListView = recyclerListView2;
        recyclerListView2.setItemAnimator(this.channelsItemAnimator);
        recyclerListView2.setPivotY(0.0f);
        recyclerListView2.setVerticalScrollBarEnabled(true);
        recyclerListView2.setInstantClick(true);
        recyclerListView2.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(context, 1, false);
        this.channelsSearchLayoutManager = linearLayoutManager2;
        recyclerListView2.setLayoutManager(linearLayoutManager2);
        recyclerListView2.setAnimateEmptyView(true, 0);
        recyclerListView2.setClipToPadding(false);
        FlickerLoadingView flickerLoadingView2 = new FlickerLoadingView(context);
        flickerLoadingView2.setViewType(1);
        StickerEmptyView stickerEmptyView2 = new StickerEmptyView(context, flickerLoadingView2, i4) { // from class: org.telegram.ui.Components.SearchViewPager.7
            @Override // org.telegram.ui.Components.StickerEmptyView, android.view.View
            public void setVisibility(int i6) {
                if (SearchViewPager.this.noMediaFiltersSearchView.getTag() != null) {
                    super.setVisibility(8);
                } else {
                    super.setVisibility(i6);
                }
            }
        };
        this.channelsEmptyView = stickerEmptyView2;
        stickerEmptyView2.title.setText(LocaleController.getString(C2573R.string.NoResult));
        this.channelsEmptyView.subtitle.setVisibility(8);
        this.channelsEmptyView.setVisibility(8);
        this.channelsEmptyView.addView(flickerLoadingView2, 0);
        this.channelsEmptyView.showProgress(true, false);
        this.channelsSearchContainer.addView(this.channelsEmptyView);
        this.channelsSearchContainer.addView(recyclerListView2);
        recyclerListView2.setEmptyView(this.channelsEmptyView);
        DialogsChannelsAdapter dialogsChannelsAdapter = new DialogsChannelsAdapter(recyclerListView2, context, this.currentAccount, i3, null) { // from class: org.telegram.ui.Components.SearchViewPager.8
            @Override // org.telegram.ui.Components.UniversalAdapter
            public void update(boolean z) {
                ArrayList<MessageObject> arrayList2;
                ArrayList<TLRPC.Chat> arrayList3;
                ArrayList<TLRPC.Chat> arrayList4;
                ArrayList<TLRPC.Chat> arrayList5;
                super.update(z);
                SearchViewPager.this.channelsEmptyView.showProgress(this.loadingMessages || this.loadingChannels || (arrayList2 = this.messages) == null || !arrayList2.isEmpty() || (arrayList3 = this.searchMyChannels) == null || !arrayList3.isEmpty() || (arrayList4 = this.searchChannels) == null || !arrayList4.isEmpty() || (arrayList5 = this.searchRecommendedChannels) == null || !arrayList5.isEmpty(), z);
                boolean zIsEmpty = TextUtils.isEmpty(this.query);
                SearchViewPager searchViewPager = SearchViewPager.this;
                if (zIsEmpty) {
                    searchViewPager.channelsEmptyView.title.setText(LocaleController.getString(C2573R.string.NoChannelsTitle));
                    SearchViewPager.this.channelsEmptyView.subtitle.setVisibility(0);
                    SearchViewPager.this.channelsEmptyView.subtitle.setText(LocaleController.getString(C2573R.string.NoChannelsMessage));
                } else {
                    searchViewPager.channelsEmptyView.title.setText(LocaleController.getString(C2573R.string.NoResult));
                    SearchViewPager.this.channelsEmptyView.subtitle.setVisibility(8);
                }
            }

            @Override // org.telegram.ui.Components.DialogsChannelsAdapter
            public void hideKeyboard() {
                AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
            }
        };
        this.channelsSearchAdapter = dialogsChannelsAdapter;
        recyclerListView2.setAdapter(dialogsChannelsAdapter);
        recyclerListView2.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                if (i6 == 1) {
                    AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                SearchViewPager.this.channelsSearchAdapter.checkBottom();
                SearchViewPager.this.onPageScrolled(i6, i7);
            }
        });
        recyclerListView2.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(this));
        this.botsSearchContainer = new FrameLayout(context);
        DefaultItemAnimator defaultItemAnimator4 = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.SearchViewPager.10
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                SearchViewPager.this.invalidate();
            }
        };
        this.botsItemAnimator = defaultItemAnimator4;
        defaultItemAnimator4.setSupportsChangeAnimations(false);
        this.botsItemAnimator.setDelayAnimations(false);
        this.botsItemAnimator.setInterpolator(cubicBezierInterpolator);
        this.botsItemAnimator.setDurations(350L);
        RecyclerListView recyclerListView3 = new RecyclerListView(context);
        this.botsSearchListView = recyclerListView3;
        recyclerListView3.setItemAnimator(this.botsItemAnimator);
        recyclerListView3.setPivotY(0.0f);
        recyclerListView3.setClipToPadding(false);
        recyclerListView3.setVerticalScrollBarEnabled(true);
        recyclerListView3.setInstantClick(true);
        recyclerListView3.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        LinearLayoutManager linearLayoutManager3 = new LinearLayoutManager(context, 1, false);
        this.botsSearchLayoutManager = linearLayoutManager3;
        recyclerListView3.setLayoutManager(linearLayoutManager3);
        recyclerListView3.setAnimateEmptyView(true, 0);
        FlickerLoadingView flickerLoadingView3 = new FlickerLoadingView(context);
        flickerLoadingView3.setViewType(1);
        StickerEmptyView stickerEmptyView3 = new StickerEmptyView(context, flickerLoadingView3, i4) { // from class: org.telegram.ui.Components.SearchViewPager.11
            @Override // org.telegram.ui.Components.StickerEmptyView, android.view.View
            public void setVisibility(int i6) {
                if (SearchViewPager.this.noMediaFiltersSearchView.getTag() != null) {
                    super.setVisibility(8);
                } else {
                    super.setVisibility(i6);
                }
            }
        };
        this.botsEmptyView = stickerEmptyView3;
        stickerEmptyView3.title.setText(LocaleController.getString(C2573R.string.NoResult));
        this.botsEmptyView.subtitle.setVisibility(8);
        this.botsEmptyView.setVisibility(8);
        this.botsEmptyView.addView(flickerLoadingView3, 0);
        this.botsEmptyView.showProgress(true, false);
        this.botsSearchContainer.addView(this.botsEmptyView);
        this.botsSearchContainer.addView(recyclerListView3);
        recyclerListView3.setEmptyView(this.botsEmptyView);
        DialogsBotsAdapter dialogsBotsAdapter = new DialogsBotsAdapter(recyclerListView3, context, this.currentAccount, i3, false, null) { // from class: org.telegram.ui.Components.SearchViewPager.12
            @Override // org.telegram.ui.Components.UniversalAdapter
            public void update(boolean z) {
                ArrayList<MessageObject> arrayList2;
                super.update(z);
                SearchViewPager.this.botsEmptyView.showProgress(this.loadingMessages || this.loadingBots || (arrayList2 = this.searchMessages) == null || !arrayList2.isEmpty(), z);
                SearchViewPager.this.botsEmptyView.title.setText(LocaleController.getString(C2573R.string.NoResult));
                SearchViewPager.this.botsEmptyView.subtitle.setVisibility(8);
            }
        };
        this.botsSearchAdapter = dialogsBotsAdapter;
        recyclerListView3.setAdapter(dialogsBotsAdapter);
        recyclerListView3.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.13
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                if (i6 == 1) {
                    AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                SearchViewPager.this.botsSearchAdapter.checkBottom();
                SearchViewPager.this.onPageScrolled(i6, i7);
            }
        });
        recyclerListView3.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(this));
        this.hashtagSearchContainer = new FrameLayout(context);
        DefaultItemAnimator defaultItemAnimator5 = new DefaultItemAnimator() { // from class: org.telegram.ui.Components.SearchViewPager.14
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                SearchViewPager.this.invalidate();
            }
        };
        this.hashtagItemAnimator = defaultItemAnimator5;
        defaultItemAnimator5.setSupportsChangeAnimations(false);
        this.hashtagItemAnimator.setDelayAnimations(false);
        this.hashtagItemAnimator.setInterpolator(cubicBezierInterpolator);
        this.hashtagItemAnimator.setDurations(350L);
        RecyclerListView recyclerListView4 = new RecyclerListView(context);
        this.hashtagSearchListView = recyclerListView4;
        recyclerListView4.setItemAnimator(this.hashtagItemAnimator);
        recyclerListView4.setPivotY(0.0f);
        recyclerListView4.setVerticalScrollBarEnabled(true);
        recyclerListView4.setInstantClick(true);
        recyclerListView4.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        LinearLayoutManager linearLayoutManager4 = new LinearLayoutManager(context, 1, false);
        this.hashtagSearchLayoutManager = linearLayoutManager4;
        recyclerListView4.setLayoutManager(linearLayoutManager4);
        recyclerListView4.setAnimateEmptyView(true, 0);
        recyclerListView4.setClipToPadding(false);
        FlickerLoadingView flickerLoadingView4 = new FlickerLoadingView(context);
        flickerLoadingView4.setViewType(1);
        StickerEmptyView stickerEmptyView4 = new StickerEmptyView(context, flickerLoadingView4, i4) { // from class: org.telegram.ui.Components.SearchViewPager.15
            @Override // org.telegram.ui.Components.StickerEmptyView, android.view.View
            public void setVisibility(int i6) {
                if (SearchViewPager.this.noMediaFiltersSearchView.getTag() != null) {
                    super.setVisibility(8);
                } else {
                    super.setVisibility(i6);
                }
            }
        };
        this.hashtagEmptyView = stickerEmptyView4;
        stickerEmptyView4.title.setText(LocaleController.getString(C2573R.string.NoResult));
        this.hashtagEmptyView.subtitle.setVisibility(8);
        this.hashtagEmptyView.setVisibility(8);
        this.hashtagEmptyView.addView(flickerLoadingView4, 0);
        this.hashtagEmptyView.showProgress(true, false);
        this.hashtagSearchContainer.addView(this.hashtagEmptyView);
        this.hashtagSearchContainer.addView(recyclerListView4);
        recyclerListView4.setEmptyView(this.hashtagEmptyView);
        HashtagsSearchAdapter hashtagsSearchAdapter = new HashtagsSearchAdapter(recyclerListView4, context, this.currentAccount, i3, null) { // from class: org.telegram.ui.Components.SearchViewPager.16
            @Override // org.telegram.ui.Components.UniversalAdapter
            public void update(boolean z) {
                super.update(z);
                SearchViewPager.this.hashtagEmptyView.showProgress(false, z);
                SearchViewPager.this.hashtagEmptyView.title.setText(LocaleController.getString(C2573R.string.NoResult));
                SearchViewPager.this.hashtagEmptyView.subtitle.setVisibility(8);
            }

            @Override // org.telegram.ui.Components.HashtagsSearchAdapter
            public void scrollToTop(boolean z) {
                if (z && SearchViewPager.this.hashtagSearchListView.canScrollVertically(-1)) {
                    return;
                }
                SearchViewPager.this.hashtagSearchLayoutManager.scrollToPositionWithOffset(0, 0);
            }
        };
        this.hashtagSearchAdapter = hashtagsSearchAdapter;
        recyclerListView4.setAdapter(hashtagsSearchAdapter);
        recyclerListView4.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.17
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i6) {
                if (i6 == 1) {
                    AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                SearchViewPager.this.hashtagSearchAdapter.checkBottom();
                SearchViewPager.this.onPageScrolled(i6, i7);
            }
        });
        recyclerListView4.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(this));
        this.itemsEnterAnimator = new RecyclerItemsEnterAnimator(recyclerListView, true);
        this.postsAreNew = false;
        PostsSearchContainer postsSearchContainer = new PostsSearchContainer(context, dialogsActivity);
        this.postsSearchContainer = postsSearchContainer;
        postsSearchContainer.listView.setClipToPadding(false);
        postsSearchContainer.listView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.18
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i6, int i7) {
                super.onScrolled(recyclerView, i6, i7);
                SearchViewPager.this.onPageScrolled(i6, i7);
            }
        });
        postsSearchContainer.listView.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(this));
        ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter();
        this.viewPagerAdapter = viewPagerAdapter;
        setAdapter(viewPagerAdapter);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SearchViewPager$1 */
    public class C42891 extends DialogsSearchAdapter {
        final /* synthetic */ Context val$context;
        final /* synthetic */ DialogsActivity val$fragment;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C42891(Context context, DialogsActivity dialogsActivity, int i, int i2, DefaultItemAnimator defaultItemAnimator, boolean z, Theme.ResourcesProvider resourcesProvider, DialogsActivity dialogsActivity2, Context context2) {
            super(context, dialogsActivity, i, i2, defaultItemAnimator, z, resourcesProvider);
            this.val$fragment = dialogsActivity2;
            this.val$context = context2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            RecyclerListView recyclerListView;
            int currentItemCount = getCurrentItemCount();
            super.notifyDataSetChanged();
            if (!SearchViewPager.this.lastSearchScrolledToTop && (recyclerListView = SearchViewPager.this.searchListView) != null) {
                recyclerListView.scrollToPosition(0);
                SearchViewPager.this.lastSearchScrolledToTop = true;
            }
            if (getItemCount() != 0 || currentItemCount == 0 || isSearching()) {
                return;
            }
            SearchViewPager.this.emptyView.showProgress(false, false);
        }

        @Override // org.telegram.ui.Adapters.DialogsSearchAdapter
        public void openPublicPosts() {
            SearchViewPager searchViewPager = SearchViewPager.this;
            HashtagsSearchAdapter hashtagsSearchAdapter = searchViewPager.hashtagSearchAdapter;
            DialogsSearchAdapter dialogsSearchAdapter = searchViewPager.dialogsSearchAdapter;
            hashtagsSearchAdapter.setInitialData(dialogsSearchAdapter.publicPostsHashtag, dialogsSearchAdapter.publicPosts, dialogsSearchAdapter.publicPostsLastRate, dialogsSearchAdapter.publicPostsTotalCount);
            SearchViewPager searchViewPager2 = SearchViewPager.this;
            searchViewPager2.expandedPublicPosts = true;
            searchViewPager2.hashtagSearchLayoutManager.scrollToPositionWithOffset(0, 0);
            SearchViewPager.this.updateTabs();
            ViewPagerFixed.TabsView tabsView = SearchViewPager.this.tabsView;
            if (tabsView != null && tabsView.getCurrentTabId() != 1) {
                SearchViewPager.this.tabsView.scrollToTab(1, 1);
            }
            SearchViewPager searchViewPager3 = SearchViewPager.this;
            searchViewPager3.hashtagSearchAdapter.search(searchViewPager3.lastSearchString);
        }

        @Override // org.telegram.ui.Adapters.DialogsSearchAdapter
        public void openBotApp(TLRPC.User user) {
            if (user == null) {
                return;
            }
            if (SearchViewPager.this.parent != null) {
                SearchViewPager.this.parent.closeSearching();
            }
            MessagesController.getInstance(SearchViewPager.this.currentAccount).openApp(user, 0);
            putRecentSearch(user.id, user);
        }

        @Override // org.telegram.ui.Adapters.DialogsSearchAdapter
        public void openSponsoredOptions(ProfileSearchCell profileSearchCell, final TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
            AndroidUtilities.hideKeyboard(this.val$fragment.getParentActivity().getCurrentFocus());
            final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((BaseFragment) this.val$fragment, (View) profileSearchCell, true);
            if (!TextUtils.isEmpty(tL_sponsoredPeer.sponsor_info) || !TextUtils.isEmpty(tL_sponsoredPeer.additional_info)) {
                final ItemOptions itemOptionsAddGap = itemOptionsMakeOptions.makeSwipeback().add(C2573R.drawable.ic_ab_back, LocaleController.getString(C2573R.string.Back), new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        itemOptionsMakeOptions.closeSwipeback();
                    }
                }).addGap();
                if (!TextUtils.isEmpty(tL_sponsoredPeer.sponsor_info)) {
                    itemOptionsAddGap.addText(tL_sponsoredPeer.sponsor_info, 13);
                }
                if (!TextUtils.isEmpty(tL_sponsoredPeer.additional_info)) {
                    if (!TextUtils.isEmpty(tL_sponsoredPeer.sponsor_info)) {
                        itemOptionsAddGap.addGap();
                    }
                    itemOptionsAddGap.addText(tL_sponsoredPeer.additional_info, 13);
                }
                itemOptionsMakeOptions.add(C2573R.drawable.msg_channel, LocaleController.getString(C2573R.string.SponsoredMessageSponsorReportable), new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        itemOptionsMakeOptions.openSwipeback(itemOptionsAddGap);
                    }
                });
            }
            int i = C2573R.drawable.msg_info;
            String string = LocaleController.getString(C2573R.string.AboutRevenueSharingAds);
            final DialogsActivity dialogsActivity = this.val$fragment;
            final Context context = this.val$context;
            ItemOptions itemOptionsAdd = itemOptionsMakeOptions.add(i, string, new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSponsoredOptions$3(dialogsActivity, context, itemOptionsMakeOptions);
                }
            });
            int i2 = C2573R.drawable.msg_block2;
            String string2 = LocaleController.getString(C2573R.string.ReportAd);
            final DialogsActivity dialogsActivity2 = this.val$fragment;
            ItemOptions itemOptionsAddGap2 = itemOptionsAdd.add(i2, string2, new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSponsoredOptions$5(dialogsActivity2, tL_sponsoredPeer, itemOptionsMakeOptions);
                }
            }).addGap();
            int i3 = C2573R.drawable.msg_cancel;
            String string3 = LocaleController.getString(C2573R.string.RemoveAds);
            final DialogsActivity dialogsActivity3 = this.val$fragment;
            itemOptionsAddGap2.add(i3, string3, new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSponsoredOptions$6(dialogsActivity3, itemOptionsMakeOptions);
                }
            }).setGravity(LocaleController.isRTL ? 3 : 5).setOnTopOfScrim().setDrawScrim(false).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openSponsoredOptions$3(final DialogsActivity dialogsActivity, Context context, ItemOptions itemOptions) {
            dialogsActivity.showDialog(new SearchAdsInfoBottomSheet(context, dialogsActivity.getResourceProvider(), new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSponsoredOptions$2(dialogsActivity);
                }
            }));
            itemOptions.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openSponsoredOptions$2(DialogsActivity dialogsActivity) {
            removeAllAds();
            BulletinFactory.of(dialogsActivity).createAdReportedBulletin(LocaleController.getString(C2573R.string.AdHidden)).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openSponsoredOptions$5(DialogsActivity dialogsActivity, final TLRPC.TL_sponsoredPeer tL_sponsoredPeer, ItemOptions itemOptions) {
            ReportBottomSheet.openSponsoredPeer(dialogsActivity, tL_sponsoredPeer.random_id, dialogsActivity.getResourceProvider(), new Runnable() { // from class: org.telegram.ui.Components.SearchViewPager$1$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSponsoredOptions$4(tL_sponsoredPeer);
                }
            });
            itemOptions.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openSponsoredOptions$4(TLRPC.TL_sponsoredPeer tL_sponsoredPeer) {
            removeAd(tL_sponsoredPeer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openSponsoredOptions$6(DialogsActivity dialogsActivity, ItemOptions itemOptions) {
            if (UserConfig.getInstance(SearchViewPager.this.currentAccount).isPremium()) {
                dialogsActivity.getMessagesController().disableAds(true);
                removeAllAds();
                BulletinFactory.of(dialogsActivity).createAdReportedBulletin(LocaleController.getString(C2573R.string.AdHidden)).show();
            } else {
                new PremiumFeatureBottomSheet(dialogsActivity, 3, true).show();
            }
            itemOptions.dismiss();
        }
    }

    public boolean isDownloadsTab(int i) {
        ViewPagerAdapter viewPagerAdapter = this.viewPagerAdapter;
        return viewPagerAdapter != null && viewPagerAdapter.getItemViewType(i) == 2;
    }

    public ActionBarMenu getActionMode() {
        return this.actionMode;
    }

    public ActionBarMenuItem getSpeedItem() {
        return this.speedItem;
    }

    public void onTextChanged(String str) {
        View currentView = getCurrentView();
        boolean z = TextUtils.isEmpty(this.lastSearchString) ? true : !this.attached;
        this.lastSearchString = str;
        search(currentView, getCurrentPosition(), str, z);
    }

    public void updateTabs() {
        updateTabs(false);
    }

    public void updateTabs(boolean z) {
        this.viewPagerAdapter.updateItems();
        fillTabs(z);
        ViewPagerFixed.TabsView tabsView = this.tabsView;
        if (tabsView != null) {
            tabsView.finishAddingTabs();
        }
    }

    public boolean includeFolder() {
        for (int i = 0; i < this.currentSearchFilters.size(); i++) {
            if (this.currentSearchFilters.get(i).filterType == 7) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void search(View view, int i, String str, boolean z) {
        boolean z2;
        boolean z3;
        long j;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        StickerEmptyView stickerEmptyView = this.emptyView;
        if (zIsEmpty) {
            stickerEmptyView.subtitle.setVisibility(8);
        } else {
            stickerEmptyView.subtitle.setVisibility(0);
            this.emptyView.subtitle.setText(LocaleController.formatString(C2573R.string.NoResultFoundFor2, str));
        }
        DialogsSearchAdapter.DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate = this.dialogsSearchAdapter.delegate;
        long searchForumDialogId = dialogsSearchAdapterDelegate != null ? dialogsSearchAdapterDelegate.getSearchForumDialogId() : 0L;
        long j2 = i == 0 ? 0L : searchForumDialogId;
        long j3 = searchForumDialogId;
        int i2 = 0;
        long j4 = 0;
        long j5 = 0;
        for (int i3 = 0; i3 < this.currentSearchFilters.size(); i3++) {
            FiltersView.MediaFilterData mediaFilterData = this.currentSearchFilters.get(i3);
            int i4 = mediaFilterData.filterType;
            if (i4 == 4) {
                TLObject tLObject = mediaFilterData.chat;
                if (tLObject instanceof TLRPC.User) {
                    j = ((TLRPC.User) tLObject).id;
                } else if ((tLObject instanceof TLRPC.Chat) && !ChatObject.isCommunity((TLRPC.Chat) tLObject)) {
                    j = -((TLRPC.Chat) mediaFilterData.chat).id;
                }
                j2 = j;
            } else if (i4 == 6) {
                FiltersView.DateData dateData = mediaFilterData.dateData;
                j4 = dateData.minDate;
                j5 = dateData.maxDate;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        if (this.hashtagSearchAdapter.getHashtag(str) == null) {
            collapsePublicPosts();
        }
        if (view == this.channelsSearchContainer) {
            MessagesController.getInstance(this.currentAccount).getChannelRecommendations(0L);
            this.channelsSearchAdapter.search(str);
            this.channelsEmptyView.setKeyboardHeight(this.keyboardSize, false);
            return;
        }
        if (view == this.botsSearchContainer) {
            this.botsSearchAdapter.search(str);
            this.botsEmptyView.setKeyboardHeight(this.keyboardSize, false);
            if (TextUtils.isEmpty(str)) {
                this.botsSearchAdapter.checkBottom();
                return;
            }
            return;
        }
        PostsSearchContainer postsSearchContainer = this.postsSearchContainer;
        if (view == postsSearchContainer) {
            postsSearchContainer.search(str);
            return;
        }
        if (view == this.hashtagSearchContainer) {
            if (this.hashtagSearchAdapter.getHashtag(str) == null) {
                return;
            }
            if (z) {
                z3 = false;
                this.hashtagSearchLayoutManager.scrollToPositionWithOffset(0, 0);
            } else {
                z3 = false;
            }
            this.hashtagSearchAdapter.search(str);
            this.hashtagEmptyView.setKeyboardHeight(this.keyboardSize, z3);
            return;
        }
        if (view == this.searchContainer) {
            if ((j2 == 0 && this.communityId == 0 && j4 == 0 && j5 == 0) || j3 != 0) {
                this.lastSearchScrolledToTop = false;
                this.dialogsSearchAdapter.searchDialogs(str, i2, true);
                this.dialogsSearchAdapter.setFiltersDelegate(this.filteredSearchViewDelegate, false);
                this.noMediaFiltersSearchView.animate().setListener(null).cancel();
                this.noMediaFiltersSearchView.setDelegate(null, false);
                if (z) {
                    this.emptyView.showProgress(!this.dialogsSearchAdapter.isSearching(), false);
                    this.emptyView.showProgress(this.dialogsSearchAdapter.isSearching(), false);
                } else if (!this.dialogsSearchAdapter.hasRecentSearch()) {
                    this.emptyView.showProgress(this.dialogsSearchAdapter.isSearching(), true);
                }
                FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
                if (z) {
                    filteredSearchView.setVisibility(8);
                } else if (filteredSearchView.getVisibility() != 8) {
                    this.noMediaFiltersSearchView.animate().alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SearchViewPager.19
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            SearchViewPager.this.noMediaFiltersSearchView.setVisibility(8);
                        }
                    }).setDuration(150L).start();
                }
                this.noMediaFiltersSearchView.setTag(null);
            } else {
                boolean z4 = true;
                this.noMediaFiltersSearchView.setTag(1);
                this.noMediaFiltersSearchView.setDelegate(this.filteredSearchViewDelegate, false);
                this.noMediaFiltersSearchView.animate().setListener(null).cancel();
                FilteredSearchView filteredSearchView2 = this.noMediaFiltersSearchView;
                if (z) {
                    filteredSearchView2.setVisibility(0);
                    this.noMediaFiltersSearchView.setAlpha(1.0f);
                    z2 = z;
                } else {
                    if (filteredSearchView2.getVisibility() != 0) {
                        this.noMediaFiltersSearchView.setVisibility(0);
                        this.noMediaFiltersSearchView.setAlpha(0.0f);
                    } else {
                        z4 = z;
                    }
                    this.noMediaFiltersSearchView.animate().alpha(1.0f).setDuration(150L).start();
                    z2 = z4;
                }
                this.noMediaFiltersSearchView.search(j2, this.communityId, j4, j5, null, i2, str, z2);
                this.emptyView.setVisibility(8);
            }
            this.emptyView.setKeyboardHeight(this.keyboardSize, false);
            this.noMediaFiltersSearchView.setKeyboardHeight(this.keyboardSize, false);
            return;
        }
        long j6 = j4;
        boolean z5 = i2;
        if (view instanceof FilteredSearchView) {
            FilteredSearchView filteredSearchView3 = (FilteredSearchView) view;
            filteredSearchView3.setUseFromUserAsAvatar(j3 != 0);
            filteredSearchView3.setKeyboardHeight(this.keyboardSize, false);
            filteredSearchView3.search(j2, this.communityId, j6, j5, FiltersView.filters[this.viewPagerAdapter.items.get(i).filterIndex], z5, str, z);
            return;
        }
        if (view instanceof SearchDownloadsContainer) {
            SearchDownloadsContainer searchDownloadsContainer = (SearchDownloadsContainer) view;
            searchDownloadsContainer.setKeyboardHeight(this.keyboardSize, false);
            searchDownloadsContainer.search(str);
        }
    }

    public SearchDownloadsContainer getDownloadsContainer() {
        return this.downloadsContainer;
    }

    public void onResume() {
        DialogsSearchAdapter dialogsSearchAdapter = this.dialogsSearchAdapter;
        if (dialogsSearchAdapter != null) {
            dialogsSearchAdapter.notifyDataSetChanged();
        }
    }

    public void removeSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        this.currentSearchFilters.remove(mediaFilterData);
    }

    public boolean addSearchFilter(FiltersView.MediaFilterData mediaFilterData) {
        if (!this.currentSearchFilters.isEmpty()) {
            for (int i = 0; i < this.currentSearchFilters.size(); i++) {
                if (mediaFilterData.isSameType(this.currentSearchFilters.get(i))) {
                    return false;
                }
            }
        }
        this.currentSearchFilters.add(mediaFilterData);
        return true;
    }

    public ArrayList<FiltersView.MediaFilterData> getCurrentSearchFilters() {
        return this.currentSearchFilters;
    }

    public void clear() {
        this.currentSearchFilters.clear();
        collapsePublicPosts();
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
    public void collapsePublicPosts() {
        if (this.expandedPublicPosts) {
            this.expandedPublicPosts = false;
            updateTabs();
            ViewPagerFixed.TabsView tabsView = this.tabsView;
            if (tabsView != null && tabsView.getCurrentTabId() != 0) {
                this.tabsView.scrollToTab(0, 0);
            }
            DialogsSearchAdapter dialogsSearchAdapter = this.dialogsSearchAdapter;
            if (dialogsSearchAdapter != null) {
                dialogsSearchAdapter.searchDialogs(this.lastSearchString, includeFolder() ? 1 : 0, true);
            }
        }
    }

    public void setFilteredSearchViewDelegate(FilteredSearchView.Delegate delegate) {
        this.filteredSearchViewDelegate = delegate;
    }

    private void showActionMode(boolean z) {
        DialogsSearchAdapter.DialogsSearchAdapterDelegate dialogsSearchAdapterDelegate;
        if (this.isActionModeShowed == z) {
            return;
        }
        if (z && this.parent.getActionBar().isActionModeShowed()) {
            return;
        }
        if (z && !this.parent.getActionBar().actionModeIsExist("search_view_pager")) {
            this.actionMode = this.parent.getActionBar().createActionMode(true, "search_view_pager");
            if (this.parent.hasMainTabs) {
                ImageView imageView = new ImageView(getContext());
                this.actionModeCloseView = imageView;
                imageView.setScaleType(ImageView.ScaleType.CENTER);
                this.actionModeCloseView.setImageDrawable(new BackDrawable(true));
                this.actionModeCloseView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.MULTIPLY));
                this.actionModeCloseView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector)));
                this.actionModeCloseView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$showActionMode$0(view);
                    }
                });
                this.actionMode.addView(this.actionModeCloseView, LayoutHelper.createLinear(54, 54, 0.0f, 16));
            }
            NumberTextView numberTextView = new NumberTextView(this.actionMode.getContext());
            this.selectedMessagesCountTextView = numberTextView;
            numberTextView.setTextSize(18);
            this.selectedMessagesCountTextView.setTypeface(AndroidUtilities.bold());
            NumberTextView numberTextView2 = this.selectedMessagesCountTextView;
            int i = Theme.key_actionBarActionModeDefaultIcon;
            numberTextView2.setTextColor(Theme.getColor(i));
            this.actionMode.addView(this.selectedMessagesCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, this.parent.hasMainTabs ? 18 : 72, 0, 0, 0));
            this.selectedMessagesCountTextView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda6
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return SearchViewPager.$r8$lambda$IWDQng5sl7zUoo6zKCuKyGfo6VY(view, motionEvent);
                }
            });
            ActionBarMenuItem actionBarMenuItemAddItemWithWidth = this.actionMode.addItemWithWidth(203, C2573R.drawable.avd_speed, AndroidUtilities.dp(54.0f), LocaleController.getString(C2573R.string.AccDescrPremiumSpeed));
            this.speedItem = actionBarMenuItemAddItemWithWidth;
            actionBarMenuItemAddItemWithWidth.getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
            this.gotoItem = this.actionMode.addItemWithWidth(200, C2573R.drawable.msg_message, AndroidUtilities.dp(54.0f), LocaleController.getString(C2573R.string.AccDescrGoToMessage));
            ActionBarMenuItem actionBarMenuItemAddItemWithWidth2 = this.actionMode.addItemWithWidth(201, C2573R.drawable.msg_forward, AndroidUtilities.dp(54.0f), LocaleController.getString(C2573R.string.Forward));
            this.forwardItem = actionBarMenuItemAddItemWithWidth2;
            actionBarMenuItemAddItemWithWidth2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda7
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$showActionMode$2(view);
                }
            });
            this.deleteItem = this.actionMode.addItemWithWidth(202, C2573R.drawable.msg_delete, AndroidUtilities.dp(54.0f), LocaleController.getString(C2573R.string.Delete));
        }
        if (this.selectedMessagesCountTextView != null) {
            DialogsSearchAdapter dialogsSearchAdapter = this.dialogsSearchAdapter;
            ((ViewGroup.MarginLayoutParams) this.selectedMessagesCountTextView.getLayoutParams()).leftMargin = AndroidUtilities.dp((this.parent.hasMainTabs ? 18 : 72) + (dialogsSearchAdapter != null && (dialogsSearchAdapterDelegate = dialogsSearchAdapter.delegate) != null && (dialogsSearchAdapterDelegate.getSearchForumDialogId() > 0L ? 1 : (dialogsSearchAdapterDelegate.getSearchForumDialogId() == 0L ? 0 : -1)) != 0 ? 56 : 0));
            NumberTextView numberTextView3 = this.selectedMessagesCountTextView;
            numberTextView3.setLayoutParams(numberTextView3.getLayoutParams());
        }
        if (this.parent.getActionBar().getBackButton() != null && (this.parent.getActionBar().getBackButton().getDrawable() instanceof MenuDrawable)) {
            BackDrawable backDrawable = new BackDrawable(false);
            this.parent.getActionBar().setBackButtonDrawable(backDrawable);
            backDrawable.setColorFilter(null);
        }
        this.isActionModeShowed = z;
        DialogsActivity dialogsActivity = this.parent;
        if (z) {
            AndroidUtilities.hideKeyboard(dialogsActivity.getParentActivity().getCurrentFocus());
            this.parent.getActionBar().showActionMode();
            this.selectedMessagesCountTextView.setNumber(this.selectedFiles.size(), false);
            this.speedItem.setVisibility(isSpeedItemVisible() ? 0 : 8);
            this.gotoItem.setVisibility(0);
            this.forwardItem.setVisibility(0);
            this.deleteItem.setVisibility(0);
            return;
        }
        dialogsActivity.getActionBar().hideActionMode();
        this.selectedFiles.clear();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                ((FilteredSearchView) getChildAt(i2)).update();
            }
            if (getChildAt(i2) instanceof SearchDownloadsContainer) {
                ((SearchDownloadsContainer) getChildAt(i2)).update(true);
            }
        }
        FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
        if (filteredSearchView != null) {
            filteredSearchView.update();
        }
        int size = this.viewsByType.size();
        for (int i3 = 0; i3 < size; i3++) {
            View viewValueAt = this.viewsByType.valueAt(i3);
            if (viewValueAt instanceof FilteredSearchView) {
                ((FilteredSearchView) viewValueAt).update();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showActionMode$0(View view) {
        hideActionMode();
    }

    public static /* synthetic */ boolean $r8$lambda$IWDQng5sl7zUoo6zKCuKyGfo6VY(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showActionMode$2(View view) {
        onActionBarItemClick(Opcodes.SUB_DOUBLE_2ADDR);
        return true;
    }

    public void onActionBarItemClick(int i) {
        if (i == 202) {
            DialogsActivity dialogsActivity = this.parent;
            if (dialogsActivity == null || dialogsActivity.getParentActivity() == null) {
                return;
            }
            final ArrayList arrayList = new ArrayList(this.selectedFiles.values());
            AlertDialog.Builder builder = new AlertDialog.Builder(this.parent.getParentActivity());
            builder.setTitle(LocaleController.formatPluralString("RemoveDocumentsTitle", this.selectedFiles.size(), new Object[0]));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) AndroidUtilities.replaceTags(LocaleController.formatPluralString("RemoveDocumentsMessage", this.selectedFiles.size(), new Object[0]))).append((CharSequence) "\n\n").append((CharSequence) LocaleController.getString(C2573R.string.RemoveDocumentsAlertMessage));
            builder.setMessage(spannableStringBuilder);
            builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    alertDialog.dismiss();
                }
            });
            builder.setPositiveButton(LocaleController.getString(C2573R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$onActionBarItemClick$4(arrayList, alertDialog, i2);
                }
            });
            TextView textView = (TextView) builder.show().getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        if (i == 203) {
            if (isSpeedItemVisible()) {
                this.parent.showDialog(new PremiumFeatureBottomSheet(this.parent, 2, true));
                return;
            }
            return;
        }
        if (i == 200) {
            if (this.selectedFiles.size() != 1) {
                return;
            }
            goToMessage(this.selectedFiles.values().iterator().next());
        } else if (i == 201 || i == 204) {
            final boolean z = i == 204;
            Bundle bundle = new Bundle();
            bundle.putBoolean("onlySelect", true);
            bundle.putInt("dialogsType", 3);
            bundle.putBoolean("forward_noquote", z);
            DialogsActivity dialogsActivity2 = new DialogsActivity(bundle);
            dialogsActivity2.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity3, ArrayList arrayList2, CharSequence charSequence, boolean z2, boolean z3, int i2, int i3, TopicsFragment topicsFragment) {
                    return this.f$0.lambda$onActionBarItemClick$5(z, dialogsActivity3, arrayList2, charSequence, z2, z3, i2, i3, topicsFragment);
                }
            });
            this.parent.presentFragment(dialogsActivity2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$4(ArrayList arrayList, AlertDialog alertDialog, int i) {
        alertDialog.dismiss();
        this.parent.getDownloadController().deleteRecentFiles(arrayList);
        hideActionMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onActionBarItemClick$5(boolean z, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z2, boolean z3, int i, int i2, TopicsFragment topicsFragment) {
        long j;
        boolean z4 = z;
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        Iterator<FilteredSearchView.MessageHashId> it = this.selectedFiles.keySet().iterator();
        while (it.hasNext()) {
            arrayList2.add(this.selectedFiles.get(it.next()));
        }
        this.selectedFiles.clear();
        showActionMode(false);
        if (arrayList.size() > 1 || ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId == AccountInstance.getInstance(this.currentAccount).getUserConfig().getClientUserId() || charSequence != null) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                long j2 = ((MessagesStorage.TopicKey) arrayList.get(i3)).dialogId;
                if (charSequence != null) {
                    j = j2;
                    AccountInstance.getInstance(this.currentAccount).getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.of(charSequence.toString(), j, null, null, null, true, null, null, null, true, 0, 0, null, false));
                } else {
                    j = j2;
                }
                AccountInstance.getInstance(this.currentAccount).getSendMessagesHelper().sendMessage(arrayList2, j, z4, false, true, 0, 0L);
                i3++;
                z4 = z;
            }
            dialogsActivity.finishFragment();
        } else {
            long j3 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j3)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j3));
            } else {
                if (DialogObject.isUserDialog(j3)) {
                    bundle.putLong("user_id", j3);
                } else {
                    bundle.putLong("chat_id", -j3);
                }
                if (!AccountInstance.getInstance(this.currentAccount).getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                    return true;
                }
            }
            bundle.putBoolean("forward_noquote", z4);
            ChatActivity chatActivity = new ChatActivity(bundle);
            dialogsActivity.presentFragment(chatActivity, true);
            chatActivity.setForwardParams(z4);
            chatActivity.showFieldPanelForForward(true, arrayList2);
        }
        return true;
    }

    @Override // org.telegram.ui.FilteredSearchView.UiCallback
    public void goToMessage(MessageObject messageObject) {
        this.parent.presentFragment(createFragmentFromMessage(this.currentAccount, messageObject));
        showActionMode(false);
    }

    public static BaseFragment createFragmentFromMessage(int i, MessageObject messageObject) {
        Bundle bundle = new Bundle();
        long dialogId = messageObject.getDialogId();
        if (DialogObject.isEncryptedDialog(dialogId)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
        } else if (DialogObject.isUserDialog(dialogId)) {
            bundle.putLong("user_id", dialogId);
        } else {
            TLRPC.Chat chat = AccountInstance.getInstance(i).getMessagesController().getChat(Long.valueOf(-dialogId));
            if (chat != null && chat.migrated_to != null) {
                bundle.putLong("migrated_to", dialogId);
                dialogId = -chat.migrated_to.channel_id;
            }
            bundle.putLong("chat_id", -dialogId);
        }
        bundle.putInt("message_id", messageObject.getId());
        return new ChatActivity(bundle);
    }

    public int getFolderId() {
        return this.folderId;
    }

    @Override // org.telegram.ui.FilteredSearchView.UiCallback
    public boolean actionModeShowing() {
        return this.isActionModeShowed;
    }

    public void hideActionMode() {
        showActionMode(false);
    }

    @Override // org.telegram.ui.FilteredSearchView.UiCallback
    public void toggleItemSelection(MessageObject messageObject, View view, int i) {
        boolean z;
        FilteredSearchView.MessageHashId messageHashId = new FilteredSearchView.MessageHashId(messageObject.getId(), messageObject.getDialogId());
        boolean zContainsKey = this.selectedFiles.containsKey(messageHashId);
        HashMap<FilteredSearchView.MessageHashId, MessageObject> map = this.selectedFiles;
        if (zContainsKey) {
            map.remove(messageHashId);
        } else if (map.size() >= 100) {
            return;
        } else {
            this.selectedFiles.put(messageHashId, messageObject);
        }
        if (this.selectedFiles.size() == 0) {
            showActionMode(false);
        } else {
            this.selectedMessagesCountTextView.setNumber(this.selectedFiles.size(), true);
            ActionBarMenuItem actionBarMenuItem = this.gotoItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(this.selectedFiles.size() == 1 ? 0 : 8);
            }
            if (this.speedItem != null) {
                boolean zIsSpeedItemVisible = isSpeedItemVisible();
                int i2 = zIsSpeedItemVisible ? 0 : 8;
                if (this.speedItem.getVisibility() != i2) {
                    this.speedItem.setVisibility(i2);
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.speedItem.getIconView().getDrawable();
                    animatedVectorDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.SRC_IN));
                    if (zIsSpeedItemVisible) {
                        animatedVectorDrawable.start();
                    } else {
                        animatedVectorDrawable.reset();
                    }
                }
            }
            if (this.deleteItem != null) {
                Iterator<FilteredSearchView.MessageHashId> it = this.selectedFiles.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    } else {
                        if (!this.selectedFiles.get(it.next()).isDownloadingFile) {
                            z = false;
                            break;
                        }
                    }
                }
                this.deleteItem.setVisibility(z ? 0 : 8);
            }
        }
        if (view instanceof SharedDocumentCell) {
            ((SharedDocumentCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
            return;
        }
        if (view instanceof SharedPhotoVideoCell) {
            ((SharedPhotoVideoCell) view).setChecked(i, this.selectedFiles.containsKey(messageHashId), true);
            return;
        }
        if (view instanceof SharedLinkCell) {
            ((SharedLinkCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
            return;
        }
        if (view instanceof SharedAudioCell) {
            ((SharedAudioCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof ContextLinkCell) {
            ((ContextLinkCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        } else if (view instanceof DialogCell) {
            ((DialogCell) view).setChecked(this.selectedFiles.containsKey(messageHashId), true);
        }
    }

    @Override // org.telegram.ui.FilteredSearchView.UiCallback
    public boolean isSelected(FilteredSearchView.MessageHashId messageHashId) {
        return this.selectedFiles.containsKey(messageHashId);
    }

    @Override // org.telegram.ui.FilteredSearchView.UiCallback
    public void showActionMode() {
        showActionMode(true);
    }

    @Override // org.telegram.ui.Components.ViewPagerFixed
    public void onItemSelected(View view, View view2, int i, int i2) {
        if (i == 0) {
            int visibility = this.noMediaFiltersSearchView.getVisibility();
            FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
            if (visibility == 0) {
                filteredSearchView.setDelegate(this.filteredSearchViewDelegate, false);
                this.dialogsSearchAdapter.setFiltersDelegate(null, false);
            } else {
                filteredSearchView.setDelegate(null, false);
                this.dialogsSearchAdapter.setFiltersDelegate(this.filteredSearchViewDelegate, true);
            }
        } else if (view instanceof FilteredSearchView) {
            ((FilteredSearchView) view).setDelegate(this.filteredSearchViewDelegate, i2 == 0 && this.noMediaFiltersSearchView.getVisibility() != 0);
        }
        if (view2 instanceof FilteredSearchView) {
            ((FilteredSearchView) view2).setDelegate(null, false);
        } else {
            this.dialogsSearchAdapter.setFiltersDelegate(null, false);
            this.noMediaFiltersSearchView.setDelegate(null, false);
        }
    }

    public void getThemeDescriptions(ArrayList<ThemeDescription> arrayList) {
        for (int i = 0; i < this.searchListView.getChildCount(); i++) {
            View childAt = this.searchListView.getChildAt(i);
            if ((childAt instanceof ProfileSearchCell) || (childAt instanceof DialogCell) || (childAt instanceof HashtagSearchCell)) {
                arrayList.add(new ThemeDescription(childAt, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite));
            }
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                arrayList.addAll(((FilteredSearchView) getChildAt(i2)).getThemeDescriptions());
            }
        }
        int size = this.viewsByType.size();
        for (int i3 = 0; i3 < size; i3++) {
            View viewValueAt = this.viewsByType.valueAt(i3);
            if (viewValueAt instanceof FilteredSearchView) {
                arrayList.addAll(((FilteredSearchView) viewValueAt).getThemeDescriptions());
            }
        }
        FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
        if (filteredSearchView != null) {
            arrayList.addAll(filteredSearchView.getThemeDescriptions());
        }
        arrayList.add(new ThemeDescription(this.emptyView.title, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.add(new ThemeDescription(this.emptyView.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.addAll(SimpleThemeDescription.createThemeDescriptions(new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.SearchViewPager$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$6();
            }
        }, Theme.key_actionBarActionModeDefaultIcon));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$6() {
        NumberTextView numberTextView = this.selectedMessagesCountTextView;
        if (numberTextView != null) {
            numberTextView.setTextColor(Theme.getColor(Theme.key_actionBarActionModeDefaultIcon));
        }
    }

    public void updateColors() {
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i) instanceof FilteredSearchView) {
                RecyclerListView recyclerListView = ((FilteredSearchView) getChildAt(i)).recyclerListView;
                int childCount = recyclerListView.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = recyclerListView.getChildAt(i2);
                    if (childAt instanceof DialogCell) {
                        ((DialogCell) childAt).update(0);
                    }
                }
            }
        }
        int size = this.viewsByType.size();
        for (int i3 = 0; i3 < size; i3++) {
            View viewValueAt = this.viewsByType.valueAt(i3);
            if (viewValueAt instanceof FilteredSearchView) {
                RecyclerListView recyclerListView2 = ((FilteredSearchView) viewValueAt).recyclerListView;
                int childCount2 = recyclerListView2.getChildCount();
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = recyclerListView2.getChildAt(i4);
                    if (childAt2 instanceof DialogCell) {
                        ((DialogCell) childAt2).update(0);
                    }
                }
            }
        }
        FilteredSearchView filteredSearchView = this.noMediaFiltersSearchView;
        if (filteredSearchView != null) {
            RecyclerListView recyclerListView3 = filteredSearchView.recyclerListView;
            int childCount3 = recyclerListView3.getChildCount();
            for (int i5 = 0; i5 < childCount3; i5++) {
                View childAt3 = recyclerListView3.getChildAt(i5);
                if (childAt3 instanceof DialogCell) {
                    ((DialogCell) childAt3).update(0);
                }
            }
        }
        PostsSearchContainer postsSearchContainer = this.postsSearchContainer;
        if (postsSearchContainer != null) {
            postsSearchContainer.updateColors();
        }
    }

    public void reset() {
        setPosition(0);
        if (this.dialogsSearchAdapter.getItemCount() > 0) {
            this.searchLayoutManager.scrollToPositionWithOffset(0, 0);
        }
        LinearLayoutManager linearLayoutManager = this.channelsSearchLayoutManager;
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(0, 0);
        }
        LinearLayoutManager linearLayoutManager2 = this.botsSearchLayoutManager;
        if (linearLayoutManager2 != null) {
            linearLayoutManager2.scrollToPositionWithOffset(0, 0);
        }
        LinearLayoutManager linearLayoutManager3 = this.hashtagSearchLayoutManager;
        if (linearLayoutManager3 != null) {
            linearLayoutManager3.scrollToPositionWithOffset(0, 0);
        }
        this.viewsByType.clear();
    }

    @Override // org.telegram.ui.Components.ViewPagerFixed
    public void setPosition(int i) {
        if (i < 0) {
            return;
        }
        super.setPosition(i);
        this.viewsByType.clear();
        ViewPagerFixed.TabsView tabsView = this.tabsView;
        if (tabsView != null) {
            tabsView.selectTabWithId(i, 1.0f);
        }
        invalidate();
    }

    public void setPagesPadding(int i, int i2, boolean z) {
        this.pagesPaddingTop = i;
        this.pagesPaddingBottom = i2;
        this.searchListView.setPadding(0, i, 0, i2, z);
        this.noMediaFiltersSearchView.setPagesPaddings(this.pagesPaddingTop, this.pagesPaddingBottom, z);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.emptyView.getLayoutParams();
        int i3 = marginLayoutParams.topMargin;
        int i4 = this.pagesPaddingTop;
        if (i3 != i4 || marginLayoutParams.bottomMargin != this.pagesPaddingBottom) {
            marginLayoutParams.topMargin = i4;
            marginLayoutParams.bottomMargin = this.pagesPaddingBottom;
            this.emptyView.requestLayout();
        }
        setPagesPaddings(this.channelsSearchContainer, this.channelsSearchListView, this.pagesPaddingTop, this.pagesPaddingBottom, z);
        setPagesPaddings(this.botsSearchContainer, this.botsSearchListView, this.pagesPaddingTop, this.pagesPaddingBottom, z);
        setPagesPaddings(this.hashtagSearchContainer, this.hashtagSearchListView, this.pagesPaddingTop, this.pagesPaddingBottom, z);
        this.postsSearchContainer.setPagesPaddings(this.pagesPaddingTop, this.pagesPaddingBottom, z);
        SearchDownloadsContainer searchDownloadsContainer = this.downloadsContainer;
        if (searchDownloadsContainer != null) {
            searchDownloadsContainer.setPagesPaddings(this.pagesPaddingTop, this.pagesPaddingBottom, z);
        }
        int size = this.viewsByType.size();
        for (int i5 = 0; i5 < size; i5++) {
            View viewValueAt = this.viewsByType.valueAt(i5);
            if (viewValueAt instanceof FilteredSearchView) {
                ((FilteredSearchView) viewValueAt).setPagesPaddings(this.pagesPaddingTop, this.pagesPaddingBottom, z);
            }
        }
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            if (getChildAt(i6) instanceof FilteredSearchView) {
                ((FilteredSearchView) getChildAt(i6)).setPagesPaddings(this.pagesPaddingTop, this.pagesPaddingBottom, z);
            }
        }
    }

    private static void setPagesPaddings(ViewGroup viewGroup, RecyclerListView recyclerListView, int i, int i2, boolean z) {
        viewGroup.setClipToPadding(false);
        viewGroup.setPadding(0, i, 0, i2);
        recyclerListView.setPadding(0, i, 0, i2, z);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) recyclerListView.getLayoutParams();
        marginLayoutParams.topMargin = -i;
        marginLayoutParams.bottomMargin = -i2;
    }

    public void setKeyboardHeight(int i) {
        this.keyboardSize = i;
        boolean z = getVisibility() == 0 && getAlpha() > 0.0f;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                ((FilteredSearchView) getChildAt(i2)).setKeyboardHeight(i, z);
            } else if (getChildAt(i2) == this.searchContainer) {
                this.emptyView.setKeyboardHeight(i, z);
                this.noMediaFiltersSearchView.setKeyboardHeight(i, z);
            } else if (getChildAt(i2) instanceof SearchDownloadsContainer) {
                ((SearchDownloadsContainer) getChildAt(i2)).setKeyboardHeight(i, z);
            } else if (getChildAt(i2) == this.channelsSearchContainer) {
                this.channelsEmptyView.setKeyboardHeight(i, z);
            }
        }
    }

    public void showOnlyDialogsAdapter(boolean z) {
        this.showOnlyDialogsAdapter = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void messagesDeleted(long j, ArrayList<Integer> arrayList) {
        int size = this.viewsByType.size();
        for (int i = 0; i < size; i++) {
            View viewValueAt = this.viewsByType.valueAt(i);
            if (viewValueAt instanceof FilteredSearchView) {
                ((FilteredSearchView) viewValueAt).messagesDeleted(j, arrayList);
            }
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof FilteredSearchView) {
                ((FilteredSearchView) getChildAt(i2)).messagesDeleted(j, arrayList);
            }
        }
        this.noMediaFiltersSearchView.messagesDeleted(j, arrayList);
        if (this.selectedFiles.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(this.selectedFiles.keySet());
        ArrayList arrayList3 = null;
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            FilteredSearchView.MessageHashId messageHashId = (FilteredSearchView.MessageHashId) arrayList2.get(i3);
            MessageObject messageObject = this.selectedFiles.get(messageHashId);
            if (messageObject != null) {
                long dialogId = messageObject.getDialogId();
                if (dialogId < 0) {
                    int i4 = (int) (-dialogId);
                    if (!ChatObject.isChannel(i4, this.currentAccount)) {
                        i4 = 0;
                    }
                    if (i4 == j) {
                        for (int i5 = 0; i5 < arrayList.size(); i5++) {
                            if (messageObject.getId() == arrayList.get(i5).intValue()) {
                                arrayList3 = new ArrayList();
                                arrayList3.add(messageHashId);
                            }
                        }
                    }
                }
            }
        }
        if (arrayList3 != null) {
            int size2 = arrayList3.size();
            for (int i6 = 0; i6 < size2; i6++) {
                this.selectedFiles.remove(arrayList3.get(i6));
            }
            this.selectedMessagesCountTextView.setNumber(this.selectedFiles.size(), true);
            ActionBarMenuItem actionBarMenuItem = this.gotoItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(this.selectedFiles.size() != 1 ? 8 : 0);
            }
        }
    }

    public void runResultsEnterAnimation() {
        RecyclerItemsEnterAnimator recyclerItemsEnterAnimator = this.itemsEnterAnimator;
        int i = this.animateFromCount;
        recyclerItemsEnterAnimator.showItemsAnimated(i > 0 ? i + 1 : 0);
        this.animateFromCount = this.dialogsSearchAdapter.getItemCount();
    }

    public ViewPagerFixed.TabsView getTabsView() {
        return this.tabsView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.channelRecommendationsLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.dialogDeleted);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.dialogsNeedReload);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.reloadWebappsHints);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesListUpdated);
        this.attached = true;
        DialogsChannelsAdapter dialogsChannelsAdapter = this.channelsSearchAdapter;
        if (dialogsChannelsAdapter != null) {
            dialogsChannelsAdapter.update(false);
        }
        DialogsBotsAdapter dialogsBotsAdapter = this.botsSearchAdapter;
        if (dialogsBotsAdapter != null) {
            dialogsBotsAdapter.update(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.channelRecommendationsLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.dialogDeleted);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.dialogsNeedReload);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.reloadWebappsHints);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesListUpdated);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.channelRecommendationsLoaded) {
            this.channelsEmptyView.showProgress(MessagesController.getInstance(this.currentAccount).getChannelRecommendations(0L) != null, true);
            this.channelsSearchAdapter.updateMyChannels();
            this.channelsSearchAdapter.update(true);
            return;
        }
        if (i == NotificationCenter.dialogDeleted || i == NotificationCenter.dialogsNeedReload) {
            this.channelsSearchAdapter.updateMyChannels();
            this.channelsSearchAdapter.update(true);
        } else {
            if (i == NotificationCenter.reloadWebappsHints) {
                this.botsSearchAdapter.update(true);
                return;
            }
            if (i == NotificationCenter.storiesListUpdated) {
                Object obj = objArr[0];
                HashtagsSearchAdapter hashtagsSearchAdapter = this.hashtagSearchAdapter;
                if (obj == hashtagsSearchAdapter.list) {
                    hashtagsSearchAdapter.update(true);
                }
            }
        }
    }

    @Override // org.telegram.ui.Components.ViewPagerFixed
    public void invalidateBlur() {
        this.fragmentView.invalidateBlur();
    }

    public void setBlurredBackgroundDrawableFactory(BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        this.blurredBackgroundDrawableFactory = blurredBackgroundDrawableViewFactory;
    }

    public void cancelEnterAnimation() {
        this.itemsEnterAnimator.cancel();
        this.searchListView.invalidate();
        this.animateFromCount = 0;
    }

    public void showDownloads() {
        setPosition((this.expandedPublicPosts ? 1 : 0) + (UserConfig.getInstance(this.currentAccount).isPremium() ? 0 : -1) + 5);
    }

    public int getPositionForType(int i) {
        for (int i2 = 0; i2 < this.viewPagerAdapter.items.size(); i2++) {
            if (this.viewPagerAdapter.items.get(i2).type == 3 && this.viewPagerAdapter.items.get(i2).filterIndex == i) {
                return i2;
            }
        }
        return -1;
    }

    private RecyclerListView getRecyclerViewFromPage(View view) {
        if (view == null) {
            return null;
        }
        if (view == this.searchContainer) {
            return this.searchListView;
        }
        if (view == this.channelsSearchContainer) {
            return this.channelsSearchListView;
        }
        if (view == this.botsSearchContainer) {
            return this.botsSearchListView;
        }
        if (view == this.hashtagSearchContainer) {
            return this.hashtagSearchListView;
        }
        SearchDownloadsContainer searchDownloadsContainer = this.downloadsContainer;
        if (view == searchDownloadsContainer) {
            return searchDownloadsContainer.recyclerListView;
        }
        PostsSearchContainer postsSearchContainer = this.postsSearchContainer;
        if (view == postsSearchContainer) {
            return postsSearchContainer.listView;
        }
        if (view instanceof FilteredSearchView) {
            return ((FilteredSearchView) view).recyclerListView;
        }
        return null;
    }

    @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
    public void capture(Canvas canvas, RectF rectF) {
        View[] viewPages = getViewPages();
        if (viewPages == null) {
            return;
        }
        for (View view : viewPages) {
            RecyclerListView recyclerViewFromPage = getRecyclerViewFromPage(view);
            if (recyclerViewFromPage != null) {
                Blur3Utils.captureRelativeParent(recyclerViewFromPage, canvas, rectF, recyclerViewFromPage, this);
            }
            if (view == this.searchContainer && this.noMediaFiltersSearchView.getVisibility() == 0) {
                RecyclerListView recyclerListView = this.noMediaFiltersSearchView.recyclerListView;
                Blur3Utils.captureRelativeParent(recyclerListView, canvas, rectF, recyclerListView, this);
            }
        }
    }

    public class ViewPagerAdapter extends ViewPagerFixed.Adapter {
        ArrayList<Item> items = new ArrayList<>();

        public ViewPagerAdapter() {
            updateItems();
        }

        public void updateItems() {
            this.items.clear();
            this.items.add(new Item(0));
            if (SearchViewPager.this.communityId != 0) {
                return;
            }
            if (SearchViewPager.this.expandedPublicPosts) {
                this.items.add(new Item(5));
            }
            this.items.add(new Item(1));
            this.items.add(new Item(4));
            if (UserConfig.getInstance(SearchViewPager.this.currentAccount).isPremium()) {
                this.items.add(new Item(6));
            }
            if (SearchViewPager.this.showOnlyDialogsAdapter) {
                return;
            }
            int i = 3;
            Item item = new Item(i);
            item.filterIndex = 0;
            this.items.add(item);
            int i2 = 2;
            if (SearchViewPager.this.includeDownloads()) {
                this.items.add(new Item(i2));
            }
            Item item2 = new Item(i);
            item2.filterIndex = 1;
            this.items.add(item2);
            Item item3 = new Item(i);
            item3.filterIndex = 2;
            this.items.add(item3);
            Item item4 = new Item(i);
            item4.filterIndex = 3;
            this.items.add(item4);
            Item item5 = new Item(i);
            item5.filterIndex = 4;
            this.items.add(item5);
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public CharSequence getItemTitle(int i) {
            if (this.items.get(i).type == 0) {
                return LocaleController.getString(C2573R.string.SearchAllChatsShort);
            }
            if (this.items.get(i).type == 1) {
                return LocaleController.getString(C2573R.string.ChannelsTab);
            }
            if (this.items.get(i).type == 4) {
                return LocaleController.getString(C2573R.string.AppsTab);
            }
            if (this.items.get(i).type == 6) {
                if (SearchViewPager.this.postsAreNew) {
                    return PremiumPreviewFragment.applyNewSpan(LocaleController.getString(C2573R.string.SearchPosts));
                }
                return LocaleController.getString(C2573R.string.SearchPosts);
            }
            if (this.items.get(i).type == 2) {
                return LocaleController.getString(C2573R.string.DownloadsTabs);
            }
            if (this.items.get(i).type == 5) {
                return LocaleController.getString(C2573R.string.PublicPostsTabs);
            }
            return FiltersView.filters[this.items.get(i).filterIndex].getTitle();
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public int getItemCount() {
            return this.items.size();
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public View createView(int i) {
            if (i == 1) {
                return SearchViewPager.this.searchContainer;
            }
            if (i == 3) {
                return SearchViewPager.this.channelsSearchContainer;
            }
            if (i == 4) {
                return SearchViewPager.this.botsSearchContainer;
            }
            if (i == 5) {
                return SearchViewPager.this.hashtagSearchContainer;
            }
            if (i == 2) {
                SearchViewPager searchViewPager = SearchViewPager.this;
                SearchViewPager searchViewPager2 = SearchViewPager.this;
                searchViewPager.downloadsContainer = new SearchDownloadsContainer(searchViewPager2.parent, searchViewPager2.currentAccount);
                SearchViewPager.this.downloadsContainer.setPagesPaddings(SearchViewPager.this.pagesPaddingTop, SearchViewPager.this.pagesPaddingBottom);
                SearchViewPager.this.downloadsContainer.recyclerListView.setClipToPadding(false);
                SearchViewPager.this.downloadsContainer.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.ViewPagerAdapter.1
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                        super.onScrolled(recyclerView, i2, i3);
                        SearchViewPager.this.onPageScrolled(i2, i3);
                    }
                });
                SearchViewPager.this.downloadsContainer.recyclerListView.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(SearchViewPager.this));
                SearchViewPager.this.downloadsContainer.setUiCallback(SearchViewPager.this);
                return SearchViewPager.this.downloadsContainer;
            }
            if (i == 6) {
                return SearchViewPager.this.postsSearchContainer;
            }
            FilteredSearchView filteredSearchView = new FilteredSearchView(SearchViewPager.this.parent);
            filteredSearchView.setChatPreviewDelegate(SearchViewPager.this.chatPreviewDelegate);
            filteredSearchView.setUiCallback(SearchViewPager.this);
            filteredSearchView.setPagesPaddings(SearchViewPager.this.pagesPaddingTop, SearchViewPager.this.pagesPaddingBottom);
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = SearchViewPager.this.blurredBackgroundDrawableFactory;
            if (blurredBackgroundDrawableViewFactory != null) {
                filteredSearchView.setBlurredBackgroundDrawableFactory(blurredBackgroundDrawableViewFactory);
            }
            filteredSearchView.recyclerListView.setClipToPadding(false);
            filteredSearchView.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SearchViewPager.ViewPagerAdapter.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    super.onScrolled(recyclerView, i2, i3);
                    SearchViewPager.this.onPageScrolled(i2, i3);
                }
            });
            filteredSearchView.recyclerListView.addEdgeEffectListener(new SearchViewPager$$ExternalSyntheticLambda0(SearchViewPager.this));
            return filteredSearchView;
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public int getItemViewType(int i) {
            if (this.items.get(i).type == 0) {
                return 1;
            }
            if (this.items.get(i).type == 1) {
                return 3;
            }
            if (this.items.get(i).type == 4) {
                return 4;
            }
            if (this.items.get(i).type == 2) {
                return 2;
            }
            if (this.items.get(i).type == 5) {
                return 5;
            }
            if (this.items.get(i).type == 6) {
                return 6;
            }
            return i + 10;
        }

        @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
        public void bindView(View view, int i, int i2) {
            SearchViewPager searchViewPager = SearchViewPager.this;
            searchViewPager.search(view, i, searchViewPager.lastSearchString, true);
        }

        public class Item {
            int filterIndex;
            private final int type;

            private Item(int i) {
                this.type = i;
            }
        }
    }

    public void onShown() {
        DialogsSearchAdapter dialogsSearchAdapter = this.dialogsSearchAdapter;
        if (dialogsSearchAdapter != null) {
            dialogsSearchAdapter.resetFilter();
        }
    }
}
