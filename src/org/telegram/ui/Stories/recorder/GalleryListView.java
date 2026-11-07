package org.telegram.ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.Pair;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.rop.code.RegisterSpec;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.recyclerview.LinearSmoothScrollerCustom;

/* JADX INFO: loaded from: classes7.dex */
public abstract class GalleryListView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final MediaController.AlbumEntry draftsAlbum = new MediaController.AlbumEntry(-1, null, null);
    private final float ASPECT_RATIO;
    public final ActionBar actionBar;
    public boolean actionBarShown;
    private final AnimatedFloat actionBarT;
    public final Adapter adapter;
    private final Paint backgroundPaint;
    private final ButtonWithCounterView button1View;
    private final ButtonWithCounterView button2View;
    private final LinearLayout buttonsLayout;
    private boolean buttonsLayoutVisible;
    public final boolean collaging;
    private boolean containsDraftFolder;
    private boolean containsDrafts;
    private final int currentAccount;
    private final ArrayList<StoryEntry> drafts;
    private final TextView dropDown;
    private ArrayList<MediaController.AlbumEntry> dropDownAlbums;
    private final ActionBarMenuItem dropDownContainer;
    private final Drawable dropDownDrawable;
    public boolean firstLayout;
    private HeaderView headerView;
    public boolean ignoreScroll;
    private final KeyboardNotifier keyboardNotifier;
    public final GridLayoutManager layoutManager;
    public final RecyclerListView listView;
    private int maxCount;
    private boolean multipleOnClick;
    private Runnable onBackClickListener;
    private Utilities.Callback2<Object, Bitmap> onSelectListener;
    private Utilities.Callback3<Boolean, ArrayList<MediaController.PhotoEntry>, ArrayList<Bitmap>> onSelectMultipleListener;
    public final boolean onlyCollaging;
    public final boolean onlyPhotos;
    public ArrayList<MediaController.PhotoEntry> photos;
    private final Theme.ResourcesProvider resourcesProvider;
    private final SearchAdapter searchAdapterImages;
    private final FrameLayout searchContainer;
    private final StickerEmptyView searchEmptyView;
    private final ActionBarMenuItem searchItem;
    private final GridLayoutManager searchLayoutManager;
    private final RecyclerListView searchListView;
    private final ImageView selectButton;
    public MediaController.AlbumEntry selectedAlbum;
    public final ArrayList<MediaController.PhotoEntry> selectedPhotos;
    private int shiftDp;

    public void firstLayout() {
    }

    public void onFullScreen(boolean z) {
    }

    public void onScroll() {
    }

    public GalleryListView(int i, Context context, Theme.ResourcesProvider resourcesProvider, MediaController.AlbumEntry albumEntry, boolean z, float f, boolean z2, boolean z3) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.shiftDp = -2;
        this.actionBarT = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.firstLayout = true;
        ArrayList<StoryEntry> arrayList = new ArrayList<>();
        this.drafts = arrayList;
        this.selectedPhotos = new ArrayList<>();
        this.ASPECT_RATIO = f;
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        this.onlyPhotos = z;
        this.collaging = z2;
        this.onlyCollaging = z3;
        paint.setColor(-14737633);
        paint.setShadowLayer(AndroidUtilities.dp(2.33f), 0.0f, AndroidUtilities.dp(-0.4f), 134217728);
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.1
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (GalleryListView.this.ignoreScroll) {
                    return false;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (GalleryListView.this.ignoreScroll) {
                    return false;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setItemSelectorColorProvider(new GenericProvider() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                return GalleryListView.m21798$r8$lambda$hAV_pIipD4Pa7H1B5IHRHUEIM((Integer) obj);
            }
        });
        Adapter adapter = new Adapter();
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 3) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.2
            @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
                super.onLayoutChildren(recycler, state);
                GalleryListView galleryListView = GalleryListView.this;
                if (galleryListView.firstLayout) {
                    galleryListView.firstLayout = false;
                    galleryListView.firstLayout();
                }
            }
        };
        this.layoutManager = gridLayoutManager;
        recyclerListView.setLayoutManager(gridLayoutManager);
        recyclerListView.setFastScrollEnabled(1);
        recyclerListView.setFastScrollVisible(true);
        recyclerListView.getFastScroll().setAlpha(0.0f);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.3
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                return (i2 == 0 || i2 == 1 || i2 == GalleryListView.this.adapter.getItemCount() - 1) ? 3 : 1;
            }
        });
        recyclerListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.4
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int iDp = AndroidUtilities.dp(5.0f);
                rect.right = iDp;
                rect.bottom = iDp;
            }
        });
        recyclerListView.setClipToPadding(false);
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1, 119));
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$1(view, i2);
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i2) {
                return this.f$0.lambda$new$2(view, i2);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                GalleryListView.this.onScroll();
                GalleryListView.this.invalidate();
            }
        });
        ActionBar actionBar = new ActionBar(context, resourcesProvider);
        this.actionBar = actionBar;
        actionBar.setBackgroundColor(-14737633);
        actionBar.setTitleColor(-1);
        actionBar.setAlpha(0.0f);
        actionBar.setVisibility(8);
        actionBar.setBackButtonImage(C2807R.drawable.ic_ab_back);
        actionBar.setItemsBackgroundColor(436207615, false);
        actionBar.setItemsColor(-1, false);
        actionBar.setItemsColor(-1, true);
        addView(actionBar, LayoutHelper.createFrame(-1, -2, 55));
        actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.6
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (GalleryListView.this.onBackClickListener != null) {
                        GalleryListView.this.onBackClickListener.run();
                    }
                } else if (i2 >= 10) {
                    GalleryListView galleryListView = GalleryListView.this;
                    galleryListView.selectAlbum((MediaController.AlbumEntry) galleryListView.dropDownAlbums.get(i2 - 10), false);
                }
            }
        });
        ActionBarMenu actionBarMenuCreateMenu = actionBar.createMenu();
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, actionBarMenuCreateMenu, 0, 0, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.7
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem, android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(GalleryListView.this.dropDown.getText());
            }
        };
        this.dropDownContainer = actionBarMenuItem;
        actionBarMenuItem.setSubMenuOpenSide(1);
        actionBar.addView(actionBarMenuItem, 0, LayoutHelper.createFrame(-2, -1.0f, 51, AndroidUtilities.isTablet() ? 64.0f : 56.0f, 0.0f, 40.0f, 0.0f));
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        TextView textView = new TextView(context);
        this.dropDown = textView;
        textView.setImportantForAccessibility(2);
        textView.setGravity(3);
        textView.setSingleLine(true);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(-1);
        textView.setTypeface(AndroidUtilities.bold());
        Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.ic_arrow_drop_down).mutate();
        this.dropDownDrawable = drawableMutate;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        textView.setCompoundDrawablePadding(AndroidUtilities.dp(4.0f));
        textView.setPadding(0, AndroidUtilities.statusBarHeight, AndroidUtilities.dp(10.0f), 0);
        actionBarMenuItem.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 16, 16.0f, 0.0f, 0.0f, 0.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchContainer = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setAlpha(0.0f);
        addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
        RecyclerListView recyclerListView2 = new RecyclerListView(context, resourcesProvider);
        this.searchListView = recyclerListView2;
        GridLayoutManager gridLayoutManager2 = new GridLayoutManager(context, 3);
        this.searchLayoutManager = gridLayoutManager2;
        recyclerListView2.setLayoutManager(gridLayoutManager2);
        SearchAdapter searchAdapter = new SearchAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.8
            @Override // org.telegram.ui.Stories.recorder.GalleryListView.SearchAdapter
            public void onLoadingUpdate(boolean z4) {
                if (GalleryListView.this.searchItem != null) {
                    GalleryListView.this.searchItem.setShowSearchProgress(z4);
                }
                GalleryListView.this.searchEmptyView.showProgress(z4, true);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                boolean zIsEmpty = TextUtils.isEmpty(this.query);
                GalleryListView galleryListView = GalleryListView.this;
                if (zIsEmpty) {
                    galleryListView.searchEmptyView.setStickerType(11);
                    GalleryListView.this.searchEmptyView.title.setText(LocaleController.getString(C2807R.string.SearchImagesType));
                } else {
                    galleryListView.searchEmptyView.setStickerType(1);
                    GalleryListView.this.searchEmptyView.title.setText(LocaleController.formatString(C2807R.string.NoResultFoundFor, this.query));
                }
            }
        };
        this.searchAdapterImages = searchAdapter;
        recyclerListView2.setAdapter(searchAdapter);
        recyclerListView2.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                if (!GalleryListView.this.searchListView.scrollingByUser || GalleryListView.this.searchItem == null || GalleryListView.this.searchItem.getSearchField() == null) {
                    return;
                }
                AndroidUtilities.hideKeyboard(GalleryListView.this.searchItem.getSearchContainer());
            }
        });
        recyclerListView2.setClipToPadding(true);
        recyclerListView2.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.10
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int iDp = AndroidUtilities.dp(4.0f);
                rect.top = 0;
                rect.bottom = iDp;
                rect.right = iDp;
                rect.left = iDp;
                if (recyclerView.getChildAdapterPosition(view) % 3 != 2) {
                    rect.right = 0;
                }
            }
        });
        frameLayout.addView(recyclerListView2, LayoutHelper.createFrame(-1, -1, 119));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.11
            @Override // org.telegram.ui.Components.FlickerLoadingView
            public int getColumnsCount() {
                return 3;
            }
        };
        float f2 = 10.0f;
        flickerLoadingView.setViewType(2);
        flickerLoadingView.setAlpha(0.0f);
        flickerLoadingView.setVisibility(8);
        frameLayout.addView(flickerLoadingView, LayoutHelper.createFrame(-1, -1, 119));
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, 11, resourcesProvider);
        this.searchEmptyView = stickerEmptyView;
        stickerEmptyView.title.setTextSize(1, 16.0f);
        stickerEmptyView.title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        stickerEmptyView.title.setTypeface(null);
        stickerEmptyView.title.setText(LocaleController.getString(C2807R.string.SearchImagesType));
        this.keyboardNotifier = new KeyboardNotifier(this, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$4((Integer) obj);
            }
        });
        frameLayout.addView(stickerEmptyView, LayoutHelper.createFrame(-1, -1, 119));
        recyclerListView2.setEmptyView(stickerEmptyView);
        ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, C2807R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new AnonymousClass12());
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setVisibility(8);
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2807R.string.SearchImagesTitle));
        recyclerListView2.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$5(view, i2);
            }
        });
        arrayList.clear();
        if (!z) {
            ArrayList<StoryEntry> arrayList2 = MessagesController.getInstance(i).getStoriesController().getDraftsController().drafts;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                StoryEntry storyEntry = arrayList2.get(i2);
                i2++;
                StoryEntry storyEntry2 = storyEntry;
                if (!storyEntry2.isEdit && !storyEntry2.isError) {
                    this.drafts.add(storyEntry2);
                }
            }
        }
        if (z2) {
            this.selectButton = null;
            LinearLayout linearLayout = new LinearLayout(context);
            this.buttonsLayout = linearLayout;
            linearLayout.setOrientation(1);
            linearLayout.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
            linearLayout.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(AndroidUtilities.navigationBarHeight > 0 ? 0.0f : f2) + AndroidUtilities.navigationBarHeight);
            addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 87, 0.0f, 0.0f, 0.0f, 0.0f));
            linearLayout.setAlpha(0.0f);
            linearLayout.setTranslationY(AndroidUtilities.dp(32.0f));
            linearLayout.setVisibility(8);
            ButtonWithCounterView round = new ButtonWithCounterView(context, true, resourcesProvider).setRound();
            this.button1View = round;
            round.setText(LocaleController.formatPluralStringComma("StoriesCreate", 1), false);
            if (!z3) {
                linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 0.0f, 0.0f, 0.0f, 8.0f));
                round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$6(view);
                    }
                });
            }
            ButtonWithCounterView round2 = new ButtonWithCounterView(context, z3, resourcesProvider).setRound();
            this.button2View = round2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(RegisterSpec.PREFIX);
            ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_collage);
            coloredImageSpan.translate(-AndroidUtilities.dp(1.33f), AndroidUtilities.dp(0.66f));
            spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 33);
            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) LocaleController.getString(C2807R.string.StoriesCollage));
            round2.setText(spannableStringBuilder, false);
            linearLayout.addView(round2, LayoutHelper.createLinear(-1, 48, 0.0f, 0.0f, 0.0f, 0.0f));
            round2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$7(view);
                }
            });
        } else {
            this.buttonsLayout = null;
            this.button1View = null;
            this.button2View = null;
            ImageView imageView = new ImageView(context);
            this.selectButton = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C2807R.drawable.floating_check);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider), PorterDuff.Mode.SRC_IN));
            imageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(56.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
            ScaleStateListAnimator.apply(imageView, 0.1f, 1.5f);
            addView(imageView, LayoutHelper.createFrame(-2, -2.0f, 85, 0.0f, 0.0f, 14.0f, 14.0f));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$8(view);
                }
            });
            imageView.setAlpha(0.0f);
            imageView.setScaleX(0.7f);
            imageView.setScaleY(0.7f);
        }
        updateAlbumsDropDown();
        if (albumEntry != null && (albumEntry != draftsAlbum || this.drafts.size() > 0)) {
            this.selectedAlbum = albumEntry;
        } else {
            ArrayList<MediaController.AlbumEntry> arrayList3 = this.dropDownAlbums;
            if (arrayList3 == null || arrayList3.isEmpty()) {
                this.selectedAlbum = MediaController.allMediaAlbumEntry;
            } else {
                this.selectedAlbum = this.dropDownAlbums.get(0);
            }
        }
        this.photos = getPhotoEntries(this.selectedAlbum);
        updateContainsDrafts();
        MediaController.AlbumEntry albumEntry2 = this.selectedAlbum;
        if (albumEntry2 == MediaController.allMediaAlbumEntry) {
            this.dropDown.setText(LocaleController.getString(C2807R.string.ChatGallery));
            return;
        }
        MediaController.AlbumEntry albumEntry3 = draftsAlbum;
        TextView textView2 = this.dropDown;
        if (albumEntry2 == albumEntry3) {
            textView2.setText(LocaleController.getString(C2807R.string.StoryDraftsAlbum));
        } else {
            textView2.setText(albumEntry2.bucketName);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$hAV_pIipD4P-a7H1B-5IHRHUEIM, reason: not valid java name */
    public static /* synthetic */ Integer m21798$r8$lambda$hAV_pIipD4Pa7H1B5IHRHUEIM(Integer num) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        if (i < 2 || this.onSelectListener == null || !(view instanceof Cell)) {
            return;
        }
        Cell cell = (Cell) view;
        int size = i - 2;
        if (this.containsDraftFolder) {
            if (size == 0) {
                selectAlbum(draftsAlbum, true);
                return;
            }
            size = i - 3;
        } else if (this.containsDrafts) {
            if (size >= 0 && size < this.drafts.size()) {
                StoryEntry storyEntry = this.drafts.get(size);
                this.onSelectListener.run(storyEntry, storyEntry.isVideo ? prepareBlurredThumb(cell) : null);
                return;
            }
            size -= this.drafts.size();
        }
        if (size < 0 || size >= this.photos.size()) {
            return;
        }
        MediaController.PhotoEntry photoEntry = this.photos.get(size);
        if (isMultiple()) {
            boolean zContains = this.selectedPhotos.contains(photoEntry);
            ArrayList<MediaController.PhotoEntry> arrayList = this.selectedPhotos;
            if (zContains) {
                arrayList.remove(photoEntry);
            } else {
                if (arrayList.size() + 1 > this.maxCount) {
                    int i2 = -this.shiftDp;
                    this.shiftDp = i2;
                    AndroidUtilities.shakeViewSpring(cell, i2);
                    BotWebViewVibrationEffect.APP_ERROR.vibrate();
                    return;
                }
                this.selectedPhotos.add(photoEntry);
            }
            AndroidUtilities.updateVisibleRows(this.listView);
            updateSelectButtonVisible();
            return;
        }
        Utilities.Callback2<Object, Bitmap> callback2 = this.onSelectListener;
        if (photoEntry.isVideo && !photoEntry.isLivePhoto()) {
            bitmapPrepareBlurredThumb = prepareBlurredThumb(cell);
        }
        callback2.run(photoEntry, bitmapPrepareBlurredThumb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(View view, int i) {
        if (i >= 2 && this.onSelectListener != null && (view instanceof Cell)) {
            int size = i - 2;
            if (this.containsDraftFolder) {
                if (size == 0) {
                    return false;
                }
                size = i - 3;
            } else if (this.containsDrafts) {
                if (size >= 0 && size < this.drafts.size()) {
                    return false;
                }
                size -= this.drafts.size();
            }
            if (size >= 0 && size < this.photos.size()) {
                MediaController.PhotoEntry photoEntry = this.photos.get(size);
                if (this.selectedPhotos.isEmpty() && !this.multipleOnClick) {
                    boolean zContains = this.selectedPhotos.contains(photoEntry);
                    ArrayList<MediaController.PhotoEntry> arrayList = this.selectedPhotos;
                    if (zContains) {
                        arrayList.remove(photoEntry);
                    } else {
                        if (arrayList.size() + 1 > this.maxCount) {
                            int i2 = -this.shiftDp;
                            this.shiftDp = i2;
                            AndroidUtilities.shakeViewSpring(view, i2);
                            BotWebViewVibrationEffect.APP_ERROR.vibrate();
                            return true;
                        }
                        this.selectedPhotos.add(photoEntry);
                    }
                    AndroidUtilities.updateVisibleRows(this.listView);
                    updateSelectButtonVisible();
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        this.dropDownContainer.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(Integer num) {
        this.searchEmptyView.animate().translationY(((-num.intValue()) / 2.0f) + AndroidUtilities.dp(80.0f)).setDuration(250L).setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator).start();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.GalleryListView$12, reason: invalid class name */
    public class AnonymousClass12 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        private AnimatorSet animatorSet;

        public AnonymousClass12() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            GalleryListView.this.dropDownContainer.setVisibility(0);
            ActionBarMenuItem actionBarMenuItem = GalleryListView.this.dropDownContainer;
            Property property = View.SCALE_X;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem, (Property<ActionBarMenuItem, Float>) property, 1.0f));
            ActionBarMenuItem actionBarMenuItem2 = GalleryListView.this.dropDownContainer;
            Property property2 = View.SCALE_Y;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem2, (Property<ActionBarMenuItem, Float>) property2, 1.0f));
            ActionBarMenuItem actionBarMenuItem3 = GalleryListView.this.dropDownContainer;
            Property property3 = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, (Property<ActionBarMenuItem, Float>) property3, 1.0f));
            final EditTextBoldCursor searchField = GalleryListView.this.searchItem.getSearchField();
            if (searchField != null) {
                arrayList.add(ObjectAnimator.ofFloat(searchField, (Property<EditTextBoldCursor, Float>) property, 0.8f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, (Property<EditTextBoldCursor, Float>) property2, 0.8f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, (Property<EditTextBoldCursor, Float>) property3, 0.0f));
            }
            GalleryListView.this.listView.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.listView, (Property<RecyclerListView, Float>) property3, 1.0f));
            GalleryListView.this.listView.setFastScrollVisible(true);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.searchContainer, (Property<FrameLayout, Float>) property3, 0.0f));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$12$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onSearchCollapse$0(valueAnimator);
                }
            });
            arrayList.add(valueAnimatorOfFloat);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.setDuration(320L);
            this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.animatorSet.playTogether(arrayList);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.12.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    View view = searchField;
                    if (view != null) {
                        view.setVisibility(4);
                    }
                    GalleryListView.this.searchContainer.setVisibility(8);
                }
            });
            this.animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSearchCollapse$0(ValueAnimator valueAnimator) {
            GalleryListView.this.invalidate();
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            ArrayList arrayList = new ArrayList();
            ActionBarMenuItem actionBarMenuItem = GalleryListView.this.dropDownContainer;
            Property property = View.SCALE_X;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem, (Property<ActionBarMenuItem, Float>) property, 0.8f));
            ActionBarMenuItem actionBarMenuItem2 = GalleryListView.this.dropDownContainer;
            Property property2 = View.SCALE_Y;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem2, (Property<ActionBarMenuItem, Float>) property2, 0.8f));
            ActionBarMenuItem actionBarMenuItem3 = GalleryListView.this.dropDownContainer;
            Property property3 = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem3, (Property<ActionBarMenuItem, Float>) property3, 0.0f));
            EditTextBoldCursor searchField = GalleryListView.this.searchItem.getSearchField();
            if (searchField != null) {
                searchField.setVisibility(0);
                searchField.setHandlesColor(-1);
                arrayList.add(ObjectAnimator.ofFloat(searchField, (Property<EditTextBoldCursor, Float>) property, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, (Property<EditTextBoldCursor, Float>) property2, 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(searchField, (Property<EditTextBoldCursor, Float>) property3, 1.0f));
            }
            GalleryListView.this.searchContainer.setVisibility(0);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.listView, (Property<RecyclerListView, Float>) property3, 0.0f));
            GalleryListView.this.listView.setFastScrollVisible(false);
            arrayList.add(ObjectAnimator.ofFloat(GalleryListView.this.searchContainer, (Property<FrameLayout, Float>) property3, 1.0f));
            GalleryListView.this.searchEmptyView.setVisibility(0);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$12$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$onSearchExpand$1(valueAnimator);
                }
            });
            arrayList.add(valueAnimatorOfFloat);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.setDuration(320L);
            this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.animatorSet.playTogether(arrayList);
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.12.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    GalleryListView.this.dropDownContainer.setVisibility(8);
                    GalleryListView.this.listView.setVisibility(8);
                }
            });
            this.animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSearchExpand$1(ValueAnimator valueAnimator) {
            GalleryListView.this.invalidate();
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            GalleryListView.this.searchAdapterImages.load(editText.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view, int i) {
        Utilities.Callback2<Object, Bitmap> callback2;
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            AndroidUtilities.hideKeyboard(actionBarMenuItem.getSearchContainer());
        }
        if (i < 0 || i >= this.searchAdapterImages.results.size() || (callback2 = this.onSelectListener) == null) {
            return;
        }
        callback2.run(this.searchAdapterImages.results.get(i), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        if (this.buttonsLayout.getAlpha() < 0.25f) {
            return;
        }
        selectMultiple(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view) {
        if (this.buttonsLayout.getAlpha() < 0.25f) {
            return;
        }
        selectMultiple(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(View view) {
        selectMultiple(false);
    }

    public void setMultipleOnClick(boolean z) {
        if (this.multipleOnClick != z) {
            this.multipleOnClick = z;
            AndroidUtilities.updateVisibleRows(this.listView);
        }
    }

    public void setMaxCount(int i) {
        this.maxCount = i;
    }

    public boolean isMultiple() {
        return !this.selectedPhotos.isEmpty() || this.multipleOnClick;
    }

    public void allowSearch(boolean z) {
        this.searchItem.setVisibility(z ? 0 : 8);
    }

    private ArrayList<MediaController.PhotoEntry> getPhotoEntries(MediaController.AlbumEntry albumEntry) {
        if (albumEntry == null) {
            return new ArrayList<>();
        }
        ArrayList<MediaController.PhotoEntry> arrayList = new ArrayList<>();
        for (int i = 0; i < albumEntry.photos.size(); i++) {
            MediaController.PhotoEntry photoEntry = albumEntry.photos.get(i);
            if (!this.onlyPhotos || !photoEntry.isVideo) {
                arrayList.add(photoEntry);
            }
        }
        return arrayList;
    }

    public boolean onBackPressed() {
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem == null || !actionBarMenuItem.isSearchFieldVisible()) {
            return false;
        }
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        if (this.keyboardNotifier.keyboardVisible()) {
            AndroidUtilities.hideKeyboard(searchField);
            return true;
        }
        this.actionBar.onSearchFieldVisibilityChanged(this.searchItem.toggleSearch(true));
        return true;
    }

    private void selectMultiple(boolean z) {
        if (this.onSelectMultipleListener == null || this.selectedPhotos.isEmpty()) {
            return;
        }
        int i = 0;
        if (this.selectedPhotos.size() == 1) {
            this.onSelectListener.run(this.selectedPhotos.get(0), null);
            return;
        }
        ArrayList<Bitmap> arrayList = new ArrayList<>();
        ArrayList<MediaController.PhotoEntry> arrayList2 = this.selectedPhotos;
        int size = arrayList2.size();
        while (i < size) {
            MediaController.PhotoEntry photoEntry = arrayList2.get(i);
            i++;
            MediaController.PhotoEntry photoEntry2 = photoEntry;
            arrayList.add((!photoEntry2.isVideo || photoEntry2.isLivePhoto()) ? null : prepareBlurredThumb(findCell(photoEntry2)));
        }
        this.onSelectMultipleListener.run(Boolean.valueOf(z), new ArrayList<>(this.selectedPhotos), arrayList);
        this.selectedPhotos.clear();
        AndroidUtilities.updateVisibleRows(this.listView);
        updateSelectButtonVisible();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float pVar = top();
        boolean z = pVar <= ((float) Math.max(0, (AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(32.0f)));
        float f = this.actionBarT.set(z);
        float fLerp = AndroidUtilities.lerp(pVar, 0.0f, f);
        if (z != this.actionBarShown) {
            this.actionBarShown = z;
            onFullScreen(z);
            this.listView.getFastScroll().animate().alpha(this.actionBarShown ? 1.0f : 0.0f).start();
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setAlpha(f);
            int i = f <= 0.0f ? 8 : 0;
            if (this.actionBar.getVisibility() != i) {
                this.actionBar.setVisibility(i);
            }
        }
        HeaderView headerView = this.headerView;
        if (headerView != null) {
            headerView.setAlpha(1.0f - f);
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(0.0f, fLerp, getWidth(), getHeight() + AndroidUtilities.dp(14.0f));
        canvas.drawRoundRect(rectF, AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), this.backgroundPaint);
        canvas.save();
        canvas.clipRect(0.0f, fLerp, getWidth(), getHeight());
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public MediaController.AlbumEntry getSelectedAlbum() {
        return this.selectedAlbum;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a2  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int iDp;
        float f;
        this.listView.setPinnedSectionOffsetY(AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight());
        RecyclerListView recyclerListView = this.listView;
        int iDp2 = AndroidUtilities.dp(6.0f);
        int currentActionBarHeight = AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight();
        int iDp3 = AndroidUtilities.dp(1.0f);
        if (this.buttonsLayout == null) {
            iDp = 0;
        } else {
            iDp = AndroidUtilities.dp((AndroidUtilities.navigationBarHeight > 0 ? 0 : 10) + 114);
        }
        recyclerListView.setPadding(iDp2, currentActionBarHeight, iDp3, iDp + AndroidUtilities.navigationBarHeight);
        ImageView imageView = this.selectButton;
        if (imageView != null) {
            imageView.setTranslationY(-AndroidUtilities.navigationBarHeight);
        }
        LinearLayout linearLayout = this.buttonsLayout;
        if (linearLayout != null) {
            linearLayout.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(AndroidUtilities.navigationBarHeight > 0 ? 0.0f : 10.0f) + AndroidUtilities.navigationBarHeight);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.searchContainer.getLayoutParams();
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight();
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = AndroidUtilities.navigationBarHeight;
        this.dropDown.setPadding(0, AndroidUtilities.statusBarHeight, AndroidUtilities.dp(10.0f), 0);
        TextView textView = this.dropDown;
        if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            f = point.x > point.y ? 18.0f : 20.0f;
        }
        textView.setTextSize(f);
        super.onMeasure(i, i2);
    }

    public void updateSelectButtonVisible() {
        boolean zIsEmpty = this.selectedPhotos.isEmpty();
        final boolean z = !zIsEmpty;
        ImageView imageView = this.selectButton;
        if (imageView != null) {
            imageView.animate().alpha(!zIsEmpty ? 1.0f : 0.0f).scaleX(!zIsEmpty ? 1.0f : 0.7f).scaleY(zIsEmpty ? 0.7f : 1.0f).translationY(!zIsEmpty ? -AndroidUtilities.navigationBarHeight : AndroidUtilities.dp(8.0f)).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
        }
        if (this.buttonsLayout != null) {
            ButtonWithCounterView buttonWithCounterView = this.button1View;
            if (buttonWithCounterView != null) {
                buttonWithCounterView.setText(LocaleController.formatPluralStringComma("StoriesCreate", Math.max(1, this.selectedPhotos.size())), true);
            }
            this.buttonsLayout.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(AndroidUtilities.navigationBarHeight > 0 ? 0.0f : 10.0f) + AndroidUtilities.navigationBarHeight);
            if (this.buttonsLayoutVisible != z) {
                this.buttonsLayoutVisible = z;
                this.buttonsLayout.setVisibility(0);
                this.buttonsLayout.animate().alpha(zIsEmpty ? 0.0f : 1.0f).translationY(zIsEmpty ? AndroidUtilities.dp(32.0f) : 0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.GalleryListView.13
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        GalleryListView.this.buttonsLayout.setVisibility(8);
                    }
                }).start();
            }
        }
    }

    private Cell findCell(MediaController.PhotoEntry photoEntry) {
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof Cell) {
                Cell cell = (Cell) childAt;
                if (cell.currentObject == photoEntry) {
                    return cell;
                }
            }
        }
        return null;
    }

    private Bitmap prepareBlurredThumb(Cell cell) {
        Bitmap bitmap;
        if (cell == null || (bitmap = cell.bitmap) == null || bitmap.isRecycled()) {
            return null;
        }
        return Utilities.stackBlurBitmapWithScaleFactor(bitmap, 6.0f);
    }

    public void setOnBackClickListener(Runnable runnable) {
        this.onBackClickListener = runnable;
    }

    public void setOnSelectListener(Utilities.Callback2<Object, Bitmap> callback2) {
        this.onSelectListener = callback2;
    }

    public void setOnSelectMultipleListener(Utilities.Callback3<Boolean, ArrayList<MediaController.PhotoEntry>, ArrayList<Bitmap>> callback3) {
        this.onSelectMultipleListener = callback3;
    }

    private void updateAlbumsDropDown() {
        AlbumButton albumButton;
        this.dropDownContainer.removeAllSubItems();
        final ArrayList<MediaController.AlbumEntry> arrayList = MediaController.allMediaAlbums;
        ArrayList<MediaController.AlbumEntry> arrayList2 = new ArrayList<>(arrayList);
        this.dropDownAlbums = arrayList2;
        Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda9
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return GalleryListView.$r8$lambda$loNHKpXmiTQFIt6B9vuy9b9fjLQ(arrayList, (MediaController.AlbumEntry) obj, (MediaController.AlbumEntry) obj2);
            }
        });
        if (!this.drafts.isEmpty()) {
            ArrayList<MediaController.AlbumEntry> arrayList3 = this.dropDownAlbums;
            arrayList3.add(!arrayList3.isEmpty() ? 1 : 0, draftsAlbum);
        }
        boolean zIsEmpty = this.dropDownAlbums.isEmpty();
        TextView textView = this.dropDown;
        if (zIsEmpty) {
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.dropDownDrawable, (Drawable) null);
        int size = this.dropDownAlbums.size();
        for (int i = 0; i < size; i++) {
            final MediaController.AlbumEntry albumEntry = this.dropDownAlbums.get(i);
            if (albumEntry == draftsAlbum) {
                albumButton = new AlbumButton(getContext(), albumEntry.coverPhoto, LocaleController.getString("StoryDraftsAlbum"), this.drafts.size(), this.resourcesProvider);
            } else {
                ArrayList<MediaController.PhotoEntry> photoEntries = getPhotoEntries(albumEntry);
                if (!photoEntries.isEmpty()) {
                    albumButton = new AlbumButton(getContext(), albumEntry.coverPhoto, albumEntry.bucketName, photoEntries.size(), this.resourcesProvider);
                }
            }
            this.dropDownContainer.getPopupLayout().addView(albumButton);
            albumButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateAlbumsDropDown$10(albumEntry, view);
                }
            });
        }
    }

    public static /* synthetic */ int $r8$lambda$loNHKpXmiTQFIt6B9vuy9b9fjLQ(ArrayList arrayList, MediaController.AlbumEntry albumEntry, MediaController.AlbumEntry albumEntry2) {
        int iIndexOf;
        int iIndexOf2;
        int i = albumEntry.bucketId;
        if (i == 0 && albumEntry2.bucketId != 0) {
            return -1;
        }
        if ((i == 0 || albumEntry2.bucketId != 0) && (iIndexOf = arrayList.indexOf(albumEntry)) <= (iIndexOf2 = arrayList.indexOf(albumEntry2))) {
            return iIndexOf < iIndexOf2 ? -1 : 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAlbumsDropDown$10(MediaController.AlbumEntry albumEntry, View view) {
        selectAlbum(albumEntry, false);
        this.dropDownContainer.closeSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectAlbum(MediaController.AlbumEntry albumEntry, boolean z) {
        this.selectedAlbum = albumEntry;
        this.photos = getPhotoEntries(albumEntry);
        this.selectedPhotos.clear();
        updateContainsDrafts();
        MediaController.AlbumEntry albumEntry2 = this.selectedAlbum;
        if (albumEntry2 == MediaController.allMediaAlbumEntry) {
            this.dropDown.setText(LocaleController.getString(C2807R.string.ChatGallery));
        } else {
            MediaController.AlbumEntry albumEntry3 = draftsAlbum;
            TextView textView = this.dropDown;
            if (albumEntry2 == albumEntry3) {
                textView.setText(LocaleController.getString(C2807R.string.StoryDraftsAlbum));
            } else {
                textView.setText(albumEntry2.bucketName);
            }
        }
        this.adapter.notifyDataSetChanged();
        if (z) {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(getContext(), 2);
            linearSmoothScrollerCustom.setTargetPosition(1);
            linearSmoothScrollerCustom.setOffset((-ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.dp(16.0f));
            this.layoutManager.startSmoothScroll(linearSmoothScrollerCustom);
            return;
        }
        this.layoutManager.scrollToPositionWithOffset(1, (-ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.dp(16.0f));
    }

    public static class Cell extends FrameLayout {
        private static int allQueuesIndex;
        public Runnable accessibilityClick;
        public Runnable accessibilityLongClick;
        private CharSequence accessibilityText;
        private final boolean alwaysShowCheckbox;
        private float aspectRatio;
        private final Paint bgPaint;
        private Bitmap bitmap;
        private final Matrix bitmapMatrix;
        private final Paint bitmapPaint;
        public CheckBox2 checkBox;
        public FrameLayout checkBoxContainer;
        private final Path clipPath;
        private String currentKey;
        private Object currentObject;
        private StaticLayout draftLayout;
        private float draftLayoutLeft;
        private float draftLayoutWidth;
        private final TextPaint draftTextPaint;
        private boolean drawDurationPlay;
        private final Paint durationBackgroundPaint;
        private StaticLayout durationLayout;
        private float durationLayoutLeft;
        private float durationLayoutWidth;
        private final Drawable durationPlayDrawable;
        private final TextPaint durationTextPaint;
        private LinearGradient gradient;
        private final Matrix gradientMatrix;
        private final Paint gradientPaint;
        private Runnable loadingBitmap;
        private DispatchQueue myQueue;
        private final Paint paintUnderCheck;
        private final float[] radii;
        private boolean topLeft;
        private boolean topRight;
        private final Runnable unload;
        private static ArrayList<DispatchQueue> allQueues = new ArrayList<>();
        private static final HashMap<String, Integer> bitmapsUseCounts = new HashMap<>();
        private static final LruCache<String, Bitmap> bitmapsCache = new LruCache<String, Bitmap>(45) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.Cell.2
            @Override // android.util.LruCache
            public void entryRemoved(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
                if (bitmap.isRecycled() || Cell.bitmapsUseCounts.containsKey(str)) {
                    return;
                }
                bitmap.recycle();
            }
        };

        public Cell(Context context, Theme.ResourcesProvider resourcesProvider, float f, boolean z) {
            super(context);
            this.bitmapPaint = new Paint(3);
            Paint paint = new Paint(1);
            this.bgPaint = paint;
            this.gradientPaint = new Paint(1);
            this.bitmapMatrix = new Matrix();
            this.gradientMatrix = new Matrix();
            Paint paint2 = new Paint(1);
            this.durationBackgroundPaint = paint2;
            TextPaint textPaint = new TextPaint(1);
            this.durationTextPaint = textPaint;
            TextPaint textPaint2 = new TextPaint(1);
            this.draftTextPaint = textPaint2;
            this.unload = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            };
            this.clipPath = new Path();
            this.radii = new float[8];
            this.paintUnderCheck = new Paint(1);
            this.aspectRatio = f;
            this.alwaysShowCheckbox = z;
            paint.setColor(285212671);
            paint2.setColor(1275068416);
            textPaint.setTypeface(AndroidUtilities.bold());
            textPaint.setTextSize(AndroidUtilities.dpf2(12.66f));
            textPaint.setColor(-1);
            textPaint2.setTextSize(AndroidUtilities.dp(11.33f));
            textPaint2.setColor(-1);
            this.durationPlayDrawable = context.getResources().getDrawable(C2807R.drawable.play_mini_video).mutate();
            CheckBox2 checkBox2 = new CheckBox2(context, 24, resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.Cell.1
                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    Cell.this.invalidate();
                }
            };
            this.checkBox = checkBox2;
            if (!z) {
                checkBox2.setDrawBackgroundAsArc(6);
            } else {
                checkBox2.setDrawBackgroundAsArc(7);
            }
            this.checkBox.setColor(Theme.key_chat_attachCheckBoxBackground, Theme.key_chat_attachPhotoBackground, Theme.key_chat_attachCheckBoxCheck);
            this.checkBox.getCheckBoxBase().setStrokeBackgroundColor(Theme.key_windowBackgroundWhiteBlackText);
            FrameLayout frameLayout = new FrameLayout(context);
            this.checkBoxContainer = frameLayout;
            frameLayout.addView(this.checkBox, LayoutHelper.createFrame(26, 26, 17));
            addView(this.checkBoxContainer, LayoutHelper.createFrame(36, 36.0f, 53, 0.0f, 0.0f, 0.0f, 0.0f));
            this.checkBoxContainer.setVisibility(0);
            this.checkBoxContainer.setImportantForAccessibility(2);
            this.checkBox.setImportantForAccessibility(2);
            setWillNotDraw(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            AndroidUtilities.cancelRunOnUIThread(this.unload);
            Object obj = this.currentObject;
            if (obj != null) {
                loadBitmap(obj);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AndroidUtilities.runOnUIThread(this.unload, 250L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            loadBitmap(null);
        }

        public void set(StoryEntry storyEntry, int i) {
            this.currentObject = storyEntry;
            boolean z = false;
            if (i > 0) {
                setDraft(false);
                setDuration(LocaleController.formatPluralString("StoryDrafts", i, new Object[0]));
                this.drawDurationPlay = false;
                this.accessibilityText = LocaleController.formatPluralString("StoryDrafts", i, new Object[0]);
            } else {
                if (storyEntry != null && storyEntry.isDraft) {
                    z = true;
                }
                setDraft(z);
                setDuration((storyEntry == null || !storyEntry.isVideo) ? null : AndroidUtilities.formatShortDuration((int) Math.max(0.0f, (storyEntry.duration * (storyEntry.right - storyEntry.left)) / 1000.0f)));
                if (storyEntry != null && storyEntry.isVideo) {
                    this.accessibilityText = LocaleController.getString(C2807R.string.StoryDraft) + ", " + LocaleController.formatDuration((int) Math.max(0.0f, (storyEntry.duration * (storyEntry.right - storyEntry.left)) / 1000.0f));
                } else {
                    this.accessibilityText = LocaleController.getString(C2807R.string.StoryDraft);
                }
            }
            loadBitmap(storyEntry);
        }

        public void set(MediaController.PhotoEntry photoEntry) {
            this.currentObject = photoEntry;
            setDuration((photoEntry == null || !photoEntry.isVideo || photoEntry.isLivePhoto()) ? null : AndroidUtilities.formatShortDuration(photoEntry.duration));
            setDraft(false);
            if (photoEntry == null) {
                this.accessibilityText = null;
            } else if (photoEntry.isVideo) {
                this.accessibilityText = LocaleController.getString(C2807R.string.AttachVideo) + ", " + LocaleController.formatDuration(photoEntry.duration);
            } else {
                this.accessibilityText = LocaleController.getString(C2807R.string.AttachPhoto);
            }
            loadBitmap(photoEntry);
            invalidate();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            FrameLayout frameLayout = this.checkBoxContainer;
            if (frameLayout != null && frameLayout.getVisibility() == 0) {
                accessibilityNodeInfo.setClassName("android.widget.CheckBox");
                accessibilityNodeInfo.setCheckable(true);
                CheckBox2 checkBox2 = this.checkBox;
                accessibilityNodeInfo.setChecked(checkBox2 != null && checkBox2.isChecked());
            } else {
                accessibilityNodeInfo.setClassName("android.widget.ImageView");
            }
            accessibilityNodeInfo.setClickable(true);
            accessibilityNodeInfo.setEnabled(true);
            accessibilityNodeInfo.addAction(16);
            if (this.accessibilityLongClick != null) {
                accessibilityNodeInfo.setLongClickable(true);
                accessibilityNodeInfo.addAction(32);
            }
            CharSequence charSequence = this.accessibilityText;
            if (charSequence != null) {
                accessibilityNodeInfo.setContentDescription(charSequence);
            }
        }

        @Override // android.view.View
        public boolean performAccessibilityAction(int i, Bundle bundle) {
            Runnable runnable;
            Runnable runnable2;
            if (i == 16 && (runnable2 = this.accessibilityClick) != null) {
                runnable2.run();
                return true;
            }
            if (i == 32 && (runnable = this.accessibilityLongClick) != null) {
                runnable.run();
                return true;
            }
            return super.performAccessibilityAction(i, bundle);
        }

        public void setCheckbox(final boolean z, int i, boolean z2) {
            if (this.alwaysShowCheckbox) {
                z = true;
            }
            FrameLayout frameLayout = this.checkBoxContainer;
            if (!z2) {
                frameLayout.setVisibility(z ? 0 : 8);
            } else {
                frameLayout.setVisibility(0);
                this.checkBox.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.7f).scaleY(z ? 1.0f : 0.7f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setCheckbox$1(z);
                    }
                }).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(320L).start();
            }
            CheckBox2 checkBox2 = this.checkBox;
            if (i >= 0) {
                checkBox2.setChecked(true, z2);
                this.checkBox.setNum(i);
            } else {
                checkBox2.setChecked(false, z2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setCheckbox$1(boolean z) {
            if (z) {
                return;
            }
            this.checkBoxContainer.setVisibility(8);
        }

        private static Bitmap getBitmap(String str) {
            if (str == null) {
                return null;
            }
            Bitmap bitmap = bitmapsCache.get(str);
            if (bitmap != null) {
                HashMap<String, Integer> map = bitmapsUseCounts;
                Integer num = map.get(str);
                map.put(str, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
            }
            return bitmap;
        }

        private static void releaseBitmap(String str) {
            HashMap<String, Integer> map;
            Integer num;
            if (str == null || (num = (map = bitmapsUseCounts).get(str)) == null) {
                return;
            }
            int iIntValue = num.intValue() - 1;
            Integer numValueOf = Integer.valueOf(iIntValue);
            if (iIntValue <= 0) {
                map.remove(str);
            } else {
                map.put(str, numValueOf);
            }
        }

        private static void putBitmap(String str, Bitmap bitmap) {
            if (str == null || bitmap == null) {
                return;
            }
            bitmapsCache.put(str, bitmap);
            HashMap<String, Integer> map = bitmapsUseCounts;
            Integer num = map.get(str);
            if (num != null) {
                map.put(str, Integer.valueOf(num.intValue() + 1));
            } else {
                map.put(str, 1);
            }
        }

        private static void releaseAllBitmaps() {
            bitmapsUseCounts.clear();
            bitmapsCache.evictAll();
        }

        public static void cleanupQueues() {
            releaseAllBitmaps();
            for (int i = 0; i < allQueues.size(); i++) {
                allQueues.get(i).cleanupQueue();
                allQueues.get(i).recycle();
            }
            allQueues.clear();
        }

        private DispatchQueue getQueue() {
            DispatchQueue dispatchQueue = this.myQueue;
            if (dispatchQueue != null) {
                return dispatchQueue;
            }
            if (allQueues.size() < 4) {
                ArrayList<DispatchQueue> arrayList = allQueues;
                DispatchQueue dispatchQueue2 = new DispatchQueue("gallery_load_" + allQueues.size());
                this.myQueue = dispatchQueue2;
                arrayList.add(dispatchQueue2);
            } else {
                int i = allQueuesIndex + 1;
                allQueuesIndex = i;
                if (i >= allQueues.size()) {
                    allQueuesIndex = 0;
                }
                this.myQueue = allQueues.get(allQueuesIndex);
            }
            return this.myQueue;
        }

        private Pair<Bitmap, int[]> getThumbnail(Object obj) {
            int[] iArr;
            File file;
            int i;
            Bitmap bitmapDecodeFile = null;
            colorsSync = null;
            colorsSync = null;
            colorsSync = null;
            int[] colorsSync = null;
            if (obj == null) {
                return null;
            }
            int iMin = (int) Math.min(AndroidUtilities.displaySize.x / 3.0f, AndroidUtilities.dp(330.0f));
            int i2 = (int) (iMin * this.aspectRatio);
            if (obj instanceof MediaController.PhotoEntry) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                readBitmap(photoEntry, options);
                StoryEntry.setupScale(options, iMin, i2);
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                options.inDither = true;
                options.inJustDecodeBounds = false;
                Bitmap bitmap = readBitmap(photoEntry, options);
                if (bitmap != null && bitmap.getHeight() / bitmap.getWidth() < this.aspectRatio) {
                    if (photoEntry.gradientTopColor == 0 && photoEntry.gradientBottomColor == 0 && bitmap != null && !bitmap.isRecycled()) {
                        colorsSync = DominantColors.getColorsSync(true, bitmap, true);
                        photoEntry.gradientTopColor = colorsSync[0];
                        photoEntry.gradientBottomColor = colorsSync[1];
                    } else {
                        int i3 = photoEntry.gradientTopColor;
                        if (i3 != 0 && (i = photoEntry.gradientBottomColor) != 0) {
                            colorsSync = new int[]{i3, i};
                        }
                    }
                }
                iArr = colorsSync;
                bitmapDecodeFile = bitmap;
            } else if (!(obj instanceof StoryEntry) || (file = ((StoryEntry) obj).draftThumbFile) == null) {
                iArr = null;
            } else {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(file.getPath(), options2);
                StoryEntry.setupScale(options2, iMin, i2);
                options2.inPreferredConfig = Bitmap.Config.ARGB_8888;
                options2.inDither = true;
                options2.inJustDecodeBounds = false;
                bitmapDecodeFile = BitmapFactory.decodeFile(file.getPath(), options2);
                iArr = null;
            }
            return new Pair<>(bitmapDecodeFile, iArr);
        }

        private void loadBitmap(final Object obj) {
            final String strKey;
            if (obj == null) {
                releaseBitmap(this.currentKey);
                this.currentKey = null;
                this.bitmap = null;
                invalidate();
                return;
            }
            boolean z = obj instanceof MediaController.PhotoEntry;
            if (z) {
                strKey = key((MediaController.PhotoEntry) obj);
            } else if (obj instanceof StoryEntry) {
                strKey = "d" + ((StoryEntry) obj).draftId;
            } else {
                strKey = null;
            }
            if (TextUtils.equals(strKey, this.currentKey)) {
                return;
            }
            String str = this.currentKey;
            if (str != null) {
                this.bitmap = null;
                releaseBitmap(str);
                invalidate();
            }
            this.currentKey = strKey;
            this.gradientPaint.setShader(null);
            this.gradient = null;
            if (z) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                if (photoEntry.gradientTopColor != 0 && photoEntry.gradientBottomColor != 0) {
                    Paint paint = this.gradientPaint;
                    LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{photoEntry.gradientTopColor, photoEntry.gradientBottomColor}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                    this.gradient = linearGradient;
                    paint.setShader(linearGradient);
                    updateMatrix();
                }
            }
            Bitmap bitmap = getBitmap(strKey);
            this.bitmap = bitmap;
            if (bitmap != null) {
                invalidate();
                return;
            }
            if (this.loadingBitmap != null) {
                getQueue().cancelRunnable(this.loadingBitmap);
                this.loadingBitmap = null;
            }
            DispatchQueue queue = getQueue();
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadBitmap$3(obj, strKey);
                }
            };
            this.loadingBitmap = runnable;
            queue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadBitmap$3(Object obj, final String str) {
            final Pair<Bitmap, int[]> thumbnail = getThumbnail(obj);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Cell$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadBitmap$2(str, thumbnail);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadBitmap$2(String str, Pair pair) {
            afterLoad(str, (Bitmap) pair.first, (int[]) pair.second);
        }

        private void afterLoad(String str, Bitmap bitmap, int[] iArr) {
            if (bitmap == null) {
                return;
            }
            putBitmap(str, bitmap);
            if (!TextUtils.equals(str, this.currentKey)) {
                releaseBitmap(str);
                return;
            }
            this.bitmap = bitmap;
            Paint paint = this.gradientPaint;
            if (iArr == null) {
                paint.setShader(null);
                this.gradient = null;
            } else {
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, iArr, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
                this.gradient = linearGradient;
                paint.setShader(linearGradient);
            }
            updateMatrix();
            invalidate();
        }

        private void updateMatrix() {
            Bitmap bitmap;
            float measuredWidth;
            if (getMeasuredWidth() > 0 && getMeasuredHeight() > 0 && (bitmap = this.bitmap) != null) {
                if (bitmap.getHeight() / this.bitmap.getWidth() > this.aspectRatio - 0.1f) {
                    measuredWidth = Math.max(getMeasuredWidth() / this.bitmap.getWidth(), getMeasuredHeight() / this.bitmap.getHeight());
                } else {
                    measuredWidth = getMeasuredWidth() / this.bitmap.getWidth();
                }
                this.bitmapMatrix.reset();
                this.bitmapMatrix.postScale(measuredWidth, measuredWidth);
                this.bitmapMatrix.postTranslate((getMeasuredWidth() - (this.bitmap.getWidth() * measuredWidth)) / 2.0f, (getMeasuredHeight() - (measuredWidth * this.bitmap.getHeight())) / 2.0f);
            }
            if (getMeasuredHeight() > 0) {
                this.gradientMatrix.reset();
                this.gradientMatrix.postScale(1.0f, getMeasuredHeight());
                LinearGradient linearGradient = this.gradient;
                if (linearGradient != null) {
                    linearGradient.setLocalMatrix(this.gradientMatrix);
                }
            }
        }

        private Bitmap readBitmap(MediaController.PhotoEntry photoEntry, BitmapFactory.Options options) {
            if (photoEntry == null) {
                return null;
            }
            String str = photoEntry.thumbPath;
            if (str != null) {
                return BitmapFactory.decodeFile(str, options);
            }
            if (photoEntry.isVideo && !photoEntry.isLivePhoto()) {
                return MediaStore.Video.Thumbnails.getThumbnail(getContext().getContentResolver(), photoEntry.imageId, 1, options);
            }
            return MediaStore.Images.Thumbnails.getThumbnail(getContext().getContentResolver(), photoEntry.imageId, 1, options);
        }

        private String key(MediaController.PhotoEntry photoEntry) {
            if (photoEntry == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            String str = photoEntry.thumbPath;
            if (str != null) {
                return str;
            }
            if (photoEntry.isVideo && !photoEntry.isLivePhoto()) {
                return _UrlKt.FRAGMENT_ENCODE_SET + photoEntry.imageId;
            }
            return photoEntry.path;
        }

        public void setRounding(boolean z, boolean z2) {
            this.topLeft = z;
            this.topRight = z2;
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            boolean z = true;
            boolean z2 = false;
            if (this.topLeft || this.topRight) {
                canvas.save();
                this.clipPath.rewind();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getWidth(), getHeight());
                float[] fArr = this.radii;
                float fDp = this.topLeft ? AndroidUtilities.dp(6.0f) : 0.0f;
                fArr[1] = fDp;
                fArr[0] = fDp;
                float[] fArr2 = this.radii;
                float fDp2 = this.topRight ? AndroidUtilities.dp(6.0f) : 0.0f;
                fArr2[3] = fDp2;
                fArr2[2] = fDp2;
                this.clipPath.addRoundRect(rectF, this.radii, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                z2 = true;
            }
            float progress = this.checkBox.getProgress() * AndroidUtilities.dp(12.66f);
            if (progress > 0.0f) {
                if (!z2) {
                    canvas.save();
                }
                float width = (getWidth() - (progress * 2.0f)) / getWidth();
                this.paintUnderCheck.setColor(218103807);
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.paintUnderCheck);
                canvas.scale(width, width, getWidth() / 2.0f, getHeight() / 2.0f);
                this.clipPath.rewind();
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(0.0f, 0.0f, getWidth(), getHeight());
                float fDp3 = AndroidUtilities.dp(12.0f) * this.checkBox.getProgress();
                this.clipPath.addRoundRect(rectF2, fDp3, fDp3, Path.Direction.CW);
                canvas.clipPath(this.clipPath);
            } else {
                z = z2;
            }
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.bgPaint);
            if (this.gradient != null) {
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.gradientPaint);
            }
            Bitmap bitmap = this.bitmap;
            if (bitmap != null && !bitmap.isRecycled()) {
                canvas.drawBitmap(this.bitmap, this.bitmapMatrix, this.bitmapPaint);
            }
            if (this.draftLayout != null) {
                RectF rectF3 = AndroidUtilities.rectTmp;
                rectF3.set(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(10.0f) + this.draftLayoutWidth + AndroidUtilities.dp(6.0f), AndroidUtilities.dp(5.0f) + this.draftLayout.getHeight() + AndroidUtilities.dp(2.0f));
                canvas.drawRoundRect(rectF3, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), this.durationBackgroundPaint);
                canvas.save();
                canvas.translate((rectF3.left + AndroidUtilities.dp(6.0f)) - this.draftLayoutLeft, rectF3.top + AndroidUtilities.dp(1.33f));
                this.draftLayout.draw(canvas);
                canvas.restore();
            }
            if (this.durationLayout != null) {
                RectF rectF4 = AndroidUtilities.rectTmp;
                rectF4.set(AndroidUtilities.dp(4.0f), ((getHeight() - AndroidUtilities.dp(4.0f)) - this.durationLayout.getHeight()) - AndroidUtilities.dp(2.0f), AndroidUtilities.dp(4.0f) + (this.drawDurationPlay ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(4.0f)) + this.durationLayoutWidth + AndroidUtilities.dp(5.0f), getHeight() - AndroidUtilities.dp(4.0f));
                canvas.drawRoundRect(rectF4, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f), this.durationBackgroundPaint);
                if (this.drawDurationPlay) {
                    this.durationPlayDrawable.setBounds((int) (rectF4.left + AndroidUtilities.dp(6.0f)), (int) (rectF4.centerY() - (AndroidUtilities.dp(8.0f) / 2)), (int) (rectF4.left + AndroidUtilities.dp(13.0f)), (int) (rectF4.centerY() + (AndroidUtilities.dp(8.0f) / 2)));
                    this.durationPlayDrawable.draw(canvas);
                }
                canvas.save();
                canvas.translate((rectF4.left + (this.drawDurationPlay ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(5.0f))) - this.durationLayoutLeft, rectF4.top + AndroidUtilities.dp(1.0f));
                this.durationLayout.draw(canvas);
                canvas.restore();
            }
            if (z) {
                canvas.restore();
            }
            super.draw(canvas);
        }

        private void setDuration(String str) {
            if (!TextUtils.isEmpty(str)) {
                StaticLayout staticLayout = new StaticLayout(str, this.durationTextPaint, getMeasuredWidth() > 0 ? getMeasuredWidth() : AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.durationLayout = staticLayout;
                this.durationLayoutWidth = staticLayout.getLineCount() > 0 ? this.durationLayout.getLineWidth(0) : 0.0f;
                this.durationLayoutLeft = this.durationLayout.getLineCount() > 0 ? this.durationLayout.getLineLeft(0) : 0.0f;
            } else {
                this.durationLayout = null;
            }
            this.drawDurationPlay = true;
        }

        private void setDraft(boolean z) {
            if (z) {
                StaticLayout staticLayout = new StaticLayout(LocaleController.getString("StoryDraft"), this.draftTextPaint, getMeasuredWidth() > 0 ? getMeasuredWidth() : AndroidUtilities.displaySize.x, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.draftLayout = staticLayout;
                this.draftLayoutWidth = staticLayout.getLineCount() > 0 ? this.draftLayout.getLineWidth(0) : 0.0f;
                this.draftLayoutLeft = this.draftLayout.getLineCount() > 0 ? this.draftLayout.getLineLeft(0) : 0.0f;
                return;
            }
            this.draftLayout = null;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) (size * this.aspectRatio), TLObject.FLAG_30));
            updateMatrix();
        }
    }

    public class EmptyView extends View {
        int height;

        public EmptyView(Context context) {
            super(context);
        }

        public void setHeight(int i) {
            this.height = i;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int size;
            int size2 = View.MeasureSpec.getSize(i);
            int i3 = this.height;
            if (i3 == -1) {
                MediaController.AlbumEntry albumEntry = GalleryListView.this.selectedAlbum;
                MediaController.AlbumEntry albumEntry2 = GalleryListView.draftsAlbum;
                GalleryListView galleryListView = GalleryListView.this;
                if (albumEntry == albumEntry2) {
                    size = galleryListView.drafts.size();
                } else {
                    ArrayList<MediaController.PhotoEntry> arrayList = galleryListView.photos;
                    if (arrayList != null) {
                        size = arrayList.size() + (GalleryListView.this.containsDraftFolder ? 1 : 0) + (GalleryListView.this.containsDrafts ? GalleryListView.this.drafts.size() : 0);
                    } else {
                        size = 0;
                    }
                }
                setMeasuredDimension(size2, Math.max(0, (AndroidUtilities.displaySize.y - AndroidUtilities.dp(62.0f)) - (((int) (((int) (size2 / GalleryListView.this.layoutManager.getSpanCount())) * GalleryListView.this.ASPECT_RATIO)) * ((int) Math.ceil(size / GalleryListView.this.layoutManager.getSpanCount())))));
                return;
            }
            setMeasuredDimension(size2, i3);
        }
    }

    public class HeaderView extends FrameLayout {
        public TextView textView;

        public HeaderView(Context context, boolean z) {
            super(context);
            setPadding(AndroidUtilities.dp(z ? 14.0f : 16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(10.0f));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 16.0f);
            this.textView.setTextColor(-1);
            this.textView.setTypeface(AndroidUtilities.bold());
            this.textView.setText(GalleryListView.this.getTitle());
            addView(this.textView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, z ? 32.0f : 0.0f, 0.0f));
        }
    }

    public String getTitle() {
        return LocaleController.getString(this.onlyPhotos ? C2807R.string.AddImage : C2807R.string.ChoosePhotoOrVideo);
    }

    public class Adapter extends RecyclerListView.FastScrollAdapter {
        private Adapter() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View cell;
            if (i == 0) {
                GalleryListView galleryListView = GalleryListView.this;
                cell = galleryListView.new EmptyView(galleryListView.getContext());
            } else if (i == 1) {
                GalleryListView galleryListView2 = GalleryListView.this;
                GalleryListView galleryListView3 = GalleryListView.this;
                HeaderView headerView = galleryListView3.new HeaderView(galleryListView3.getContext(), GalleryListView.this.onlyPhotos);
                galleryListView2.headerView = headerView;
                cell = headerView;
            } else {
                cell = new Cell(GalleryListView.this.getContext(), GalleryListView.this.resourcesProvider, GalleryListView.this.ASPECT_RATIO, GalleryListView.this.collaging);
            }
            return new RecyclerListView.Holder(cell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((EmptyView) viewHolder.itemView).setHeight(i == 0 ? GalleryListView.this.getPadding() : -1);
                return;
            }
            if (itemViewType == 2) {
                final Cell cell = (Cell) viewHolder.itemView;
                cell.setRounding(i == 2, i == 4);
                cell.accessibilityClick = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Adapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBindViewHolder$0(cell);
                    }
                };
                cell.accessibilityLongClick = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Adapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBindViewHolder$1(cell);
                    }
                };
                int size = i - 2;
                if (GalleryListView.this.containsDraftFolder) {
                    if (size == 0) {
                        cell.setCheckbox(false, -1, false);
                        cell.set((StoryEntry) GalleryListView.this.drafts.get(0), GalleryListView.this.drafts.size());
                        return;
                    }
                    size = i - 3;
                } else if (GalleryListView.this.containsDrafts) {
                    if (size >= 0 && size < GalleryListView.this.drafts.size()) {
                        cell.setCheckbox(false, -1, false);
                        cell.set((StoryEntry) GalleryListView.this.drafts.get(size), 0);
                        return;
                    }
                    size -= GalleryListView.this.drafts.size();
                }
                ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.photos;
                if (arrayList == null || size < 0 || size >= arrayList.size()) {
                    return;
                }
                final MediaController.PhotoEntry photoEntry = GalleryListView.this.photos.get(size);
                cell.setCheckbox(GalleryListView.this.isMultiple(), GalleryListView.this.selectedPhotos.indexOf(photoEntry), cell.currentObject == photoEntry);
                cell.set(photoEntry);
                if (GalleryListView.this.collaging) {
                    cell.checkBoxContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$Adapter$$ExternalSyntheticLambda2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onBindViewHolder$2(photoEntry, cell, view);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(Cell cell) {
            int childAdapterPosition = GalleryListView.this.listView.getChildAdapterPosition(cell);
            if (childAdapterPosition != -1) {
                GalleryListView.this.listView.clickItem(cell, childAdapterPosition);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$1(Cell cell) {
            int childAdapterPosition = GalleryListView.this.listView.getChildAdapterPosition(cell);
            if (childAdapterPosition != -1) {
                GalleryListView.this.listView.longClickItem(cell, childAdapterPosition);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$2(MediaController.PhotoEntry photoEntry, Cell cell, View view) {
            boolean zContains = GalleryListView.this.selectedPhotos.contains(photoEntry);
            GalleryListView galleryListView = GalleryListView.this;
            if (zContains) {
                galleryListView.selectedPhotos.remove(photoEntry);
            } else {
                int size = galleryListView.selectedPhotos.size() + 1;
                int i = GalleryListView.this.maxCount;
                GalleryListView galleryListView2 = GalleryListView.this;
                if (size > i) {
                    int i2 = -galleryListView2.shiftDp;
                    galleryListView2.shiftDp = i2;
                    AndroidUtilities.shakeViewSpring(cell, i2);
                    BotWebViewVibrationEffect.APP_ERROR.vibrate();
                    return;
                }
                galleryListView2.selectedPhotos.add(photoEntry);
            }
            AndroidUtilities.updateVisibleRows(GalleryListView.this.listView);
            GalleryListView.this.updateSelectButtonVisible();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            super.onViewAttachedToWindow(viewHolder);
            if (viewHolder.getItemViewType() == 2) {
                Cell cell = (Cell) viewHolder.itemView;
                if (cell.currentObject instanceof MediaController.PhotoEntry) {
                    cell.setCheckbox(GalleryListView.this.isMultiple(), GalleryListView.this.selectedPhotos.indexOf((MediaController.PhotoEntry) cell.currentObject), false);
                } else {
                    cell.setCheckbox(false, -1, false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0 || i == getItemCount() - 1) {
                return 0;
            }
            return i == 1 ? 1 : 2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getTotalItemsCount() + 3;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            MediaController.PhotoEntry photoEntry;
            int size = i - 2;
            if (GalleryListView.this.containsDraftFolder) {
                if (size == 0) {
                    return null;
                }
                size = i - 3;
            } else if (GalleryListView.this.containsDrafts) {
                if (size >= 0 && size < GalleryListView.this.drafts.size()) {
                    return LocaleController.formatYearMont(((StoryEntry) GalleryListView.this.drafts.get(size)).draftDate / 1000, true);
                }
                size -= GalleryListView.this.drafts.size();
            }
            ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.photos;
            if (arrayList == null || size < 0 || size >= arrayList.size() || (photoEntry = GalleryListView.this.photos.get(size)) == null) {
                return null;
            }
            long j = photoEntry.dateTaken;
            if (Build.VERSION.SDK_INT <= 28) {
                j /= 1000;
            }
            return LocaleController.formatYearMont(j, true);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            ArrayList<MediaController.PhotoEntry> arrayList = GalleryListView.this.photos;
            int size = arrayList == null ? 0 : arrayList.size();
            return GalleryListView.this.containsDraftFolder ? size + 1 : GalleryListView.this.containsDrafts ? size + GalleryListView.this.drafts.size() : size;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int totalItemsCount = getTotalItemsCount();
            int width = (int) (((int) (((recyclerListView.getWidth() - recyclerListView.getPaddingLeft()) - recyclerListView.getPaddingRight()) / GalleryListView.this.layoutManager.getSpanCount())) * GalleryListView.this.ASPECT_RATIO);
            int iCeil = (int) Math.ceil(totalItemsCount / GalleryListView.this.layoutManager.getSpanCount());
            float fLerp = (AndroidUtilities.lerp(0, Math.max(0, r2 - ((AndroidUtilities.displaySize.y - recyclerListView.getPaddingTop()) - recyclerListView.getPaddingBottom())), f) / (iCeil * width)) * iCeil;
            int iRound = Math.round(fLerp);
            iArr[0] = Math.max(0, GalleryListView.this.layoutManager.getSpanCount() * iRound) + 2;
            iArr[1] = recyclerListView.getPaddingTop() + ((int) ((fLerp - iRound) * width));
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public float getScrollProgress(RecyclerListView recyclerListView) {
            int totalItemsCount = getTotalItemsCount();
            return (Math.max(0, recyclerListView.computeVerticalScrollOffset() - GalleryListView.this.getPadding()) - recyclerListView.getPaddingTop()) / ((((int) Math.ceil(totalItemsCount / GalleryListView.this.layoutManager.getSpanCount())) * ((int) (((int) (((recyclerListView.getWidth() - recyclerListView.getPaddingLeft()) - recyclerListView.getPaddingRight()) / GalleryListView.this.layoutManager.getSpanCount())) * GalleryListView.this.ASPECT_RATIO))) - (AndroidUtilities.displaySize.y - recyclerListView.getPaddingTop()));
        }
    }

    public int getPadding() {
        return (int) (AndroidUtilities.displaySize.y * 0.35f);
    }

    public int top() {
        int padding;
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView == null || recyclerListView.getChildCount() <= 0) {
            padding = getPadding();
        } else {
            int iMin = Integer.MAX_VALUE;
            if (this.listView != null) {
                for (int i = 0; i < this.listView.getChildCount(); i++) {
                    View childAt = this.listView.getChildAt(i);
                    if (this.listView.getChildAdapterPosition(childAt) > 0) {
                        iMin = Math.min(iMin, (int) childAt.getY());
                    }
                }
            }
            padding = Math.max(0, Math.min(iMin, getHeight()));
        }
        RecyclerListView recyclerListView2 = this.listView;
        return recyclerListView2 == null ? padding : AndroidUtilities.lerp(0, padding, recyclerListView2.getAlpha());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesDraftsUpdated);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesDraftsUpdated);
        Cell.cleanupQueues();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.albumsDidLoad) {
            updateAlbumsDropDown();
            int i3 = 0;
            if (this.selectedAlbum != null) {
                while (true) {
                    if (i3 >= MediaController.allMediaAlbums.size()) {
                        break;
                    }
                    MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbums.get(i3);
                    int i4 = albumEntry.bucketId;
                    MediaController.AlbumEntry albumEntry2 = this.selectedAlbum;
                    if (i4 == albumEntry2.bucketId && albumEntry.videoOnly == albumEntry2.videoOnly) {
                        this.selectedAlbum = albumEntry;
                        break;
                    }
                    i3++;
                }
            } else {
                ArrayList<MediaController.AlbumEntry> arrayList = this.dropDownAlbums;
                if (arrayList == null || arrayList.isEmpty()) {
                    this.selectedAlbum = MediaController.allMediaAlbumEntry;
                } else {
                    this.selectedAlbum = this.dropDownAlbums.get(0);
                }
            }
            this.photos = getPhotoEntries(this.selectedAlbum);
            this.selectedPhotos.clear();
            updateContainsDrafts();
            Adapter adapter = this.adapter;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        if (i == NotificationCenter.storiesDraftsUpdated) {
            updateDrafts();
        }
    }

    public void updateDrafts() {
        this.drafts.clear();
        if (!this.onlyPhotos) {
            ArrayList<StoryEntry> arrayList = MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().drafts;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                StoryEntry storyEntry = arrayList.get(i);
                i++;
                StoryEntry storyEntry2 = storyEntry;
                if (!storyEntry2.isEdit && !storyEntry2.isError) {
                    this.drafts.add(storyEntry2);
                }
            }
        }
        updateAlbumsDropDown();
        updateContainsDrafts();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    private void updateContainsDrafts() {
        ArrayList<MediaController.AlbumEntry> arrayList;
        ArrayList<MediaController.AlbumEntry> arrayList2 = this.dropDownAlbums;
        boolean z = true;
        boolean z2 = arrayList2 != null && !arrayList2.isEmpty() && this.dropDownAlbums.get(0) == this.selectedAlbum && this.drafts.size() > 2;
        this.containsDraftFolder = z2;
        if (z2 || (this.selectedAlbum != draftsAlbum && ((arrayList = this.dropDownAlbums) == null || arrayList.isEmpty() || this.dropDownAlbums.get(0) != this.selectedAlbum))) {
            z = false;
        }
        this.containsDrafts = z;
    }

    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC.User bot;
        private int currentReqId;
        private String lastOffset;
        private boolean loading;
        private Drawable loadingDrawable;
        public String query;
        public ArrayList<TLObject> results;
        private final Runnable searchRunnable;
        private boolean triedResolvingBot;
        public int type;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public abstract void onLoadingUpdate(boolean z);

        private SearchAdapter() {
            this.results = new ArrayList<>();
            this.currentReqId = -1;
            this.loadingDrawable = new ColorDrawable(285212671);
            this.searchRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.loadInternal();
                }
            };
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(new BackupImageView(GalleryListView.this.getContext()) { // from class: org.telegram.ui.Stories.recorder.GalleryListView.SearchAdapter.1
                @Override // android.view.View
                public void onMeasure(int i2, int i3) {
                    int size = View.MeasureSpec.getSize(i2);
                    setMeasuredDimension(size, size);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            BackupImageView backupImageView = (BackupImageView) viewHolder.itemView;
            TLObject tLObject = this.results.get(i);
            if (tLObject instanceof TLRPC.Document) {
                backupImageView.setImage(ImageLocation.getForDocument((TLRPC.Document) tLObject), "200_200", this.loadingDrawable, (Object) null);
                return;
            }
            if (tLObject instanceof TLRPC.Photo) {
                TLRPC.Photo photo = (TLRPC.Photo) tLObject;
                backupImageView.setImage(ImageLocation.getForPhoto(FileLoader.getClosestPhotoSizeWithSize(photo.sizes, 320), photo), "200_200", this.loadingDrawable, (Object) null);
            } else {
                if (tLObject instanceof TLRPC.BotInlineResult) {
                    TLRPC.BotInlineResult botInlineResult = (TLRPC.BotInlineResult) tLObject;
                    TLRPC.WebDocument webDocument = botInlineResult.thumb;
                    if (webDocument != null) {
                        backupImageView.setImage(ImageLocation.getForPath(webDocument.url), "200_200", this.loadingDrawable, botInlineResult);
                        return;
                    } else {
                        backupImageView.clearImage();
                        return;
                    }
                }
                backupImageView.clearImage();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.results.size();
        }

        public void load(String str) {
            if (!TextUtils.equals(this.query, str)) {
                if (this.currentReqId != -1) {
                    ConnectionsManager.getInstance(GalleryListView.this.currentAccount).cancelRequest(this.currentReqId, true);
                    this.currentReqId = -1;
                }
                this.loading = false;
                this.lastOffset = null;
            }
            this.query = str;
            AndroidUtilities.cancelRunOnUIThread(this.searchRunnable);
            if (TextUtils.isEmpty(str)) {
                this.results.clear();
                onLoadingUpdate(false);
                notifyDataSetChanged();
            } else {
                onLoadingUpdate(true);
                AndroidUtilities.runOnUIThread(this.searchRunnable, 1500L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadInternal() {
            if (this.loading) {
                return;
            }
            this.loading = true;
            onLoadingUpdate(true);
            final MessagesController messagesController = MessagesController.getInstance(GalleryListView.this.currentAccount);
            String str = this.type == 1 ? messagesController.gifSearchBot : messagesController.imageSearchBot;
            if (this.bot == null) {
                TLObject userOrChat = messagesController.getUserOrChat(str);
                if (userOrChat instanceof TLRPC.User) {
                    this.bot = (TLRPC.User) userOrChat;
                }
            }
            TLRPC.User user = this.bot;
            if (user == null && !this.triedResolvingBot) {
                TLRPC.TL_contacts_resolveUsername tL_contacts_resolveUsername = new TLRPC.TL_contacts_resolveUsername();
                tL_contacts_resolveUsername.username = str;
                this.currentReqId = ConnectionsManager.getInstance(GalleryListView.this.currentAccount).sendRequest(tL_contacts_resolveUsername, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda1
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$loadInternal$1(messagesController, tLObject, tL_error);
                    }
                });
                return;
            }
            if (user == null) {
                return;
            }
            TLRPC.TL_messages_getInlineBotResults tL_messages_getInlineBotResults = new TLRPC.TL_messages_getInlineBotResults();
            tL_messages_getInlineBotResults.bot = messagesController.getInputUser(this.bot);
            String str2 = this.query;
            String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str2 == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            tL_messages_getInlineBotResults.query = str2;
            tL_messages_getInlineBotResults.peer = new TLRPC.TL_inputPeerEmpty();
            String str4 = this.lastOffset;
            if (str4 != null) {
                str3 = str4;
            }
            tL_messages_getInlineBotResults.offset = str3;
            final boolean zIsEmpty = TextUtils.isEmpty(str3);
            this.currentReqId = ConnectionsManager.getInstance(GalleryListView.this.currentAccount).sendRequest(tL_messages_getInlineBotResults, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadInternal$3(zIsEmpty, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$1(final MessagesController messagesController, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadInternal$0(tLObject, messagesController);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$0(TLObject tLObject, MessagesController messagesController) {
            this.triedResolvingBot = true;
            this.loading = false;
            if (tLObject instanceof TLRPC.TL_contacts_resolvedPeer) {
                TLRPC.TL_contacts_resolvedPeer tL_contacts_resolvedPeer = (TLRPC.TL_contacts_resolvedPeer) tLObject;
                messagesController.putUsers(tL_contacts_resolvedPeer.users, false);
                messagesController.putChats(tL_contacts_resolvedPeer.chats, false);
                MessagesStorage.getInstance(GalleryListView.this.currentAccount).putUsersAndChats(tL_contacts_resolvedPeer.users, tL_contacts_resolvedPeer.chats, true, true);
                loadInternal();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$3(final boolean z, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.GalleryListView$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadInternal$2(tLObject, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadInternal$2(TLObject tLObject, boolean z) {
            if (tLObject instanceof TLRPC.messages_BotResults) {
                TLRPC.messages_BotResults messages_botresults = (TLRPC.messages_BotResults) tLObject;
                this.lastOffset = messages_botresults.next_offset;
                if (z) {
                    this.results.clear();
                }
                for (int i = 0; i < messages_botresults.results.size(); i++) {
                    TLRPC.BotInlineResult botInlineResult = messages_botresults.results.get(i);
                    TLRPC.Document document = botInlineResult.document;
                    if (document != null) {
                        this.results.add(document);
                    } else {
                        TLRPC.Photo photo = botInlineResult.photo;
                        if (photo != null) {
                            this.results.add(photo);
                        } else if (botInlineResult.content != null) {
                            this.results.add(botInlineResult);
                        }
                    }
                }
                this.loading = false;
                onLoadingUpdate(false);
                notifyDataSetChanged();
            }
        }
    }
}
