package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.system.VibratorUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.EmojiData;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.FixedHeightEmptyCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.CloseProgressDrawable2;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable;
import org.telegram.p029ui.Components.EditTextCaption;
import org.telegram.p029ui.Components.EmojiPacksAlert;
import org.telegram.p029ui.Components.EmojiTabsStrip;
import org.telegram.p029ui.Components.EmojiView;
import org.telegram.p029ui.Components.FloatingDebug.FloatingDebugView$$ExternalSyntheticLambda10;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.PremiumButtonView;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.Premium.PremiumLockIconView;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Components.Reactions.HwEmojis;
import org.telegram.p029ui.Components.Reactions.ReactionsEffectOverlay;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.SearchStateDrawable;
import org.telegram.p029ui.Components.StickerCategoriesListView;
import org.telegram.p029ui.SelectAnimatedEmojiDialog;
import org.telegram.p029ui.Stars.StarsController;
import org.telegram.p029ui.Stars.StarsReactionsSheet;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SelectAnimatedEmojiDialog extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static String[] lastSearchKeyboardLanguage;
    private final int EXPAND_MAX_LINES;
    private final int RECENT_MAX_LINES;
    private final int SPAN_COUNT;
    private final int SPAN_COUNT_FOR_EMOJI;
    private final int SPAN_COUNT_FOR_STICKER;
    private int accentColor;
    private Adapter adapter;
    private View animateExpandFromButton;
    private float animateExpandFromButtonTranslate;
    private int animateExpandFromPosition;
    private long animateExpandStartTime;
    private int animateExpandToPosition;
    private boolean animationsEnabled;
    private BackgroundDelegate backgroundDelegate;
    private View backgroundView;
    public boolean badgePicker;
    private BaseFragment baseFragment;
    AnimatedEmojiDrawable bigReactionAnimatedEmoji;
    ImageReceiver bigReactionImageReceiver;
    public onLongPressedListener bigReactionListener;
    private boolean bottomGradientShown;
    private View bottomGradientView;
    private View bubble1View;
    private View bubble2View;
    private EmojiTabsStrip[] cachedEmojiTabs;
    public boolean cancelPressed;
    private Runnable clearSearchRunnable;
    private StarsReactionsSheet.Particles collectionParticles;
    private EditTextCaption commentView;
    public FrameLayout contentView;
    private View contentViewForeground;
    private final int currentAccount;
    private long defaultBadgeId;
    private boolean defaultSetLoading;
    private ArrayList defaultStatuses;
    private int defaultTopicIconRow;
    private Runnable dismiss;
    private boolean drawBackground;
    private Rect drawableToBounds;
    final float durationScale;
    public EmojiListView emojiGridView;
    public FrameLayout emojiGridViewContainer;
    DefaultItemAnimator emojiItemAnimator;
    public FrameLayout emojiSearchEmptyView;
    private BackupImageView emojiSearchEmptyViewImageView;
    public EmojiListView emojiSearchGridView;
    private float emojiSelectAlpha;
    private ValueAnimator emojiSelectAnimator;
    private Rect emojiSelectRect;
    private ImageViewEmoji emojiSelectView;
    public EmojiTabsStrip emojiTabs;
    public View emojiTabsShadow;
    private Integer emojiX;
    private boolean enterAnimationInProgress;
    private ArrayList expandedEmojiSets;
    public boolean forUser;
    private Drawable forumIconDrawable;
    private ImageViewEmoji forumIconImage;
    private ArrayList frozenEmojiPacks;
    private ArrayList gifts;
    private int giftsEndRow;
    private int giftsSectionRow;
    private int giftsStartRow;
    private boolean gridSearch;
    private ValueAnimator gridSwitchAnimator;
    public FrameLayout gridViewContainer;
    private ValueAnimator hideAnimator;
    private Integer hintExpireDate;
    private boolean includeEmpty;
    public boolean includeHint;
    private ArrayList installedEmojiSets;
    private boolean isAttached;
    private boolean isLongPressEnabled;
    private String lastQuery;
    private GridLayoutManager layoutManager;
    private Integer listStateId;
    private int longtapHintRow;
    private final float maxDim;
    private AnimationNotificationsLocker notificationsLocker;
    public onRecentClearedListener onRecentClearedListener;
    private OvershootInterpolator overshootInterpolator;
    private ArrayList packs;
    Paint paint;
    public boolean paused;
    public boolean pausedExceptSelected;
    private int popularSectionRow;
    private SparseIntArray positionToButton;
    private SparseIntArray positionToExpand;
    private SparseIntArray positionToSection;
    private Drawable premiumStar;
    private final ColorFilter premiumStarColorFilter;
    float pressedProgress;
    private ArrayList recent;
    private EmojiPackExpand recentExpandButton;
    private boolean recentExpanded;
    private ArrayList recentReactions;
    private int recentReactionsEndRow;
    private int recentReactionsSectionRow;
    private int recentReactionsStartRow;
    private List recentReactionsToSet;
    private ArrayList recentStickers;
    private Theme.ResourcesProvider resourcesProvider;
    private ArrayList rowHashCodes;
    private float scaleX;
    private float scaleY;
    private float scrimAlpha;
    private int scrimColor;
    private AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable scrimDrawable;
    private View scrimDrawableParent;
    private RecyclerAnimationScrollHelper scrollHelper;
    private SearchAdapter searchAdapter;
    public SearchBox searchBox;
    private ValueAnimator searchEmptyViewAnimator;
    private boolean searchEmptyViewVisible;
    private GridLayoutManager searchLayoutManager;
    private ArrayList searchResult;
    private ArrayList searchResultStickers;
    private int searchRow;
    private Runnable searchRunnable;
    private ArrayList searchSets;
    public boolean searched;
    public boolean searchedLiftUp;
    public boolean searching;
    private SparseIntArray sectionToPosition;
    private SelectStatusDurationDialog selectStatusDateDialog;
    HashSet selectedDocumentIds;
    ImageViewEmoji selectedReactionView;
    HashSet selectedReactions;
    public Paint selectorAccentPaint;
    public Paint selectorPaint;
    private ValueAnimator showAnimator;
    final long showDuration;
    private boolean showStickers;
    private boolean smoothScrolling;
    private ArrayList standardEmojis;
    private ArrayList stickerSets;
    private ArrayList stickers;
    private int stickersEndRow;
    private ArrayList stickersSearchResult;
    private int stickersSectionRow;
    private int stickersStartRow;
    private boolean topGradientShown;
    private View topGradientView;
    private int topMarginDp;
    private ArrayList topReactions;
    private int topReactionsEndRow;
    private int topReactionsStartRow;
    private int topicEmojiHeaderRow;
    private int totalCount;
    private int type;
    private final Runnable updateRows;
    private final Runnable updateRowsDelayed;
    public boolean useAccentForPlus;
    private static final List emptyViewEmojis = Arrays.asList("😖", "😫", "🫠", "😨", "❓");
    private static boolean[] preloaded = new boolean[16];
    private static boolean isFirstOpen = true;
    private static HashMap listStates = new HashMap();

    /* JADX INFO: loaded from: classes6.dex */
    public interface BackgroundDelegate {
        void drawRect(Canvas canvas, int i, int i2, int i3, int i4, float f, float f2);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface onLongPressedListener {
        void onLongPressed(ImageViewEmoji imageViewEmoji);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface onRecentClearedListener {
        void onRecentCleared();
    }

    protected float getScrimDrawableTranslationY() {
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: invalidateParent, reason: merged with bridge method [inline-methods] */
    public void lambda$new$3() {
    }

    protected void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
    }

    protected void onInputFocus() {
    }

    protected void onReactionClick(ImageViewEmoji imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
    }

    protected void onSettings() {
    }

    public boolean prevWindowKeyboardVisible() {
        return false;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
    }

    protected boolean willApplyEmoji(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
        return true;
    }

    public boolean isBottom() {
        int i = this.type;
        return i == 5 || i == 10 || i == 12;
    }

    public void setSelectedReactions(HashSet<ReactionsLayoutInBubble.VisibleReaction> hashSet) {
        this.selectedReactions = hashSet;
        this.selectedDocumentIds.clear();
        ArrayList arrayList = new ArrayList(hashSet);
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) != null && ((ReactionsLayoutInBubble.VisibleReaction) arrayList.get(i)).documentId != 0) {
                this.selectedDocumentIds.add(Long.valueOf(((ReactionsLayoutInBubble.VisibleReaction) arrayList.get(i)).documentId));
            }
        }
    }

    public void setSelectedReaction(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        this.selectedReactions.clear();
        this.selectedReactions.add(visibleReaction);
        if (this.emojiGridView != null) {
            for (int i = 0; i < this.emojiGridView.getChildCount(); i++) {
                if (this.emojiGridView.getChildAt(i) instanceof ImageViewEmoji) {
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.emojiGridView.getChildAt(i);
                    imageViewEmoji.setViewSelected(this.selectedReactions.contains(imageViewEmoji.reaction), true);
                }
            }
            this.emojiGridView.invalidate();
        }
        if (this.emojiSearchGridView != null) {
            for (int i2 = 0; i2 < this.emojiSearchGridView.getChildCount(); i2++) {
                if (this.emojiSearchGridView.getChildAt(i2) instanceof ImageViewEmoji) {
                    ImageViewEmoji imageViewEmoji2 = (ImageViewEmoji) this.emojiSearchGridView.getChildAt(i2);
                    imageViewEmoji2.setViewSelected(this.selectedReactions.contains(imageViewEmoji2.reaction), true);
                }
            }
            this.emojiSearchGridView.invalidate();
        }
    }

    public void setSelectedReactions(ArrayList<String> arrayList) {
        this.selectedReactions.clear();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            String str = arrayList.get(i);
            i++;
            this.selectedReactions.add(ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(str));
        }
        if (this.emojiGridView != null) {
            for (int i2 = 0; i2 < this.emojiGridView.getChildCount(); i2++) {
                if (this.emojiGridView.getChildAt(i2) instanceof ImageViewEmoji) {
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.emojiGridView.getChildAt(i2);
                    imageViewEmoji.setViewSelected(this.selectedReactions.contains(imageViewEmoji.reaction), true);
                }
            }
            this.emojiGridView.invalidate();
        }
    }

    public void setForUser(boolean z) {
        this.forUser = z;
        updateRows(false, false);
    }

    public void invalidateSearchBox() {
        this.searchBox.invalidate();
    }

    public static class SelectAnimatedEmojiDialogWindow extends PopupWindow {
        private static final ViewTreeObserver.OnScrollChangedListener NOP = new ViewTreeObserver.OnScrollChangedListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow.$r8$lambda$XHVKtgZK_Vi5QBfbkh5XA8tNoGA();
            }
        };
        private static final Field superListenerField;
        private ViewTreeObserver.OnScrollChangedListener mSuperScrollListener;
        private ViewTreeObserver mViewTreeObserver;

        public static /* synthetic */ void $r8$lambda$XHVKtgZK_Vi5QBfbkh5XA8tNoGA() {
        }

        static {
            Field declaredField = null;
            try {
                declaredField = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            superListenerField = declaredField;
        }

        public SelectAnimatedEmojiDialogWindow(View view, int i, int i2) {
            super(view, i, i2);
            init();
        }

        private void init() {
            setFocusable(true);
            setAnimationStyle(0);
            setOutsideTouchable(true);
            setClippingEnabled(true);
            setInputMethodMode(0);
            setSoftInputMode(4);
            Field field = superListenerField;
            if (field != null) {
                try {
                    this.mSuperScrollListener = (ViewTreeObserver.OnScrollChangedListener) field.get(this);
                    field.set(this, NOP);
                } catch (Exception unused) {
                    this.mSuperScrollListener = null;
                }
            }
        }

        private void unregisterListener() {
            ViewTreeObserver viewTreeObserver;
            if (this.mSuperScrollListener == null || (viewTreeObserver = this.mViewTreeObserver) == null) {
                return;
            }
            if (viewTreeObserver.isAlive()) {
                this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
            }
            this.mViewTreeObserver = null;
        }

        private void registerListener(View view) {
            if (getContentView() instanceof SelectAnimatedEmojiDialog) {
                ((SelectAnimatedEmojiDialog) getContentView()).onShow(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.dismiss();
                    }
                });
            }
            if (this.mSuperScrollListener != null) {
                ViewTreeObserver viewTreeObserver = view.getWindowToken() != null ? view.getViewTreeObserver() : null;
                ViewTreeObserver viewTreeObserver2 = this.mViewTreeObserver;
                if (viewTreeObserver != viewTreeObserver2) {
                    if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                        this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
                    }
                    this.mViewTreeObserver = viewTreeObserver;
                    if (viewTreeObserver != null) {
                        viewTreeObserver.addOnScrollChangedListener(this.mSuperScrollListener);
                    }
                }
            }
        }

        public void dimBehind() {
            View rootView = getContentView().getRootView();
            WindowManager windowManager = (WindowManager) getContentView().getContext().getSystemService("window");
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) rootView.getLayoutParams();
            layoutParams.flags |= 2;
            layoutParams.dimAmount = 0.2f;
            windowManager.updateViewLayout(rootView, layoutParams);
        }

        private void dismissDim() {
            View rootView = getContentView().getRootView();
            WindowManager windowManager = (WindowManager) getContentView().getContext().getSystemService("window");
            if (rootView.getLayoutParams() == null || !(rootView.getLayoutParams() instanceof WindowManager.LayoutParams)) {
                return;
            }
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) rootView.getLayoutParams();
            try {
                int i = layoutParams.flags;
                if ((i & 2) != 0) {
                    layoutParams.flags = i & (-3);
                    layoutParams.dimAmount = 0.0f;
                    windowManager.updateViewLayout(rootView, layoutParams);
                }
            } catch (Exception unused) {
            }
        }

        @Override // android.widget.PopupWindow
        public void showAsDropDown(View view) {
            super.showAsDropDown(view);
            registerListener(view);
        }

        @Override // android.widget.PopupWindow
        public void showAsDropDown(View view, int i, int i2) {
            super.showAsDropDown(view, i, i2);
            registerListener(view);
        }

        @Override // android.widget.PopupWindow
        public void showAsDropDown(View view, int i, int i2, int i3) {
            super.showAsDropDown(view, i, i2, i3);
            registerListener(view);
        }

        @Override // android.widget.PopupWindow
        public void showAtLocation(View view, int i, int i2, int i3) {
            super.showAtLocation(view, i, i2, i3);
            unregisterListener();
        }

        @Override // android.widget.PopupWindow
        public void dismiss() {
            if (getContentView() instanceof SelectAnimatedEmojiDialog) {
                ((SelectAnimatedEmojiDialog) getContentView()).onDismiss(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dismiss$1();
                    }
                });
                dismissDim();
            } else {
                super.dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dismiss$1() {
            super.dismiss();
        }
    }

    public void setDefaultBadge(Long l) {
        this.defaultBadgeId = l == null ? 0L : l.longValue();
    }

    public SelectAnimatedEmojiDialog(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment, context, z, num, i, true, resourcesProvider, 16);
    }

    public SelectAnimatedEmojiDialog(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, boolean z2, Theme.ResourcesProvider resourcesProvider, int i2) {
        this(baseFragment, context, z, num, i, z2, resourcesProvider, i2, Theme.getColor(Theme.key_windowBackgroundWhiteBlueIcon, resourcesProvider));
    }

    public SelectAnimatedEmojiDialog(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, boolean z2, Theme.ResourcesProvider resourcesProvider, int i2, int i3) {
        this(baseFragment, context, z, num, i, z2, resourcesProvider, i2, i3, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x06c3  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x06c7  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x06cc  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x06e1  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0795  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0882  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x08cb  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0481 A[EDGE_INSN: B:249:0x0481->B:186:0x0481 BREAK  A[LOOP:0: B:133:0x03c5->B:185:0x046b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0326  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SelectAnimatedEmojiDialog(BaseFragment baseFragment, Context context, boolean z, Integer num, final int i, boolean z2, Theme.ResourcesProvider resourcesProvider, int i2, int i3, boolean z3) {
        char c;
        int i4;
        int i5;
        boolean z4;
        int i6;
        int i7;
        float f;
        EmojiListView emojiListView;
        int i8;
        boolean z5;
        EmojiTabsStrip.EmojiTabButton emojiTabButton;
        int i9;
        super(context);
        final BaseFragment baseFragment2 = baseFragment;
        final Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        int i10 = i3;
        this.SPAN_COUNT_FOR_EMOJI = 8;
        this.SPAN_COUNT_FOR_STICKER = 5;
        this.SPAN_COUNT = 40;
        this.RECENT_MAX_LINES = 5;
        this.EXPAND_MAX_LINES = 3;
        this.selectedReactions = new HashSet();
        this.selectedDocumentIds = new HashSet();
        this.selectorPaint = new Paint(1);
        this.selectorAccentPaint = new Paint(1);
        this.stickerSets = new ArrayList();
        this.currentAccount = UserConfig.selectedAccount;
        this.cachedEmojiTabs = new EmojiTabsStrip[2];
        this.rowHashCodes = new ArrayList();
        this.positionToSection = new SparseIntArray();
        this.sectionToPosition = new SparseIntArray();
        this.positionToExpand = new SparseIntArray();
        this.positionToButton = new SparseIntArray();
        this.expandedEmojiSets = new ArrayList();
        this.installedEmojiSets = new ArrayList();
        this.recentExpanded = false;
        this.recent = new ArrayList();
        this.gifts = new ArrayList();
        this.recentStickers = new ArrayList();
        this.standardEmojis = new ArrayList();
        this.topReactions = new ArrayList();
        this.recentReactions = new ArrayList();
        this.stickers = new ArrayList();
        this.defaultStatuses = new ArrayList();
        this.frozenEmojiPacks = new ArrayList();
        this.packs = new ArrayList();
        this.includeEmpty = false;
        this.includeHint = false;
        this.drawBackground = true;
        this.bigReactionImageReceiver = new ImageReceiver();
        this.isLongPressEnabled = true;
        this.maxDim = 0.25f;
        this.scrimAlpha = 1.0f;
        this.emojiSelectAlpha = 1.0f;
        this.overshootInterpolator = new OvershootInterpolator(2.0f);
        this.topGradientShown = false;
        this.bottomGradientShown = false;
        this.smoothScrolling = false;
        this.searching = false;
        this.searched = false;
        this.searchedLiftUp = false;
        this.gridSearch = false;
        this.searchEmptyViewVisible = false;
        this.paused = false;
        this.pausedExceptSelected = false;
        this.animateExpandFromPosition = -1;
        this.animateExpandToPosition = -1;
        this.animateExpandStartTime = -1L;
        this.defaultSetLoading = false;
        this.updateRows = new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$33();
            }
        };
        this.updateRowsDelayed = new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$34();
            }
        };
        this.durationScale = 1.0f;
        this.showDuration = 800L;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.paint = new Paint();
        this.badgePicker = z3;
        this.resourcesProvider = resourcesProvider2;
        this.type = i;
        this.includeEmpty = z;
        this.baseFragment = baseFragment2;
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        StringBuilder sb = new StringBuilder();
        sb.append("emoji");
        sb.append((i == 0 || i == 12 || i == 9 || i == 10) ? "status" : "reaction");
        sb.append("usehint");
        this.includeHint = globalMainSettings.getInt(sb.toString(), 0) < 3;
        this.accentColor = i10;
        this.selectorPaint.setColor(Theme.getColor(Theme.key_listSelector, resourcesProvider2));
        this.selectorAccentPaint.setColor(ColorUtils.setAlphaComponent(i10, 30));
        this.premiumStarColorFilter = new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_IN);
        this.emojiX = num;
        final Integer numValueOf = num == null ? null : Integer.valueOf(MathUtils.clamp(num.intValue(), AndroidUtilities.m1124dp(26.0f), AndroidUtilities.m1124dp(292.0f)));
        boolean z6 = numValueOf != null && numValueOf.intValue() > AndroidUtilities.m1124dp(170.0f);
        setFocusableInTouchMode(true);
        if (i == 0 || i == 12 || i == 9 || i == 10 || i == 2 || i == 5 || i == 7) {
            this.topMarginDp = i2;
            setPadding(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(4.0f));
            setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f$0.lambda$new$0(view, motionEvent);
                }
            });
        }
        if (numValueOf != null) {
            this.bubble1View = new View(context);
            Drawable drawableMutate = getResources().getDrawable(C2888R.drawable.shadowed_bubble1).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider2), PorterDuff.Mode.MULTIPLY));
            this.bubble1View.setBackground(drawableMutate);
            addView(this.bubble1View, LayoutHelper.createFrame(10, 10.0f, (isBottom() ? 80 : 48) | 3, (numValueOf.intValue() / AndroidUtilities.density) + (z6 ? -12 : 4), isBottom() ? 0 : this.topMarginDp, 0.0f, isBottom() ? this.topMarginDp : 0));
        }
        this.backgroundView = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.1
            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                if (!SelectAnimatedEmojiDialog.this.drawBackground) {
                    super.dispatchDraw(canvas);
                } else {
                    canvas.drawColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider2));
                }
            }
        };
        final boolean z7 = i == 3 || i == 4;
        final boolean z8 = z7;
        int i11 = 12;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.2
            private final Path pathApi20 = new Path();
            private final Paint paintApi20 = new Paint(1);

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                if (!SelectAnimatedEmojiDialog.this.drawBackground) {
                    super.dispatchDraw(canvas);
                    return;
                }
                if (z7) {
                    canvas.save();
                    if (z8) {
                        Theme.applyDefaultShadow(this.paintApi20);
                    }
                    this.paintApi20.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider2));
                    this.paintApi20.setAlpha((int) (getAlpha() * 255.0f));
                    float width = (numValueOf == null ? getWidth() / 2.0f : r0.intValue()) + AndroidUtilities.m1124dp(20.0f);
                    float width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                    float height = (getHeight() - getPaddingBottom()) - getPaddingTop();
                    if (SelectAnimatedEmojiDialog.this.isBottom()) {
                        AndroidUtilities.rectTmp.set(getPaddingLeft() + (width - (SelectAnimatedEmojiDialog.this.scaleX * width)), getPaddingTop() + ((1.0f - SelectAnimatedEmojiDialog.this.scaleY) * height), getPaddingLeft() + width + ((width2 - width) * SelectAnimatedEmojiDialog.this.scaleX), getPaddingTop() + height);
                    } else {
                        AndroidUtilities.rectTmp.set(getPaddingLeft() + (width - (SelectAnimatedEmojiDialog.this.scaleX * width)), getPaddingTop(), getPaddingLeft() + width + ((width2 - width) * SelectAnimatedEmojiDialog.this.scaleX), getPaddingTop() + (height * SelectAnimatedEmojiDialog.this.scaleY));
                    }
                    this.pathApi20.rewind();
                    this.pathApi20.addRoundRect(AndroidUtilities.rectTmp, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), Path.Direction.CW);
                    canvas.drawPath(this.pathApi20, this.paintApi20);
                    canvas.clipPath(this.pathApi20);
                    super.dispatchDraw(canvas);
                    canvas.restore();
                    return;
                }
                super.dispatchDraw(canvas);
            }
        };
        final Integer num2 = numValueOf;
        this.contentView = frameLayout;
        if (!z7) {
            frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.3
                private final Rect rect = new Rect();

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    float width = (num2 == null ? view.getWidth() / 2.0f : r0.intValue()) + AndroidUtilities.m1124dp(20.0f);
                    float width2 = (view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight();
                    float height = (view.getHeight() - view.getPaddingBottom()) - view.getPaddingTop();
                    if (SelectAnimatedEmojiDialog.this.isBottom()) {
                        this.rect.set((int) (view.getPaddingLeft() + (width - (SelectAnimatedEmojiDialog.this.scaleX * width))), (int) (view.getPaddingTop() + ((1.0f - SelectAnimatedEmojiDialog.this.scaleY) * height) + (AndroidUtilities.m1124dp(SelectAnimatedEmojiDialog.this.topMarginDp) * (1.0f - SelectAnimatedEmojiDialog.this.scaleY))), (int) (view.getPaddingLeft() + width + ((width2 - width) * SelectAnimatedEmojiDialog.this.scaleX)), (int) (view.getPaddingTop() + height + (AndroidUtilities.m1124dp(SelectAnimatedEmojiDialog.this.topMarginDp) * (1.0f - SelectAnimatedEmojiDialog.this.scaleY))));
                    } else {
                        this.rect.set((int) (view.getPaddingLeft() + (width - (SelectAnimatedEmojiDialog.this.scaleX * width))), view.getPaddingTop(), (int) (view.getPaddingLeft() + width + ((width2 - width) * SelectAnimatedEmojiDialog.this.scaleX)), (int) (view.getPaddingTop() + (height * SelectAnimatedEmojiDialog.this.scaleY)));
                    }
                    outline.setRoundRect(this.rect, AndroidUtilities.m1124dp(12.0f));
                }
            });
            this.contentView.setClipToOutline(true);
            if (z7) {
                this.contentView.setElevation(2.0f);
            }
        }
        if (i != 0 && i != 12 && i != 9 && i != 10) {
            if (i == 2 || i == 5) {
            }
            this.contentView.addView(this.backgroundView, LayoutHelper.createFrame(-1, -1.0f));
            c = 6;
            addView(this.contentView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, (i != 0 || i == 12 || i == 9 || i == 2 || i == 7) ? this.topMarginDp + 6 : 0.0f, 0.0f, !isBottom() ? this.topMarginDp + 6 : 0.0f));
            if (num2 == null) {
                this.bubble2View = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.4
                    @Override // android.view.View
                    protected void onMeasure(int i12, int i13) {
                        super.onMeasure(i12, i13);
                        setPivotX(getMeasuredWidth() / 2);
                        setPivotY(getMeasuredHeight());
                    }
                };
                i4 = 14;
                Drawable drawable = getResources().getDrawable(C2888R.drawable.shadowed_bubble2_half);
                drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider2), PorterDuff.Mode.MULTIPLY));
                this.bubble2View.setBackground(drawable);
                i5 = 3;
                addView(this.bubble2View, LayoutHelper.createFrame(17, 9.0f, (isBottom() ? 80 : 48) | 3, (num2.intValue() / AndroidUtilities.density) + (z6 ? -25 : 10), isBottom() ? 0.0f : this.topMarginDp + 5, 0.0f, isBottom() ? this.topMarginDp + 14 : 0.0f));
            } else {
                i4 = 14;
                i5 = 3;
            }
            if (baseFragment2 == null && i != i5 && i != 6) {
                if (i != 5 && i != 7 && i != 4 && i != 9 && i != 10 && z2) {
                    z4 = true;
                }
                i6 = 0;
                while (true) {
                    if (i6 >= 2) {
                        break;
                    }
                    Integer num3 = num2;
                    boolean z9 = i != 4;
                    if (!z3) {
                        if (i != 0 && i != i11 && i != 9) {
                            if (i == 10) {
                            }
                            int i12 = i6;
                            EmojiTabsStrip emojiTabsStrip = new EmojiTabsStrip(context, resourcesProvider, z9, z5, false, true, i, z4 ? new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$new$1(baseFragment2);
                                }
                            } : null, i10) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.5
                                @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                                protected ColorFilter getEmojiColorFilter() {
                                    return SelectAnimatedEmojiDialog.this.premiumStarColorFilter;
                                }

                                /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
                                @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                */
                                protected boolean onTabClick(int i13) {
                                    int i14;
                                    if (SelectAnimatedEmojiDialog.this.smoothScrolling) {
                                        return false;
                                    }
                                    if (i == 4 && i13 == 0) {
                                        SelectAnimatedEmojiDialog.this.showStickers = !r7.showStickers;
                                        SelectAnimatedEmojiDialog.this.emojiTabs.setVisibility(8);
                                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                                        selectAnimatedEmojiDialog.emojiTabs = selectAnimatedEmojiDialog.cachedEmojiTabs[SelectAnimatedEmojiDialog.this.showStickers ? 1 : 0];
                                        SelectAnimatedEmojiDialog.this.emojiTabs.setVisibility(0);
                                        SelectAnimatedEmojiDialog.this.emojiTabs.toggleEmojiStickersTab.setDrawable(ContextCompat.getDrawable(getContext(), SelectAnimatedEmojiDialog.this.showStickers ? C2888R.drawable.msg_emoji_stickers : C2888R.drawable.msg_emoji_smiles));
                                        SelectAnimatedEmojiDialog.this.updateRows(true, false, false);
                                        SelectAnimatedEmojiDialog.this.layoutManager.scrollToPositionWithOffset(0, 0);
                                        return true;
                                    }
                                    int i15 = (isGiftsVisible() ? 1 : 0) + 1;
                                    if (isGiftsVisible() && i13 == 1) {
                                        i14 = SelectAnimatedEmojiDialog.this.giftsSectionRow;
                                    } else if ((i != 4 || i13 != 0) && i13 > 0) {
                                        int i16 = i13 - i15;
                                        i14 = SelectAnimatedEmojiDialog.this.sectionToPosition.indexOfKey(i16) >= 0 ? SelectAnimatedEmojiDialog.this.sectionToPosition.get(i16) : 0;
                                    }
                                    SelectAnimatedEmojiDialog.this.scrollToPosition(i14, AndroidUtilities.m1124dp((i == 6 ? 7 : 0) - 2));
                                    SelectAnimatedEmojiDialog.this.emojiTabs.select(i13);
                                    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                                    selectAnimatedEmojiDialog2.emojiGridView.scrolledByUserOnce = true;
                                    selectAnimatedEmojiDialog2.search(null);
                                    SearchBox searchBox = SelectAnimatedEmojiDialog.this.searchBox;
                                    if (searchBox != null && searchBox.categoriesListView != null) {
                                        SelectAnimatedEmojiDialog.this.searchBox.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                                    }
                                    return true;
                                }

                                @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                                protected void onTabCreate(EmojiTabsStrip.EmojiTabButton emojiTabButton2) {
                                    if (SelectAnimatedEmojiDialog.this.showAnimator == null || SelectAnimatedEmojiDialog.this.showAnimator.isRunning()) {
                                        emojiTabButton2.setScaleX(0.0f);
                                        emojiTabButton2.setScaleY(0.0f);
                                    }
                                }
                            };
                            resourcesProvider2 = resourcesProvider;
                            emojiTabButton = emojiTabsStrip.recentTab;
                            if (emojiTabButton != null) {
                                emojiTabButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5
                                    @Override // android.view.View.OnLongClickListener
                                    public final boolean onLongClick(View view) {
                                        return this.f$0.lambda$new$2(view);
                                    }
                                });
                            }
                            emojiTabsStrip.updateButtonDrawables = false;
                            if (i == 4) {
                                emojiTabsStrip.setAnimatedEmojiCacheType(13);
                                i11 = 12;
                            } else {
                                if (i != 0) {
                                    i11 = 12;
                                    if (i != 12 && i != 2) {
                                        i9 = 5;
                                    }
                                    emojiTabsStrip.setAnimatedEmojiCacheType(i9);
                                } else {
                                    i11 = 12;
                                }
                                i9 = 6;
                                emojiTabsStrip.setAnimatedEmojiCacheType(i9);
                            }
                            emojiTabsStrip.animateAppear = num3 == null;
                            emojiTabsStrip.setPaddingLeft(i == 6 ? 10.0f : 5.0f);
                            if (i != 14) {
                                if (i != 8 && i != 13) {
                                    this.contentView.addView(emojiTabsStrip, LayoutHelper.createFrame(-1, 36.0f));
                                }
                            }
                            this.cachedEmojiTabs[i12] = emojiTabsStrip;
                            i10 = i3;
                            i6 = i12 + 1;
                            i4 = 14;
                            num2 = num3;
                            c = 6;
                            baseFragment2 = baseFragment;
                        }
                        z5 = true;
                        int i122 = i6;
                        EmojiTabsStrip emojiTabsStrip2 = new EmojiTabsStrip(context, resourcesProvider, z9, z5, false, true, i, z4 ? new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$new$1(baseFragment2);
                            }
                        } : null, i10) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.5
                            @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                            protected ColorFilter getEmojiColorFilter() {
                                return SelectAnimatedEmojiDialog.this.premiumStarColorFilter;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
                            @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            protected boolean onTabClick(int i13) {
                                int i14;
                                if (SelectAnimatedEmojiDialog.this.smoothScrolling) {
                                    return false;
                                }
                                if (i == 4 && i13 == 0) {
                                    SelectAnimatedEmojiDialog.this.showStickers = !r7.showStickers;
                                    SelectAnimatedEmojiDialog.this.emojiTabs.setVisibility(8);
                                    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                                    selectAnimatedEmojiDialog.emojiTabs = selectAnimatedEmojiDialog.cachedEmojiTabs[SelectAnimatedEmojiDialog.this.showStickers ? 1 : 0];
                                    SelectAnimatedEmojiDialog.this.emojiTabs.setVisibility(0);
                                    SelectAnimatedEmojiDialog.this.emojiTabs.toggleEmojiStickersTab.setDrawable(ContextCompat.getDrawable(getContext(), SelectAnimatedEmojiDialog.this.showStickers ? C2888R.drawable.msg_emoji_stickers : C2888R.drawable.msg_emoji_smiles));
                                    SelectAnimatedEmojiDialog.this.updateRows(true, false, false);
                                    SelectAnimatedEmojiDialog.this.layoutManager.scrollToPositionWithOffset(0, 0);
                                    return true;
                                }
                                int i15 = (isGiftsVisible() ? 1 : 0) + 1;
                                if (isGiftsVisible() && i13 == 1) {
                                    i14 = SelectAnimatedEmojiDialog.this.giftsSectionRow;
                                } else if ((i != 4 || i13 != 0) && i13 > 0) {
                                    int i16 = i13 - i15;
                                    i14 = SelectAnimatedEmojiDialog.this.sectionToPosition.indexOfKey(i16) >= 0 ? SelectAnimatedEmojiDialog.this.sectionToPosition.get(i16) : 0;
                                }
                                SelectAnimatedEmojiDialog.this.scrollToPosition(i14, AndroidUtilities.m1124dp((i == 6 ? 7 : 0) - 2));
                                SelectAnimatedEmojiDialog.this.emojiTabs.select(i13);
                                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                                selectAnimatedEmojiDialog2.emojiGridView.scrolledByUserOnce = true;
                                selectAnimatedEmojiDialog2.search(null);
                                SearchBox searchBox = SelectAnimatedEmojiDialog.this.searchBox;
                                if (searchBox != null && searchBox.categoriesListView != null) {
                                    SelectAnimatedEmojiDialog.this.searchBox.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                                }
                                return true;
                            }

                            @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                            protected void onTabCreate(EmojiTabsStrip.EmojiTabButton emojiTabButton2) {
                                if (SelectAnimatedEmojiDialog.this.showAnimator == null || SelectAnimatedEmojiDialog.this.showAnimator.isRunning()) {
                                    emojiTabButton2.setScaleX(0.0f);
                                    emojiTabButton2.setScaleY(0.0f);
                                }
                            }
                        };
                        resourcesProvider2 = resourcesProvider;
                        emojiTabButton = emojiTabsStrip2.recentTab;
                        if (emojiTabButton != null) {
                        }
                        emojiTabsStrip2.updateButtonDrawables = false;
                        if (i == 4) {
                        }
                        emojiTabsStrip2.animateAppear = num3 == null;
                        emojiTabsStrip2.setPaddingLeft(i == 6 ? 10.0f : 5.0f);
                        if (i != 14) {
                        }
                        this.cachedEmojiTabs[i122] = emojiTabsStrip2;
                        i10 = i3;
                        i6 = i122 + 1;
                        i4 = 14;
                        num2 = num3;
                        c = 6;
                        baseFragment2 = baseFragment;
                    }
                    z5 = false;
                    int i1222 = i6;
                    EmojiTabsStrip emojiTabsStrip22 = new EmojiTabsStrip(context, resourcesProvider, z9, z5, false, true, i, z4 ? new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$1(baseFragment2);
                        }
                    } : null, i10) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.5
                        @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                        protected ColorFilter getEmojiColorFilter() {
                            return SelectAnimatedEmojiDialog.this.premiumStarColorFilter;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
                        @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        protected boolean onTabClick(int i13) {
                            int i14;
                            if (SelectAnimatedEmojiDialog.this.smoothScrolling) {
                                return false;
                            }
                            if (i == 4 && i13 == 0) {
                                SelectAnimatedEmojiDialog.this.showStickers = !r7.showStickers;
                                SelectAnimatedEmojiDialog.this.emojiTabs.setVisibility(8);
                                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                                selectAnimatedEmojiDialog.emojiTabs = selectAnimatedEmojiDialog.cachedEmojiTabs[SelectAnimatedEmojiDialog.this.showStickers ? 1 : 0];
                                SelectAnimatedEmojiDialog.this.emojiTabs.setVisibility(0);
                                SelectAnimatedEmojiDialog.this.emojiTabs.toggleEmojiStickersTab.setDrawable(ContextCompat.getDrawable(getContext(), SelectAnimatedEmojiDialog.this.showStickers ? C2888R.drawable.msg_emoji_stickers : C2888R.drawable.msg_emoji_smiles));
                                SelectAnimatedEmojiDialog.this.updateRows(true, false, false);
                                SelectAnimatedEmojiDialog.this.layoutManager.scrollToPositionWithOffset(0, 0);
                                return true;
                            }
                            int i15 = (isGiftsVisible() ? 1 : 0) + 1;
                            if (isGiftsVisible() && i13 == 1) {
                                i14 = SelectAnimatedEmojiDialog.this.giftsSectionRow;
                            } else if ((i != 4 || i13 != 0) && i13 > 0) {
                                int i16 = i13 - i15;
                                i14 = SelectAnimatedEmojiDialog.this.sectionToPosition.indexOfKey(i16) >= 0 ? SelectAnimatedEmojiDialog.this.sectionToPosition.get(i16) : 0;
                            }
                            SelectAnimatedEmojiDialog.this.scrollToPosition(i14, AndroidUtilities.m1124dp((i == 6 ? 7 : 0) - 2));
                            SelectAnimatedEmojiDialog.this.emojiTabs.select(i13);
                            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                            selectAnimatedEmojiDialog2.emojiGridView.scrolledByUserOnce = true;
                            selectAnimatedEmojiDialog2.search(null);
                            SearchBox searchBox = SelectAnimatedEmojiDialog.this.searchBox;
                            if (searchBox != null && searchBox.categoriesListView != null) {
                                SelectAnimatedEmojiDialog.this.searchBox.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                            }
                            return true;
                        }

                        @Override // org.telegram.p029ui.Components.EmojiTabsStrip
                        protected void onTabCreate(EmojiTabsStrip.EmojiTabButton emojiTabButton2) {
                            if (SelectAnimatedEmojiDialog.this.showAnimator == null || SelectAnimatedEmojiDialog.this.showAnimator.isRunning()) {
                                emojiTabButton2.setScaleX(0.0f);
                                emojiTabButton2.setScaleY(0.0f);
                            }
                        }
                    };
                    resourcesProvider2 = resourcesProvider;
                    emojiTabButton = emojiTabsStrip22.recentTab;
                    if (emojiTabButton != null) {
                    }
                    emojiTabsStrip22.updateButtonDrawables = false;
                    if (i == 4) {
                    }
                    emojiTabsStrip22.animateAppear = num3 == null;
                    emojiTabsStrip22.setPaddingLeft(i == 6 ? 10.0f : 5.0f);
                    if (i != 14) {
                    }
                    this.cachedEmojiTabs[i1222] = emojiTabsStrip22;
                    i10 = i3;
                    i6 = i1222 + 1;
                    i4 = 14;
                    num2 = num3;
                    c = 6;
                    baseFragment2 = baseFragment;
                }
                i7 = i4;
                final Integer num4 = num2;
                EmojiTabsStrip[] emojiTabsStripArr = this.cachedEmojiTabs;
                this.emojiTabs = emojiTabsStripArr[0];
                emojiTabsStripArr[1].setVisibility(8);
                View view = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.6
                    @Override // android.view.View
                    protected void onMeasure(int i13, int i14) {
                        super.onMeasure(i13, i14);
                        if (num4 != null) {
                            setPivotX(r1.intValue());
                        }
                    }
                };
                this.emojiTabsShadow = view;
                view.setBackgroundColor(Theme.getColor(Theme.key_divider, resourcesProvider2));
                if (i == i7 || i == 8 || i == 13) {
                    f = 1.0f;
                } else {
                    f = 1.0f;
                    this.contentView.addView(this.emojiTabsShadow, LayoutHelper.createFrame(-1, 1.0f / AndroidUtilities.density, 48, 0.0f, 36.0f, 0.0f, 0.0f));
                }
                AndroidUtilities.updateViewVisibilityAnimated(this.emojiTabsShadow, true, f, false);
                this.emojiGridView = new EmojiListView(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.7
                    @Override // androidx.recyclerview.widget.RecyclerView
                    public void onScrolled(int i13, int i14) {
                        int i15;
                        super.onScrolled(i13, i14);
                        SelectAnimatedEmojiDialog.this.checkScroll();
                        if (!SelectAnimatedEmojiDialog.this.smoothScrolling) {
                            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                            selectAnimatedEmojiDialog.updateTabsPosition(selectAnimatedEmojiDialog.layoutManager.findFirstCompletelyVisibleItemPosition());
                        }
                        SelectAnimatedEmojiDialog.this.updateSearchBox();
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                        AndroidUtilities.updateViewVisibilityAnimated(selectAnimatedEmojiDialog2.emojiTabsShadow, selectAnimatedEmojiDialog2.emojiGridView.computeVerticalScrollOffset() != 0 || (i15 = i) == 0 || i15 == 12 || i15 == 10 || i15 == 1 || i15 == 11 || i15 == 6, 1.0f, true);
                        SelectAnimatedEmojiDialog.this.lambda$new$3();
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView
                    public void onScrollStateChanged(int i13) {
                        if (i13 == 0) {
                            SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                            if (SelectAnimatedEmojiDialog.this.searchRow != -1 && SelectAnimatedEmojiDialog.this.searchBox.getVisibility() == 0 && SelectAnimatedEmojiDialog.this.searchBox.getTranslationY() > (-AndroidUtilities.m1124dp(51.0f))) {
                                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                                selectAnimatedEmojiDialog.scrollToPosition(selectAnimatedEmojiDialog.searchBox.getTranslationY() > ((float) (-AndroidUtilities.m1124dp(16.0f))) ? 0 : 1, 0);
                            }
                        }
                        super.onScrollStateChanged(i13);
                    }
                };
                DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.8
                    @Override // androidx.recyclerview.widget.DefaultItemAnimator
                    protected float animateByScale(View view2) {
                        return view2 instanceof EmojiPackExpand ? 0.6f : 0.0f;
                    }
                };
                this.emojiItemAnimator = defaultItemAnimator;
                float f2 = f;
                defaultItemAnimator.setAddDuration(220L);
                this.emojiItemAnimator.setMoveDuration(260L);
                this.emojiItemAnimator.setChangeDuration(160L);
                this.emojiItemAnimator.setSupportsChangeAnimations(false);
                DefaultItemAnimator defaultItemAnimator2 = this.emojiItemAnimator;
                CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                defaultItemAnimator2.setMoveInterpolator(cubicBezierInterpolator);
                this.emojiItemAnimator.setDelayAnimations(false);
                this.emojiGridView.setItemAnimator(this.emojiItemAnimator);
                this.emojiGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
                Adapter adapter = new Adapter();
                this.adapter = adapter;
                this.emojiGridView.setAdapter(adapter);
                EmojiListView emojiListView2 = this.emojiGridView;
                int i13 = 40;
                GridLayoutManager gridLayoutManager = new GridLayoutManager(context, i13) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.9
                    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i14) {
                        try {
                            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.9.1
                                @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                                public void onEnd() {
                                    SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                                }
                            };
                            linearSmoothScrollerCustom.setTargetPosition(i14);
                            startSmoothScroll(linearSmoothScrollerCustom);
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                };
                this.layoutManager = gridLayoutManager;
                emojiListView2.setLayoutManager(gridLayoutManager);
                this.layoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.10
                    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                    public int getSpanSize(int i14) {
                        if (SelectAnimatedEmojiDialog.this.positionToSection.indexOfKey(i14) >= 0 || SelectAnimatedEmojiDialog.this.positionToButton.indexOfKey(i14) >= 0 || i14 == SelectAnimatedEmojiDialog.this.recentReactionsSectionRow || i14 == SelectAnimatedEmojiDialog.this.stickersSectionRow || i14 == SelectAnimatedEmojiDialog.this.giftsSectionRow || i14 == SelectAnimatedEmojiDialog.this.popularSectionRow || i14 == SelectAnimatedEmojiDialog.this.longtapHintRow || i14 == SelectAnimatedEmojiDialog.this.searchRow || i14 == SelectAnimatedEmojiDialog.this.topicEmojiHeaderRow) {
                            return SelectAnimatedEmojiDialog.this.layoutManager.getSpanCount();
                        }
                        return ((i14 < SelectAnimatedEmojiDialog.this.stickersStartRow || i14 >= SelectAnimatedEmojiDialog.this.stickersEndRow) && !SelectAnimatedEmojiDialog.this.showStickers) ? 5 : 8;
                    }
                });
                this.gridViewContainer = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.11
                    @Override // android.widget.FrameLayout, android.view.View
                    protected void onMeasure(int i14, int i15) {
                        super.onMeasure(i14, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i15) + AndroidUtilities.m1124dp(36.0f), TLObject.FLAG_30));
                    }
                };
                FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.12
                    private final Rect rect = new Rect();

                    @Override // android.view.ViewGroup
                    protected boolean drawChild(Canvas canvas, View view2, long j) {
                        if (view2 == SelectAnimatedEmojiDialog.this.emojiGridView && HwEmojis.isHwEnabled() && HwEmojis.isCascade()) {
                            for (int i14 = 0; i14 < SelectAnimatedEmojiDialog.this.emojiGridView.getChildCount(); i14++) {
                                View childAt = SelectAnimatedEmojiDialog.this.emojiGridView.getChildAt(i14);
                                if (childAt instanceof ImageViewEmoji) {
                                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) childAt;
                                    if (imageViewEmoji.getAnimatedScale() == 1.0f) {
                                        this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                        canvas.save();
                                        canvas.clipRect(this.rect);
                                        super.drawChild(canvas, view2, j);
                                        canvas.restore();
                                    } else if (imageViewEmoji.getAnimatedScale() > 0.0f) {
                                        this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                        this.rect.set((int) (r2.centerX() - ((this.rect.width() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerY() - ((this.rect.height() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerX() + ((this.rect.width() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerY() + ((this.rect.height() / 2.0f) * imageViewEmoji.getAnimatedScale())));
                                        canvas.save();
                                        canvas.clipRect(this.rect);
                                        canvas.scale(imageViewEmoji.getAnimatedScale(), imageViewEmoji.getAnimatedScale(), this.rect.centerX(), this.rect.centerY());
                                        super.drawChild(canvas, view2, j);
                                        canvas.restore();
                                    }
                                } else if ((childAt instanceof TextView) || (childAt instanceof EmojiPackExpand) || (childAt instanceof EmojiPackButton) || (childAt instanceof HeaderView)) {
                                    this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                    canvas.save();
                                    canvas.clipRect(this.rect);
                                    super.drawChild(canvas, view2, j);
                                    canvas.restore();
                                }
                            }
                            return false;
                        }
                        return super.drawChild(canvas, view2, j);
                    }
                };
                this.emojiGridViewContainer = frameLayout2;
                frameLayout2.addView(this.emojiGridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
                this.gridViewContainer.addView(this.emojiGridViewContainer, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
                emojiListView = new EmojiListView(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.13
                    @Override // androidx.recyclerview.widget.RecyclerView
                    public void onScrolled(int i14, int i15) {
                        super.onScrolled(i14, i15);
                        SelectAnimatedEmojiDialog.this.checkScroll();
                    }
                };
                this.emojiSearchGridView = emojiListView;
                if (emojiListView.getItemAnimator() != null) {
                    this.emojiSearchGridView.getItemAnimator().setDurations(180L);
                    this.emojiSearchGridView.getItemAnimator().setMoveInterpolator(cubicBezierInterpolator);
                }
                TextView textView = new TextView(context);
                if (i == 4) {
                    textView.setText(LocaleController.getString(C2888R.string.NoEmojiOrStickersFound));
                } else if (i == 0 || i == 13 || i == i11 || i == 11 || i == 9 || i == 10) {
                    textView.setText(LocaleController.getString(C2888R.string.NoEmojiFound));
                } else if (i == 1 || i == 2) {
                    textView.setText(LocaleController.getString(C2888R.string.NoReactionsFound));
                } else if (i == 14) {
                    textView.setText(LocaleController.getString(C2888R.string.NoEffectsFound));
                } else {
                    textView.setText(LocaleController.getString(C2888R.string.NoIconsFound));
                }
                textView.setTextSize(1, 14.0f);
                textView.setTextColor(Theme.getColor(Theme.key_chat_emojiPanelEmptyText, resourcesProvider));
                this.emojiSearchEmptyViewImageView = new BackupImageView(context);
                FrameLayout frameLayout3 = new FrameLayout(context);
                this.emojiSearchEmptyView = frameLayout3;
                frameLayout3.addView(this.emojiSearchEmptyViewImageView, LayoutHelper.createFrame(36, 36.0f, 49, 0.0f, 16.0f, 0.0f, 0.0f));
                this.emojiSearchEmptyView.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 60.0f, 0.0f, 0.0f));
                this.emojiSearchEmptyView.setVisibility(8);
                this.emojiSearchEmptyView.setAlpha(0.0f);
                this.gridViewContainer.addView(this.emojiSearchEmptyView, LayoutHelper.createFrame(-1, -2.0f, 16, 0.0f, 0.0f, 0.0f, 0.0f));
                this.emojiSearchGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(54.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
                EmojiListView emojiListView3 = this.emojiSearchGridView;
                SearchAdapter searchAdapter = new SearchAdapter();
                this.searchAdapter = searchAdapter;
                emojiListView3.setAdapter(searchAdapter);
                EmojiListView emojiListView4 = this.emojiSearchGridView;
                GridLayoutManager gridLayoutManager2 = new GridLayoutManager(context, i13) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.14
                    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i14) {
                        try {
                            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.14.1
                                @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                                public void onEnd() {
                                    SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                                }
                            };
                            linearSmoothScrollerCustom.setTargetPosition(i14);
                            startSmoothScroll(linearSmoothScrollerCustom);
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                    }
                };
                this.searchLayoutManager = gridLayoutManager2;
                emojiListView4.setLayoutManager(gridLayoutManager2);
                this.searchLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.15
                    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                    public int getSpanSize(int i14) {
                        int itemViewType = SelectAnimatedEmojiDialog.this.searchAdapter.getItemViewType(i14);
                        if (itemViewType == 6) {
                            return SelectAnimatedEmojiDialog.this.layoutManager.getSpanCount();
                        }
                        return (itemViewType == 5 || SelectAnimatedEmojiDialog.this.searchAdapter.isSticker(i14)) ? 8 : 5;
                    }
                });
                this.emojiSearchGridView.setVisibility(8);
                this.gridViewContainer.addView(this.emojiSearchGridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
                this.contentView.addView(this.gridViewContainer, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, (i == 8 || i == 13 || i == 14) ? 0.0f : (f2 / AndroidUtilities.density) + 36.0f, 0.0f, z3 ? 48.0f : 0.0f));
                if (z3) {
                    FrameLayout frameLayout4 = new FrameLayout(context);
                    frameLayout4.setBackgroundColor(Theme.getColor(Theme.key_chat_emojiPanelBackground, resourcesProvider));
                    EditTextCaption editTextCaption = new EditTextCaption(context, resourcesProvider);
                    this.commentView = editTextCaption;
                    editTextCaption.setHint(LocaleController.getString(C2888R.string.Caption));
                    this.commentView.setTextSize(1, 16.0f);
                    this.commentView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
                    this.commentView.setHintTextColor(Theme.getColor(Theme.key_chat_emojiSearchIcon, resourcesProvider));
                    this.commentView.setCursorColor(Theme.getColor(Theme.key_featuredStickers_addedIcon, resourcesProvider));
                    this.commentView.setCursorWidth(1.5f);
                    this.commentView.setCursorSize(AndroidUtilities.m1124dp(20.0f));
                    this.commentView.setBackground(null);
                    this.commentView.setSingleLine(true);
                    this.commentView.setLines(1);
                    this.commentView.setMaxLines(1);
                    BadgeDTO badge = BadgesController.INSTANCE.getBadge(UserConfig.getInstance(this.currentAccount).getCurrentUser());
                    if (badge != null && badge.getText() != null) {
                        this.commentView.setText(badge.getText());
                    }
                    frameLayout4.addView(this.commentView, LayoutHelper.createFrame(-1, -2.0f, 16, 16.0f, 0.0f, 16.0f, 0.0f));
                    i8 = -1;
                    this.contentView.addView(frameLayout4, LayoutHelper.createFrame(-1, 48, 80));
                } else {
                    i8 = -1;
                }
                RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = new RecyclerAnimationScrollHelper(this.emojiGridView, this.layoutManager);
                this.scrollHelper = recyclerAnimationScrollHelper;
                recyclerAnimationScrollHelper.setAnimationCallback(new RecyclerAnimationScrollHelper.AnimationCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.16
                    @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
                    public void onPreAnimation() {
                        SelectAnimatedEmojiDialog.this.smoothScrolling = true;
                    }

                    @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
                    public void onEndAnimation() {
                        SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                    }
                });
                this.scrollHelper.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6
                    @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.ScrollListener
                    public final void onScroll() {
                        this.f$0.lambda$new$3();
                    }
                });
                C660517 c660517 = new C660517(i, z3, context, resourcesProvider, num);
                this.emojiGridView.setOnItemLongClickListener(c660517, (long) (ViewConfiguration.getLongPressTimeout() * 0.25f));
                this.emojiSearchGridView.setOnItemLongClickListener(c660517, (long) (ViewConfiguration.getLongPressTimeout() * 0.25f));
                RecyclerListView.OnItemClickListener onItemClickListener = new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view2, int i14) {
                        this.f$0.lambda$new$4(i, view2, i14);
                    }
                };
                this.emojiGridView.setOnItemClickListener(onItemClickListener);
                this.emojiSearchGridView.setOnItemClickListener(onItemClickListener);
                SearchBox searchBox = new SearchBox(context, z2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.18
                    @Override // android.view.ViewGroup, android.view.View
                    protected void dispatchDraw(Canvas canvas) {
                        Canvas canvas2;
                        if (SelectAnimatedEmojiDialog.this.backgroundDelegate != null) {
                            canvas2 = canvas;
                            SelectAnimatedEmojiDialog.this.backgroundDelegate.drawRect(canvas2, 0, 0, getMeasuredWidth(), getMeasuredHeight(), SelectAnimatedEmojiDialog.this.searchBox.getX() + SelectAnimatedEmojiDialog.this.gridViewContainer.getX(), SelectAnimatedEmojiDialog.this.searchBox.getY() + SelectAnimatedEmojiDialog.this.gridViewContainer.getY());
                        } else {
                            canvas2 = canvas;
                        }
                        super.dispatchDraw(canvas2);
                    }

                    @Override // android.view.View
                    public void setTranslationY(float f3) {
                        if (f3 != getTranslationY()) {
                            super.setTranslationY(f3);
                            if (SelectAnimatedEmojiDialog.this.backgroundDelegate != null) {
                                invalidate();
                            }
                        }
                    }
                };
                this.searchBox = searchBox;
                searchBox.setTranslationY(-AndroidUtilities.m1124dp(52.0f));
                this.searchBox.setVisibility(4);
                this.gridViewContainer.addView(this.searchBox, LayoutHelper.createFrame(-1, 52.0f, 48, 0.0f, -4.0f, 0.0f, 0.0f));
                this.topGradientView = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.19
                    @Override // android.view.View
                    protected void onMeasure(int i14, int i15) {
                        super.onMeasure(i14, i15);
                        if (num4 != null) {
                            setPivotX(r1.intValue());
                        }
                    }
                };
                Drawable drawable2 = getResources().getDrawable(C2888R.drawable.gradient_top);
                int i14 = Theme.key_actionBarDefaultSubmenuBackground;
                int iMultiplyAlphaComponent = AndroidUtilities.multiplyAlphaComponent(Theme.getColor(i14, resourcesProvider), 0.8f);
                PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
                drawable2.setColorFilter(new PorterDuffColorFilter(iMultiplyAlphaComponent, mode));
                this.topGradientView.setBackground(drawable2);
                this.topGradientView.setAlpha(0.0f);
                this.contentView.addView(this.topGradientView, LayoutHelper.createFrame(-1, 20.0f, 55, 0.0f, (f2 / AndroidUtilities.density) + 36.0f, 0.0f, 0.0f));
                this.bottomGradientView = new View(context);
                Drawable drawable3 = getResources().getDrawable(C2888R.drawable.gradient_bottom);
                drawable3.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i14, resourcesProvider), mode));
                if (i == 14) {
                    this.bottomGradientView.setBackground(drawable3);
                }
                this.bottomGradientView.setAlpha(0.0f);
                this.contentView.addView(this.bottomGradientView, LayoutHelper.createFrame(i8, 20, 87));
                View view2 = new View(context);
                this.contentViewForeground = view2;
                view2.setAlpha(0.0f);
                this.contentViewForeground.setBackgroundColor(-16777216);
                this.contentView.addView(this.contentViewForeground, LayoutHelper.createFrame(i8, -1.0f));
                preload(i, this.currentAccount);
                this.bigReactionImageReceiver.setLayerNum(7);
                if (isAnimatedShow()) {
                    HwEmojis.beforePreparing();
                }
                updateRows(true, false);
            }
            z4 = false;
            i6 = 0;
            while (true) {
                if (i6 >= 2) {
                }
                this.cachedEmojiTabs[i1222] = emojiTabsStrip22;
                i10 = i3;
                i6 = i1222 + 1;
                i4 = 14;
                num2 = num3;
                c = 6;
                baseFragment2 = baseFragment;
            }
            i7 = i4;
            final Integer num42 = num2;
            EmojiTabsStrip[] emojiTabsStripArr2 = this.cachedEmojiTabs;
            this.emojiTabs = emojiTabsStripArr2[0];
            emojiTabsStripArr2[1].setVisibility(8);
            View view3 = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.6
                @Override // android.view.View
                protected void onMeasure(int i132, int i142) {
                    super.onMeasure(i132, i142);
                    if (num42 != null) {
                        setPivotX(r1.intValue());
                    }
                }
            };
            this.emojiTabsShadow = view3;
            view3.setBackgroundColor(Theme.getColor(Theme.key_divider, resourcesProvider2));
            if (i == i7) {
                f = 1.0f;
            }
            AndroidUtilities.updateViewVisibilityAnimated(this.emojiTabsShadow, true, f, false);
            this.emojiGridView = new EmojiListView(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.7
                @Override // androidx.recyclerview.widget.RecyclerView
                public void onScrolled(int i132, int i142) {
                    int i15;
                    super.onScrolled(i132, i142);
                    SelectAnimatedEmojiDialog.this.checkScroll();
                    if (!SelectAnimatedEmojiDialog.this.smoothScrolling) {
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                        selectAnimatedEmojiDialog.updateTabsPosition(selectAnimatedEmojiDialog.layoutManager.findFirstCompletelyVisibleItemPosition());
                    }
                    SelectAnimatedEmojiDialog.this.updateSearchBox();
                    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                    AndroidUtilities.updateViewVisibilityAnimated(selectAnimatedEmojiDialog2.emojiTabsShadow, selectAnimatedEmojiDialog2.emojiGridView.computeVerticalScrollOffset() != 0 || (i15 = i) == 0 || i15 == 12 || i15 == 10 || i15 == 1 || i15 == 11 || i15 == 6, 1.0f, true);
                    SelectAnimatedEmojiDialog.this.lambda$new$3();
                }

                @Override // androidx.recyclerview.widget.RecyclerView
                public void onScrollStateChanged(int i132) {
                    if (i132 == 0) {
                        SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                        if (SelectAnimatedEmojiDialog.this.searchRow != -1 && SelectAnimatedEmojiDialog.this.searchBox.getVisibility() == 0 && SelectAnimatedEmojiDialog.this.searchBox.getTranslationY() > (-AndroidUtilities.m1124dp(51.0f))) {
                            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                            selectAnimatedEmojiDialog.scrollToPosition(selectAnimatedEmojiDialog.searchBox.getTranslationY() > ((float) (-AndroidUtilities.m1124dp(16.0f))) ? 0 : 1, 0);
                        }
                    }
                    super.onScrollStateChanged(i132);
                }
            };
            DefaultItemAnimator defaultItemAnimator3 = new DefaultItemAnimator() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.8
                @Override // androidx.recyclerview.widget.DefaultItemAnimator
                protected float animateByScale(View view22) {
                    return view22 instanceof EmojiPackExpand ? 0.6f : 0.0f;
                }
            };
            this.emojiItemAnimator = defaultItemAnimator3;
            float f22 = f;
            defaultItemAnimator3.setAddDuration(220L);
            this.emojiItemAnimator.setMoveDuration(260L);
            this.emojiItemAnimator.setChangeDuration(160L);
            this.emojiItemAnimator.setSupportsChangeAnimations(false);
            DefaultItemAnimator defaultItemAnimator22 = this.emojiItemAnimator;
            CubicBezierInterpolator cubicBezierInterpolator2 = CubicBezierInterpolator.EASE_OUT_QUINT;
            defaultItemAnimator22.setMoveInterpolator(cubicBezierInterpolator2);
            this.emojiItemAnimator.setDelayAnimations(false);
            this.emojiGridView.setItemAnimator(this.emojiItemAnimator);
            this.emojiGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
            Adapter adapter2 = new Adapter();
            this.adapter = adapter2;
            this.emojiGridView.setAdapter(adapter2);
            EmojiListView emojiListView22 = this.emojiGridView;
            int i132 = 40;
            GridLayoutManager gridLayoutManager3 = new GridLayoutManager(context, i132) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.9
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i142) {
                    try {
                        LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.9.1
                            @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                            public void onEnd() {
                                SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                            }
                        };
                        linearSmoothScrollerCustom.setTargetPosition(i142);
                        startSmoothScroll(linearSmoothScrollerCustom);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
            };
            this.layoutManager = gridLayoutManager3;
            emojiListView22.setLayoutManager(gridLayoutManager3);
            this.layoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.10
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i142) {
                    if (SelectAnimatedEmojiDialog.this.positionToSection.indexOfKey(i142) >= 0 || SelectAnimatedEmojiDialog.this.positionToButton.indexOfKey(i142) >= 0 || i142 == SelectAnimatedEmojiDialog.this.recentReactionsSectionRow || i142 == SelectAnimatedEmojiDialog.this.stickersSectionRow || i142 == SelectAnimatedEmojiDialog.this.giftsSectionRow || i142 == SelectAnimatedEmojiDialog.this.popularSectionRow || i142 == SelectAnimatedEmojiDialog.this.longtapHintRow || i142 == SelectAnimatedEmojiDialog.this.searchRow || i142 == SelectAnimatedEmojiDialog.this.topicEmojiHeaderRow) {
                        return SelectAnimatedEmojiDialog.this.layoutManager.getSpanCount();
                    }
                    return ((i142 < SelectAnimatedEmojiDialog.this.stickersStartRow || i142 >= SelectAnimatedEmojiDialog.this.stickersEndRow) && !SelectAnimatedEmojiDialog.this.showStickers) ? 5 : 8;
                }
            });
            this.gridViewContainer = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.11
                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i142, int i15) {
                    super.onMeasure(i142, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i15) + AndroidUtilities.m1124dp(36.0f), TLObject.FLAG_30));
                }
            };
            FrameLayout frameLayout22 = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.12
                private final Rect rect = new Rect();

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view22, long j) {
                    if (view22 == SelectAnimatedEmojiDialog.this.emojiGridView && HwEmojis.isHwEnabled() && HwEmojis.isCascade()) {
                        for (int i142 = 0; i142 < SelectAnimatedEmojiDialog.this.emojiGridView.getChildCount(); i142++) {
                            View childAt = SelectAnimatedEmojiDialog.this.emojiGridView.getChildAt(i142);
                            if (childAt instanceof ImageViewEmoji) {
                                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) childAt;
                                if (imageViewEmoji.getAnimatedScale() == 1.0f) {
                                    this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                    canvas.save();
                                    canvas.clipRect(this.rect);
                                    super.drawChild(canvas, view22, j);
                                    canvas.restore();
                                } else if (imageViewEmoji.getAnimatedScale() > 0.0f) {
                                    this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                    this.rect.set((int) (r2.centerX() - ((this.rect.width() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerY() - ((this.rect.height() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerX() + ((this.rect.width() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerY() + ((this.rect.height() / 2.0f) * imageViewEmoji.getAnimatedScale())));
                                    canvas.save();
                                    canvas.clipRect(this.rect);
                                    canvas.scale(imageViewEmoji.getAnimatedScale(), imageViewEmoji.getAnimatedScale(), this.rect.centerX(), this.rect.centerY());
                                    super.drawChild(canvas, view22, j);
                                    canvas.restore();
                                }
                            } else if ((childAt instanceof TextView) || (childAt instanceof EmojiPackExpand) || (childAt instanceof EmojiPackButton) || (childAt instanceof HeaderView)) {
                                this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                canvas.save();
                                canvas.clipRect(this.rect);
                                super.drawChild(canvas, view22, j);
                                canvas.restore();
                            }
                        }
                        return false;
                    }
                    return super.drawChild(canvas, view22, j);
                }
            };
            this.emojiGridViewContainer = frameLayout22;
            frameLayout22.addView(this.emojiGridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
            this.gridViewContainer.addView(this.emojiGridViewContainer, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
            emojiListView = new EmojiListView(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.13
                @Override // androidx.recyclerview.widget.RecyclerView
                public void onScrolled(int i142, int i15) {
                    super.onScrolled(i142, i15);
                    SelectAnimatedEmojiDialog.this.checkScroll();
                }
            };
            this.emojiSearchGridView = emojiListView;
            if (emojiListView.getItemAnimator() != null) {
            }
            TextView textView2 = new TextView(context);
            if (i == 4) {
            }
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_chat_emojiPanelEmptyText, resourcesProvider));
            this.emojiSearchEmptyViewImageView = new BackupImageView(context);
            FrameLayout frameLayout32 = new FrameLayout(context);
            this.emojiSearchEmptyView = frameLayout32;
            frameLayout32.addView(this.emojiSearchEmptyViewImageView, LayoutHelper.createFrame(36, 36.0f, 49, 0.0f, 16.0f, 0.0f, 0.0f));
            this.emojiSearchEmptyView.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 60.0f, 0.0f, 0.0f));
            this.emojiSearchEmptyView.setVisibility(8);
            this.emojiSearchEmptyView.setAlpha(0.0f);
            this.gridViewContainer.addView(this.emojiSearchEmptyView, LayoutHelper.createFrame(-1, -2.0f, 16, 0.0f, 0.0f, 0.0f, 0.0f));
            this.emojiSearchGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(54.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
            EmojiListView emojiListView32 = this.emojiSearchGridView;
            SearchAdapter searchAdapter2 = new SearchAdapter();
            this.searchAdapter = searchAdapter2;
            emojiListView32.setAdapter(searchAdapter2);
            EmojiListView emojiListView42 = this.emojiSearchGridView;
            GridLayoutManager gridLayoutManager22 = new GridLayoutManager(context, i132) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.14
                @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i142) {
                    try {
                        LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.14.1
                            @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                            public void onEnd() {
                                SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                            }
                        };
                        linearSmoothScrollerCustom.setTargetPosition(i142);
                        startSmoothScroll(linearSmoothScrollerCustom);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
            };
            this.searchLayoutManager = gridLayoutManager22;
            emojiListView42.setLayoutManager(gridLayoutManager22);
            this.searchLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.15
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i142) {
                    int itemViewType = SelectAnimatedEmojiDialog.this.searchAdapter.getItemViewType(i142);
                    if (itemViewType == 6) {
                        return SelectAnimatedEmojiDialog.this.layoutManager.getSpanCount();
                    }
                    return (itemViewType == 5 || SelectAnimatedEmojiDialog.this.searchAdapter.isSticker(i142)) ? 8 : 5;
                }
            });
            this.emojiSearchGridView.setVisibility(8);
            this.gridViewContainer.addView(this.emojiSearchGridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
            this.contentView.addView(this.gridViewContainer, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, (i == 8 || i == 13 || i == 14) ? 0.0f : (f22 / AndroidUtilities.density) + 36.0f, 0.0f, z3 ? 48.0f : 0.0f));
            if (z3) {
            }
            RecyclerAnimationScrollHelper recyclerAnimationScrollHelper2 = new RecyclerAnimationScrollHelper(this.emojiGridView, this.layoutManager);
            this.scrollHelper = recyclerAnimationScrollHelper2;
            recyclerAnimationScrollHelper2.setAnimationCallback(new RecyclerAnimationScrollHelper.AnimationCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.16
                @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
                public void onPreAnimation() {
                    SelectAnimatedEmojiDialog.this.smoothScrolling = true;
                }

                @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
                public void onEndAnimation() {
                    SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                }
            });
            this.scrollHelper.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.ScrollListener
                public final void onScroll() {
                    this.f$0.lambda$new$3();
                }
            });
            C660517 c6605172 = new C660517(i, z3, context, resourcesProvider, num);
            this.emojiGridView.setOnItemLongClickListener(c6605172, (long) (ViewConfiguration.getLongPressTimeout() * 0.25f));
            this.emojiSearchGridView.setOnItemLongClickListener(c6605172, (long) (ViewConfiguration.getLongPressTimeout() * 0.25f));
            RecyclerListView.OnItemClickListener onItemClickListener2 = new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view22, int i142) {
                    this.f$0.lambda$new$4(i, view22, i142);
                }
            };
            this.emojiGridView.setOnItemClickListener(onItemClickListener2);
            this.emojiSearchGridView.setOnItemClickListener(onItemClickListener2);
            SearchBox searchBox2 = new SearchBox(context, z2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.18
                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    Canvas canvas2;
                    if (SelectAnimatedEmojiDialog.this.backgroundDelegate != null) {
                        canvas2 = canvas;
                        SelectAnimatedEmojiDialog.this.backgroundDelegate.drawRect(canvas2, 0, 0, getMeasuredWidth(), getMeasuredHeight(), SelectAnimatedEmojiDialog.this.searchBox.getX() + SelectAnimatedEmojiDialog.this.gridViewContainer.getX(), SelectAnimatedEmojiDialog.this.searchBox.getY() + SelectAnimatedEmojiDialog.this.gridViewContainer.getY());
                    } else {
                        canvas2 = canvas;
                    }
                    super.dispatchDraw(canvas2);
                }

                @Override // android.view.View
                public void setTranslationY(float f3) {
                    if (f3 != getTranslationY()) {
                        super.setTranslationY(f3);
                        if (SelectAnimatedEmojiDialog.this.backgroundDelegate != null) {
                            invalidate();
                        }
                    }
                }
            };
            this.searchBox = searchBox2;
            searchBox2.setTranslationY(-AndroidUtilities.m1124dp(52.0f));
            this.searchBox.setVisibility(4);
            this.gridViewContainer.addView(this.searchBox, LayoutHelper.createFrame(-1, 52.0f, 48, 0.0f, -4.0f, 0.0f, 0.0f));
            this.topGradientView = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.19
                @Override // android.view.View
                protected void onMeasure(int i142, int i15) {
                    super.onMeasure(i142, i15);
                    if (num42 != null) {
                        setPivotX(r1.intValue());
                    }
                }
            };
            Drawable drawable22 = getResources().getDrawable(C2888R.drawable.gradient_top);
            int i142 = Theme.key_actionBarDefaultSubmenuBackground;
            int iMultiplyAlphaComponent2 = AndroidUtilities.multiplyAlphaComponent(Theme.getColor(i142, resourcesProvider), 0.8f);
            PorterDuff.Mode mode2 = PorterDuff.Mode.SRC_IN;
            drawable22.setColorFilter(new PorterDuffColorFilter(iMultiplyAlphaComponent2, mode2));
            this.topGradientView.setBackground(drawable22);
            this.topGradientView.setAlpha(0.0f);
            this.contentView.addView(this.topGradientView, LayoutHelper.createFrame(-1, 20.0f, 55, 0.0f, (f22 / AndroidUtilities.density) + 36.0f, 0.0f, 0.0f));
            this.bottomGradientView = new View(context);
            Drawable drawable32 = getResources().getDrawable(C2888R.drawable.gradient_bottom);
            drawable32.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i142, resourcesProvider), mode2));
            if (i == 14) {
            }
            this.bottomGradientView.setAlpha(0.0f);
            this.contentView.addView(this.bottomGradientView, LayoutHelper.createFrame(i8, 20, 87));
            View view22 = new View(context);
            this.contentViewForeground = view22;
            view22.setAlpha(0.0f);
            this.contentViewForeground.setBackgroundColor(-16777216);
            this.contentView.addView(this.contentViewForeground, LayoutHelper.createFrame(i8, -1.0f));
            preload(i, this.currentAccount);
            this.bigReactionImageReceiver.setLayerNum(7);
            if (isAnimatedShow()) {
            }
            updateRows(true, false);
        }
        this.contentView.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
        this.contentView.addView(this.backgroundView, LayoutHelper.createFrame(-1, -1.0f));
        c = 6;
        addView(this.contentView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, (i != 0 || i == 12 || i == 9 || i == 2 || i == 7) ? this.topMarginDp + 6 : 0.0f, 0.0f, !isBottom() ? this.topMarginDp + 6 : 0.0f));
        if (num2 == null) {
        }
        if (baseFragment2 == null) {
            z4 = false;
        }
        i6 = 0;
        while (true) {
            if (i6 >= 2) {
            }
            this.cachedEmojiTabs[i1222] = emojiTabsStrip22;
            i10 = i3;
            i6 = i1222 + 1;
            i4 = 14;
            num2 = num3;
            c = 6;
            baseFragment2 = baseFragment;
        }
        i7 = i4;
        final Integer num422 = num2;
        EmojiTabsStrip[] emojiTabsStripArr22 = this.cachedEmojiTabs;
        this.emojiTabs = emojiTabsStripArr22[0];
        emojiTabsStripArr22[1].setVisibility(8);
        View view32 = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.6
            @Override // android.view.View
            protected void onMeasure(int i1322, int i1422) {
                super.onMeasure(i1322, i1422);
                if (num422 != null) {
                    setPivotX(r1.intValue());
                }
            }
        };
        this.emojiTabsShadow = view32;
        view32.setBackgroundColor(Theme.getColor(Theme.key_divider, resourcesProvider2));
        if (i == i7) {
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.emojiTabsShadow, true, f, false);
        this.emojiGridView = new EmojiListView(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.7
            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrolled(int i1322, int i1422) {
                int i15;
                super.onScrolled(i1322, i1422);
                SelectAnimatedEmojiDialog.this.checkScroll();
                if (!SelectAnimatedEmojiDialog.this.smoothScrolling) {
                    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                    selectAnimatedEmojiDialog.updateTabsPosition(selectAnimatedEmojiDialog.layoutManager.findFirstCompletelyVisibleItemPosition());
                }
                SelectAnimatedEmojiDialog.this.updateSearchBox();
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                AndroidUtilities.updateViewVisibilityAnimated(selectAnimatedEmojiDialog2.emojiTabsShadow, selectAnimatedEmojiDialog2.emojiGridView.computeVerticalScrollOffset() != 0 || (i15 = i) == 0 || i15 == 12 || i15 == 10 || i15 == 1 || i15 == 11 || i15 == 6, 1.0f, true);
                SelectAnimatedEmojiDialog.this.lambda$new$3();
            }

            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrollStateChanged(int i1322) {
                if (i1322 == 0) {
                    SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                    if (SelectAnimatedEmojiDialog.this.searchRow != -1 && SelectAnimatedEmojiDialog.this.searchBox.getVisibility() == 0 && SelectAnimatedEmojiDialog.this.searchBox.getTranslationY() > (-AndroidUtilities.m1124dp(51.0f))) {
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                        selectAnimatedEmojiDialog.scrollToPosition(selectAnimatedEmojiDialog.searchBox.getTranslationY() > ((float) (-AndroidUtilities.m1124dp(16.0f))) ? 0 : 1, 0);
                    }
                }
                super.onScrollStateChanged(i1322);
            }
        };
        DefaultItemAnimator defaultItemAnimator32 = new DefaultItemAnimator() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.8
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected float animateByScale(View view222) {
                return view222 instanceof EmojiPackExpand ? 0.6f : 0.0f;
            }
        };
        this.emojiItemAnimator = defaultItemAnimator32;
        float f222 = f;
        defaultItemAnimator32.setAddDuration(220L);
        this.emojiItemAnimator.setMoveDuration(260L);
        this.emojiItemAnimator.setChangeDuration(160L);
        this.emojiItemAnimator.setSupportsChangeAnimations(false);
        DefaultItemAnimator defaultItemAnimator222 = this.emojiItemAnimator;
        CubicBezierInterpolator cubicBezierInterpolator22 = CubicBezierInterpolator.EASE_OUT_QUINT;
        defaultItemAnimator222.setMoveInterpolator(cubicBezierInterpolator22);
        this.emojiItemAnimator.setDelayAnimations(false);
        this.emojiGridView.setItemAnimator(this.emojiItemAnimator);
        this.emojiGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
        Adapter adapter22 = new Adapter();
        this.adapter = adapter22;
        this.emojiGridView.setAdapter(adapter22);
        EmojiListView emojiListView222 = this.emojiGridView;
        int i1322 = 40;
        GridLayoutManager gridLayoutManager32 = new GridLayoutManager(context, i1322) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.9
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i1422) {
                try {
                    LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.9.1
                        @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                        public void onEnd() {
                            SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                        }
                    };
                    linearSmoothScrollerCustom.setTargetPosition(i1422);
                    startSmoothScroll(linearSmoothScrollerCustom);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        };
        this.layoutManager = gridLayoutManager32;
        emojiListView222.setLayoutManager(gridLayoutManager32);
        this.layoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.10
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i1422) {
                if (SelectAnimatedEmojiDialog.this.positionToSection.indexOfKey(i1422) >= 0 || SelectAnimatedEmojiDialog.this.positionToButton.indexOfKey(i1422) >= 0 || i1422 == SelectAnimatedEmojiDialog.this.recentReactionsSectionRow || i1422 == SelectAnimatedEmojiDialog.this.stickersSectionRow || i1422 == SelectAnimatedEmojiDialog.this.giftsSectionRow || i1422 == SelectAnimatedEmojiDialog.this.popularSectionRow || i1422 == SelectAnimatedEmojiDialog.this.longtapHintRow || i1422 == SelectAnimatedEmojiDialog.this.searchRow || i1422 == SelectAnimatedEmojiDialog.this.topicEmojiHeaderRow) {
                    return SelectAnimatedEmojiDialog.this.layoutManager.getSpanCount();
                }
                return ((i1422 < SelectAnimatedEmojiDialog.this.stickersStartRow || i1422 >= SelectAnimatedEmojiDialog.this.stickersEndRow) && !SelectAnimatedEmojiDialog.this.showStickers) ? 5 : 8;
            }
        });
        this.gridViewContainer = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.11
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i1422, int i15) {
                super.onMeasure(i1422, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i15) + AndroidUtilities.m1124dp(36.0f), TLObject.FLAG_30));
            }
        };
        FrameLayout frameLayout222 = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.12
            private final Rect rect = new Rect();

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view222, long j) {
                if (view222 == SelectAnimatedEmojiDialog.this.emojiGridView && HwEmojis.isHwEnabled() && HwEmojis.isCascade()) {
                    for (int i1422 = 0; i1422 < SelectAnimatedEmojiDialog.this.emojiGridView.getChildCount(); i1422++) {
                        View childAt = SelectAnimatedEmojiDialog.this.emojiGridView.getChildAt(i1422);
                        if (childAt instanceof ImageViewEmoji) {
                            ImageViewEmoji imageViewEmoji = (ImageViewEmoji) childAt;
                            if (imageViewEmoji.getAnimatedScale() == 1.0f) {
                                this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                canvas.save();
                                canvas.clipRect(this.rect);
                                super.drawChild(canvas, view222, j);
                                canvas.restore();
                            } else if (imageViewEmoji.getAnimatedScale() > 0.0f) {
                                this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                                this.rect.set((int) (r2.centerX() - ((this.rect.width() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerY() - ((this.rect.height() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerX() + ((this.rect.width() / 2.0f) * imageViewEmoji.getAnimatedScale())), (int) (this.rect.centerY() + ((this.rect.height() / 2.0f) * imageViewEmoji.getAnimatedScale())));
                                canvas.save();
                                canvas.clipRect(this.rect);
                                canvas.scale(imageViewEmoji.getAnimatedScale(), imageViewEmoji.getAnimatedScale(), this.rect.centerX(), this.rect.centerY());
                                super.drawChild(canvas, view222, j);
                                canvas.restore();
                            }
                        } else if ((childAt instanceof TextView) || (childAt instanceof EmojiPackExpand) || (childAt instanceof EmojiPackButton) || (childAt instanceof HeaderView)) {
                            this.rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                            canvas.save();
                            canvas.clipRect(this.rect);
                            super.drawChild(canvas, view222, j);
                            canvas.restore();
                        }
                    }
                    return false;
                }
                return super.drawChild(canvas, view222, j);
            }
        };
        this.emojiGridViewContainer = frameLayout222;
        frameLayout222.addView(this.emojiGridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
        this.gridViewContainer.addView(this.emojiGridViewContainer, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
        emojiListView = new EmojiListView(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.13
            @Override // androidx.recyclerview.widget.RecyclerView
            public void onScrolled(int i1422, int i15) {
                super.onScrolled(i1422, i15);
                SelectAnimatedEmojiDialog.this.checkScroll();
            }
        };
        this.emojiSearchGridView = emojiListView;
        if (emojiListView.getItemAnimator() != null) {
        }
        TextView textView22 = new TextView(context);
        if (i == 4) {
        }
        textView22.setTextSize(1, 14.0f);
        textView22.setTextColor(Theme.getColor(Theme.key_chat_emojiPanelEmptyText, resourcesProvider));
        this.emojiSearchEmptyViewImageView = new BackupImageView(context);
        FrameLayout frameLayout322 = new FrameLayout(context);
        this.emojiSearchEmptyView = frameLayout322;
        frameLayout322.addView(this.emojiSearchEmptyViewImageView, LayoutHelper.createFrame(36, 36.0f, 49, 0.0f, 16.0f, 0.0f, 0.0f));
        this.emojiSearchEmptyView.addView(textView22, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 60.0f, 0.0f, 0.0f));
        this.emojiSearchEmptyView.setVisibility(8);
        this.emojiSearchEmptyView.setAlpha(0.0f);
        this.gridViewContainer.addView(this.emojiSearchEmptyView, LayoutHelper.createFrame(-1, -2.0f, 16, 0.0f, 0.0f, 0.0f, 0.0f));
        this.emojiSearchGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(54.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
        EmojiListView emojiListView322 = this.emojiSearchGridView;
        SearchAdapter searchAdapter22 = new SearchAdapter();
        this.searchAdapter = searchAdapter22;
        emojiListView322.setAdapter(searchAdapter22);
        EmojiListView emojiListView422 = this.emojiSearchGridView;
        GridLayoutManager gridLayoutManager222 = new GridLayoutManager(context, i1322) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.14
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i1422) {
                try {
                    LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.14.1
                        @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                        public void onEnd() {
                            SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                        }
                    };
                    linearSmoothScrollerCustom.setTargetPosition(i1422);
                    startSmoothScroll(linearSmoothScrollerCustom);
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        };
        this.searchLayoutManager = gridLayoutManager222;
        emojiListView422.setLayoutManager(gridLayoutManager222);
        this.searchLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.15
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i1422) {
                int itemViewType = SelectAnimatedEmojiDialog.this.searchAdapter.getItemViewType(i1422);
                if (itemViewType == 6) {
                    return SelectAnimatedEmojiDialog.this.layoutManager.getSpanCount();
                }
                return (itemViewType == 5 || SelectAnimatedEmojiDialog.this.searchAdapter.isSticker(i1422)) ? 8 : 5;
            }
        });
        this.emojiSearchGridView.setVisibility(8);
        this.gridViewContainer.addView(this.emojiSearchGridView, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 0.0f));
        this.contentView.addView(this.gridViewContainer, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, (i == 8 || i == 13 || i == 14) ? 0.0f : (f222 / AndroidUtilities.density) + 36.0f, 0.0f, z3 ? 48.0f : 0.0f));
        if (z3) {
        }
        RecyclerAnimationScrollHelper recyclerAnimationScrollHelper22 = new RecyclerAnimationScrollHelper(this.emojiGridView, this.layoutManager);
        this.scrollHelper = recyclerAnimationScrollHelper22;
        recyclerAnimationScrollHelper22.setAnimationCallback(new RecyclerAnimationScrollHelper.AnimationCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.16
            @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
            public void onPreAnimation() {
                SelectAnimatedEmojiDialog.this.smoothScrolling = true;
            }

            @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
            public void onEndAnimation() {
                SelectAnimatedEmojiDialog.this.smoothScrolling = false;
            }
        });
        this.scrollHelper.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.ScrollListener
            public final void onScroll() {
                this.f$0.lambda$new$3();
            }
        });
        C660517 c66051722 = new C660517(i, z3, context, resourcesProvider, num);
        this.emojiGridView.setOnItemLongClickListener(c66051722, (long) (ViewConfiguration.getLongPressTimeout() * 0.25f));
        this.emojiSearchGridView.setOnItemLongClickListener(c66051722, (long) (ViewConfiguration.getLongPressTimeout() * 0.25f));
        RecyclerListView.OnItemClickListener onItemClickListener22 = new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view222, int i1422) {
                this.f$0.lambda$new$4(i, view222, i1422);
            }
        };
        this.emojiGridView.setOnItemClickListener(onItemClickListener22);
        this.emojiSearchGridView.setOnItemClickListener(onItemClickListener22);
        SearchBox searchBox22 = new SearchBox(context, z2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.18
            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (SelectAnimatedEmojiDialog.this.backgroundDelegate != null) {
                    canvas2 = canvas;
                    SelectAnimatedEmojiDialog.this.backgroundDelegate.drawRect(canvas2, 0, 0, getMeasuredWidth(), getMeasuredHeight(), SelectAnimatedEmojiDialog.this.searchBox.getX() + SelectAnimatedEmojiDialog.this.gridViewContainer.getX(), SelectAnimatedEmojiDialog.this.searchBox.getY() + SelectAnimatedEmojiDialog.this.gridViewContainer.getY());
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
            }

            @Override // android.view.View
            public void setTranslationY(float f3) {
                if (f3 != getTranslationY()) {
                    super.setTranslationY(f3);
                    if (SelectAnimatedEmojiDialog.this.backgroundDelegate != null) {
                        invalidate();
                    }
                }
            }
        };
        this.searchBox = searchBox22;
        searchBox22.setTranslationY(-AndroidUtilities.m1124dp(52.0f));
        this.searchBox.setVisibility(4);
        this.gridViewContainer.addView(this.searchBox, LayoutHelper.createFrame(-1, 52.0f, 48, 0.0f, -4.0f, 0.0f, 0.0f));
        this.topGradientView = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.19
            @Override // android.view.View
            protected void onMeasure(int i1422, int i15) {
                super.onMeasure(i1422, i15);
                if (num422 != null) {
                    setPivotX(r1.intValue());
                }
            }
        };
        Drawable drawable222 = getResources().getDrawable(C2888R.drawable.gradient_top);
        int i1422 = Theme.key_actionBarDefaultSubmenuBackground;
        int iMultiplyAlphaComponent22 = AndroidUtilities.multiplyAlphaComponent(Theme.getColor(i1422, resourcesProvider), 0.8f);
        PorterDuff.Mode mode22 = PorterDuff.Mode.SRC_IN;
        drawable222.setColorFilter(new PorterDuffColorFilter(iMultiplyAlphaComponent22, mode22));
        this.topGradientView.setBackground(drawable222);
        this.topGradientView.setAlpha(0.0f);
        this.contentView.addView(this.topGradientView, LayoutHelper.createFrame(-1, 20.0f, 55, 0.0f, (f222 / AndroidUtilities.density) + 36.0f, 0.0f, 0.0f));
        this.bottomGradientView = new View(context);
        Drawable drawable322 = getResources().getDrawable(C2888R.drawable.gradient_bottom);
        drawable322.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i1422, resourcesProvider), mode22));
        if (i == 14) {
        }
        this.bottomGradientView.setAlpha(0.0f);
        this.contentView.addView(this.bottomGradientView, LayoutHelper.createFrame(i8, 20, 87));
        View view222 = new View(context);
        this.contentViewForeground = view222;
        view222.setAlpha(0.0f);
        this.contentViewForeground.setBackgroundColor(-16777216);
        this.contentView.addView(this.contentViewForeground, LayoutHelper.createFrame(i8, -1.0f));
        preload(i, this.currentAccount);
        this.bigReactionImageReceiver.setLayerNum(7);
        if (isAnimatedShow()) {
        }
        updateRows(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(View view, MotionEvent motionEvent) {
        Runnable runnable;
        if (motionEvent.getAction() != 0 || (runnable = this.dismiss) == null) {
            return false;
        }
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(BaseFragment baseFragment) {
        search(null, false, false);
        onSettings();
        baseFragment.presentFragment(new StickersActivity(5, this.frozenEmojiPacks));
        Runnable runnable = this.dismiss;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2(View view) {
        onRecentLongClick();
        try {
            performHapticFeedback(VibratorUtils.getType(0), 1);
        } catch (Exception unused) {
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.SelectAnimatedEmojiDialog$17 */
    /* JADX INFO: loaded from: classes6.dex */
    class C660517 implements RecyclerListView.OnItemLongClickListenerExtended {
        final /* synthetic */ boolean val$badgePicker;
        final /* synthetic */ Context val$context;
        final /* synthetic */ Integer val$emojiX;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;
        final /* synthetic */ int val$type;

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public /* synthetic */ void onMove(float f, float f2) {
            RecyclerListView.OnItemLongClickListenerExtended.CC.$default$onMove(this, f, f2);
        }

        C660517(int i, boolean z, Context context, Theme.ResourcesProvider resourcesProvider, Integer num) {
            this.val$type = i;
            this.val$badgePicker = z;
            this.val$context = context;
            this.val$resourcesProvider = resourcesProvider;
            this.val$emojiX = num;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public boolean onItemClick(final View view, int i, float f, float f2) {
            int i2;
            int i3;
            int i4 = this.val$type;
            if (i4 != 11 && i4 != 13 && SelectAnimatedEmojiDialog.this.isLongPressEnabled) {
                boolean z = view instanceof ImageViewEmoji;
                if (z && ((i3 = this.val$type) == 1 || i3 == 8)) {
                    SelectAnimatedEmojiDialog.this.incrementHintUse();
                    try {
                        SelectAnimatedEmojiDialog.this.performHapticFeedback(0);
                    } catch (Exception unused) {
                    }
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) view;
                    if (!imageViewEmoji.isDefaultReaction && !UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium()) {
                        TLRPC.Document documentFindDocument = imageViewEmoji.span.document;
                        if (documentFindDocument == null) {
                            documentFindDocument = AnimatedEmojiDrawable.findDocument(SelectAnimatedEmojiDialog.this.currentAccount, imageViewEmoji.span.documentId);
                        }
                        SelectAnimatedEmojiDialog.this.onEmojiSelected(imageViewEmoji, Long.valueOf(imageViewEmoji.span.documentId), documentFindDocument, imageViewEmoji.starGift, null, SelectAnimatedEmojiDialog.this.commentView != null ? SelectAnimatedEmojiDialog.this.commentView.getText().toString() : null);
                        return true;
                    }
                    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                    selectAnimatedEmojiDialog.selectedReactionView = imageViewEmoji;
                    selectAnimatedEmojiDialog.pressedProgress = 0.0f;
                    selectAnimatedEmojiDialog.cancelPressed = false;
                    if (imageViewEmoji.isDefaultReaction) {
                        selectAnimatedEmojiDialog.setBigReactionAnimatedEmoji(null);
                        TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).getReactionsMap().get(SelectAnimatedEmojiDialog.this.selectedReactionView.reaction.emojicon);
                        if (tL_availableReaction != null) {
                            SelectAnimatedEmojiDialog.this.bigReactionImageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.select_animation), "60_60_pcache", null, null, null, 0L, "tgs", SelectAnimatedEmojiDialog.this.selectedReactionView.reaction, 0);
                        }
                    } else {
                        selectAnimatedEmojiDialog.setBigReactionAnimatedEmoji(new AnimatedEmojiDrawable(4, SelectAnimatedEmojiDialog.this.currentAccount, SelectAnimatedEmojiDialog.this.selectedReactionView.span.documentId));
                    }
                    SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
                    SelectAnimatedEmojiDialog.this.lambda$new$3();
                    return true;
                }
                if (z) {
                    ImageViewEmoji imageViewEmoji2 = (ImageViewEmoji) view;
                    if (imageViewEmoji2.span != null && !this.val$badgePicker && ((i2 = this.val$type) == 0 || i2 == 12 || i2 == 9 || i2 == 10)) {
                        final TL_stars.TL_starGiftUnique tL_starGiftUnique = imageViewEmoji2.starGift;
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                        SelectStatusDurationDialog selectStatusDurationDialog = new SelectStatusDurationDialog(this.val$context, SelectAnimatedEmojiDialog.this.dismiss, SelectAnimatedEmojiDialog.this, imageViewEmoji2, this.val$resourcesProvider) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.17.1
                            {
                                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog3 = SelectAnimatedEmojiDialog.this;
                            }

                            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog
                            protected boolean getOutBounds(Rect rect) {
                                if (SelectAnimatedEmojiDialog.this.scrimDrawable == null) {
                                    return false;
                                }
                                C660517 c660517 = C660517.this;
                                if (c660517.val$emojiX == null) {
                                    return false;
                                }
                                rect.set(SelectAnimatedEmojiDialog.this.drawableToBounds);
                                return true;
                            }

                            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog
                            protected void onEndPartly(Integer num) {
                                SelectAnimatedEmojiDialog.this.incrementHintUse();
                                TLRPC.TL_emojiStatus tL_emojiStatus = new TLRPC.TL_emojiStatus();
                                View view2 = view;
                                long j = ((ImageViewEmoji) view2).span.documentId;
                                tL_emojiStatus.document_id = j;
                                SelectAnimatedEmojiDialog.this.onEmojiSelected(view2, Long.valueOf(j), ((ImageViewEmoji) view).span.document, tL_starGiftUnique, num);
                                if (tL_starGiftUnique == null) {
                                    MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).pushRecentEmojiStatus(tL_emojiStatus);
                                }
                            }

                            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog
                            protected void onEnd(Integer num) {
                                if (num == null || SelectAnimatedEmojiDialog.this.dismiss == null) {
                                    return;
                                }
                                SelectAnimatedEmojiDialog.this.dismiss.run();
                            }

                            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog, android.app.Dialog, android.content.DialogInterface
                            public void dismiss() {
                                super.dismiss();
                                SelectAnimatedEmojiDialog.this.selectStatusDateDialog = null;
                            }
                        };
                        selectAnimatedEmojiDialog2.selectStatusDateDialog = selectStatusDurationDialog;
                        selectStatusDurationDialog.show();
                        try {
                            view.performHapticFeedback(VibratorUtils.getType(0), 1);
                        } catch (Exception unused2) {
                        }
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
        public void onLongClickRelease() {
            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
            if (selectAnimatedEmojiDialog.selectedReactionView != null) {
                selectAnimatedEmojiDialog.cancelPressed = true;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(selectAnimatedEmojiDialog.pressedProgress, 0.0f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$17$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$onLongClickRelease$0(valueAnimator);
                    }
                });
                valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.17.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                        selectAnimatedEmojiDialog2.selectedReactionView.bigReactionSelectedProgress = 0.0f;
                        selectAnimatedEmojiDialog2.selectedReactionView = null;
                        selectAnimatedEmojiDialog2.emojiGridView.invalidate();
                    }
                });
                valueAnimatorOfFloat.setDuration(150L);
                valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                valueAnimatorOfFloat.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLongClickRelease$0(ValueAnimator valueAnimator) {
            SelectAnimatedEmojiDialog.this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(int i, View view, int i2) {
        ReactionsLayoutInBubble.VisibleReaction visibleReaction;
        TLRPC.Document document;
        try {
            if (view instanceof ImageViewEmoji) {
                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) view;
                if (imageViewEmoji.isDefaultReaction || (((visibleReaction = imageViewEmoji.reaction) != null && visibleReaction.isStar) || i == 13 || i == 14)) {
                    incrementHintUse();
                    onReactionClick(imageViewEmoji, imageViewEmoji.reaction);
                } else if (imageViewEmoji.isStaticIcon && (document = imageViewEmoji.document) != null) {
                    onStickerClick(imageViewEmoji, document);
                } else {
                    onEmojiClick(imageViewEmoji, imageViewEmoji.span);
                }
                if (i == 1 || i == 11) {
                    return;
                }
                performHapticFeedback(VibratorUtils.getType(3), 1);
                return;
            }
            if (view instanceof ImageView) {
                onEmojiClick(view, null);
                if (i == 1 || i == 11) {
                    return;
                }
                performHapticFeedback(VibratorUtils.getType(3), 1);
                return;
            }
            if (!(view instanceof EmojiPackExpand)) {
                if (view != null) {
                    view.callOnClick();
                }
            } else {
                expand(i2, (EmojiPackExpand) view);
                if (i == 1 || i == 11) {
                    return;
                }
                performHapticFeedback(VibratorUtils.getType(3), 1);
            }
        } catch (Exception unused) {
        }
    }

    private void onStickerClick(ImageViewEmoji imageViewEmoji, TLRPC.Document document) {
        if (this.type == 6) {
            onEmojiSelected(imageViewEmoji, Long.valueOf(document.f1668id), document, imageViewEmoji.starGift, null);
        } else {
            onEmojiSelected(imageViewEmoji, null, document, imageViewEmoji.starGift, null);
        }
    }

    public void setExpireDateHint(int i) {
        if (i <= 0) {
            return;
        }
        this.includeHint = true;
        this.hintExpireDate = Integer.valueOf(i);
        updateRows(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBigReactionAnimatedEmoji(AnimatedEmojiDrawable animatedEmojiDrawable) {
        AnimatedEmojiDrawable animatedEmojiDrawable2;
        if (this.isAttached && (animatedEmojiDrawable2 = this.bigReactionAnimatedEmoji) != animatedEmojiDrawable) {
            if (animatedEmojiDrawable2 != null) {
                animatedEmojiDrawable2.removeView(this);
            }
            this.bigReactionAnimatedEmoji = animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setColorFilter(this.premiumStarColorFilter);
                this.bigReactionAnimatedEmoji.addView(this);
            }
        }
    }

    private void onRecentLongClick() {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext()).setTitle(LocaleController.getString(C2888R.string.ClearRecentReactionsAlertTitle)).setMessage(LocaleController.getString(C2888R.string.ClearRecentReactionsAlertMessage)).setPositiveButton(LocaleController.getString(C2888R.string.ClearButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onRecentLongClick$5(alertDialog, i);
            }
        }).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).create();
        alertDialogCreate.show();
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRecentLongClick$5(AlertDialog alertDialog, int i) {
        onRecentClearedListener onrecentclearedlistener = this.onRecentClearedListener;
        if (onrecentclearedlistener != null) {
            onrecentclearedlistener.onRecentCleared();
        }
    }

    public void setLongPressEnabled(boolean z) {
        this.isLongPressEnabled = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabsPosition(int i) {
        if (i != -1) {
            if (i <= ((this.recent.size() <= 40 || this.recentExpanded) ? (this.includeEmpty ? 1 : 0) + this.recent.size() : 40) || i <= this.recentReactions.size()) {
                this.emojiTabs.select(0);
                return;
            }
            for (int i2 = 0; i2 < this.positionToSection.size(); i2++) {
                int iKeyAt = this.positionToSection.keyAt(i2);
                int iValueAt = this.positionToSection.valueAt(i2);
                EmojiView.EmojiPack emojiPack = iValueAt >= 0 ? (EmojiView.EmojiPack) this.packs.get(iValueAt) : null;
                if (emojiPack != null) {
                    boolean z = emojiPack.expanded;
                    int size = emojiPack.documents.size();
                    if (!z) {
                        size = Math.min(24, size);
                    }
                    if (i > iKeyAt && i <= iKeyAt + 1 + size) {
                        EmojiTabsStrip emojiTabsStrip = this.emojiTabs;
                        emojiTabsStrip.select((emojiTabsStrip.recentTab != null ? 1 : 0) + (emojiTabsStrip.isGiftsVisible() ? 1 : 0) + iValueAt);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchBox() {
        SearchBox searchBox = this.searchBox;
        if (searchBox == null) {
            return;
        }
        if (this.searched) {
            searchBox.clearAnimation();
            this.searchBox.setVisibility(0);
            this.searchBox.animate().translationY(0.0f).start();
        } else {
            if (this.emojiGridView.getChildCount() > 0) {
                View childAt = this.emojiGridView.getChildAt(0);
                if (this.emojiGridView.getChildAdapterPosition(childAt) == this.searchRow && "searchbox".equals(childAt.getTag())) {
                    this.searchBox.setVisibility(0);
                    this.searchBox.setTranslationY(childAt.getY());
                    return;
                } else {
                    this.searchBox.setTranslationY(-AndroidUtilities.m1124dp(52.0f));
                    return;
                }
            }
            this.searchBox.setTranslationY(-AndroidUtilities.m1124dp(52.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getPremiumStar() {
        if (this.premiumStar == null) {
            if (this.badgePicker && this.defaultBadgeId != 0) {
                this.premiumStar = AnimatedEmojiDrawable.make(this.currentAccount, getCacheType(), this.defaultBadgeId);
            } else {
                int i = this.type;
                if (i == 5 || i == 9 || i == 10 || i == 7) {
                    this.premiumStar = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.msg_filled_blocked).mutate();
                } else {
                    this.premiumStar = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.msg_settings_premium).mutate();
                }
            }
            this.premiumStar.setColorFilter(this.premiumStarColorFilter);
        }
        ColorFilter colorFilter = this.premiumStarColorFilter;
        if (colorFilter != null) {
            Drawable drawable = this.premiumStar;
            if (drawable instanceof AnimatedEmojiDrawable) {
                drawable.setColorFilter(colorFilter);
            }
        }
        return this.premiumStar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.scrimDrawable;
        if (swapAnimatedEmojiDrawable != null && this.emojiX != null) {
            Rect bounds = swapAnimatedEmojiDrawable.getBounds();
            View view = this.scrimDrawableParent;
            float scaleY = view == null ? 1.0f : view.getScaleY();
            int alpha = this.scrimDrawable.getAlpha();
            View view2 = this.scrimDrawableParent;
            if (view2 == null) {
                bounds.height();
            } else {
                view2.getHeight();
            }
            canvas.save();
            canvas.translate(0.0f, -getTranslationY());
            this.scrimDrawable.setAlpha((int) (((double) alpha) * Math.pow(this.contentView.getAlpha(), 0.25d) * ((double) this.scrimAlpha)));
            if (this.drawableToBounds == null) {
                this.drawableToBounds = new Rect();
            }
            float f = (scaleY <= 1.0f || scaleY >= 1.5f) ? 0 : 2;
            float fIntValue = this.emojiX.intValue() + f;
            float fCenterY = (bounds.centerY() * (scaleY - 1.0f)) + (-(scaleY > 1.5f ? (bounds.height() * 0.81f) + 1.0f : 0.0f)) + (!isBottom() ? AndroidUtilities.m1124dp(this.topMarginDp) : getMeasuredHeight() - (AndroidUtilities.m1124dp(this.topMarginDp) / 2.0f)) + getScrimDrawableTranslationY();
            float fWidth = (bounds.width() * scaleY) / 2.0f;
            float fHeight = (bounds.height() * scaleY) / 2.0f;
            this.drawableToBounds.set((int) (fIntValue - fWidth), (int) (fCenterY - fHeight), (int) (fIntValue + fWidth), (int) (fCenterY + fHeight));
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable2 = this.scrimDrawable;
            Rect rect = this.drawableToBounds;
            int i = rect.left;
            Rect rect2 = this.drawableToBounds;
            swapAnimatedEmojiDrawable2.setBounds(i, rect.top, (int) (i + (rect.width() / scaleY)), (int) (rect2.top + (rect2.height() / scaleY)));
            Rect rect3 = this.drawableToBounds;
            canvas.scale(scaleY, scaleY, rect3.left, rect3.top);
            this.scrimDrawable.draw(canvas);
            this.scrimDrawable.setAlpha(alpha);
            this.scrimDrawable.setBounds(bounds);
            canvas.restore();
        }
        super.dispatchDraw(canvas);
        ImageViewEmoji imageViewEmoji = this.emojiSelectView;
        if (imageViewEmoji == null || this.emojiSelectRect == null || imageViewEmoji.drawable == null) {
            return;
        }
        canvas.save();
        canvas.translate(0.0f, -getTranslationY());
        this.emojiSelectView.drawable.setAlpha((int) (this.emojiSelectAlpha * 255.0f));
        this.emojiSelectView.drawable.setBounds(this.emojiSelectRect);
        this.emojiSelectView.drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(this.accentColor, this.scrimColor, 1.0f - this.scrimAlpha), PorterDuff.Mode.SRC_IN));
        this.emojiSelectView.drawable.draw(canvas);
        canvas.restore();
    }

    public void animateEmojiSelect(final ImageViewEmoji imageViewEmoji, final Runnable runnable) {
        if (this.emojiSelectAnimator != null || this.scrimDrawable == null) {
            runnable.run();
            return;
        }
        imageViewEmoji.notDraw = true;
        final Rect rect = new Rect();
        rect.set(this.contentView.getLeft() + this.emojiGridView.getLeft() + imageViewEmoji.getLeft(), this.contentView.getTop() + this.emojiGridView.getTop() + imageViewEmoji.getTop(), this.contentView.getLeft() + this.emojiGridView.getLeft() + imageViewEmoji.getRight(), this.contentView.getTop() + this.emojiGridView.getTop() + imageViewEmoji.getBottom());
        Drawable drawable = imageViewEmoji.drawable;
        final AnimatedEmojiDrawable animatedEmojiDrawableMake = drawable instanceof AnimatedEmojiDrawable ? AnimatedEmojiDrawable.make(this.currentAccount, 7, ((AnimatedEmojiDrawable) drawable).getDocumentId()) : null;
        this.emojiSelectView = imageViewEmoji;
        Rect rect2 = new Rect();
        this.emojiSelectRect = rect2;
        rect2.set(rect);
        final boolean[] zArr = new boolean[1];
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.emojiSelectAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateEmojiSelect$7(rect, imageViewEmoji, zArr, runnable, animatedEmojiDrawableMake, valueAnimator);
            }
        });
        this.emojiSelectAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.20
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SelectAnimatedEmojiDialog.this.emojiSelectView = null;
                SelectAnimatedEmojiDialog.this.invalidate();
                boolean[] zArr2 = zArr;
                if (zArr2[0]) {
                    return;
                }
                zArr2[0] = true;
                runnable.run();
            }
        });
        this.emojiSelectAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.emojiSelectAnimator.setDuration(260L);
        this.emojiSelectAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateEmojiSelect$7(Rect rect, ImageViewEmoji imageViewEmoji, boolean[] zArr, Runnable runnable, AnimatedEmojiDrawable animatedEmojiDrawable, ValueAnimator valueAnimator) {
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.scrimAlpha = 1.0f - ((fFloatValue * fFloatValue) * fFloatValue);
        this.emojiSelectAlpha = 1.0f - ((float) Math.pow(fFloatValue, 10.0d));
        AndroidUtilities.lerp(rect, this.drawableToBounds, fFloatValue, this.emojiSelectRect);
        float fMax = Math.max(1.0f, this.overshootInterpolator.getInterpolation(MathUtils.clamp((3.0f * fFloatValue) - 2.0f, 0.0f, 1.0f))) * imageViewEmoji.getScaleX();
        this.emojiSelectRect.set((int) (r8.centerX() - ((this.emojiSelectRect.width() / 2.0f) * fMax)), (int) (this.emojiSelectRect.centerY() - ((this.emojiSelectRect.height() / 2.0f) * fMax)), (int) (this.emojiSelectRect.centerX() + ((this.emojiSelectRect.width() / 2.0f) * fMax)), (int) (this.emojiSelectRect.centerY() + ((this.emojiSelectRect.height() / 2.0f) * fMax)));
        invalidate();
        if (fFloatValue <= 0.85f || zArr[0]) {
            return;
        }
        zArr[0] = true;
        runnable.run();
        if (animatedEmojiDrawable == null || (swapAnimatedEmojiDrawable = this.scrimDrawable) == null) {
            return;
        }
        swapAnimatedEmojiDrawable.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScroll() {
        boolean zCanScrollVertically = (this.gridSearch ? this.emojiSearchGridView : this.emojiGridView).canScrollVertically(1);
        if (zCanScrollVertically != this.bottomGradientShown) {
            this.bottomGradientShown = zCanScrollVertically;
            this.bottomGradientView.animate().alpha(zCanScrollVertically ? 1.0f : 0.0f).setDuration(200L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToPosition(int i, int i2) {
        View viewFindViewByPosition = this.layoutManager.findViewByPosition(i);
        int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
        if ((viewFindViewByPosition == null && Math.abs(i - iFindFirstVisibleItemPosition) > 72.0f) || !SharedConfig.animationsEnabled()) {
            this.scrollHelper.setScrollDirection(this.layoutManager.findFirstVisibleItemPosition() < i ? 0 : 1);
            this.scrollHelper.scrollToPosition(i, i2, false, true);
        } else {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(this.emojiGridView.getContext(), 2) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.21
                @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom
                public void onEnd() {
                    SelectAnimatedEmojiDialog.this.smoothScrolling = false;
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScrollerCustom, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                protected void onStart() {
                    SelectAnimatedEmojiDialog.this.smoothScrolling = true;
                }
            };
            linearSmoothScrollerCustom.setTargetPosition(i);
            linearSmoothScrollerCustom.setOffset(i2);
            this.layoutManager.startSmoothScroll(linearSmoothScrollerCustom);
        }
    }

    public void switchGrids(final boolean z, boolean z2) {
        if (this.gridSearch == z) {
            return;
        }
        this.gridSearch = z;
        this.emojiGridView.setVisibility(0);
        this.emojiSearchGridView.setVisibility(0);
        ValueAnimator valueAnimator = this.gridSwitchAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.searchEmptyViewAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.searchEmptyViewAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.gridSwitchAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                this.f$0.lambda$switchGrids$8(z, valueAnimator3);
            }
        });
        this.gridSwitchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.22
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SelectAnimatedEmojiDialog.this.emojiSearchGridView.setVisibility(z ? 0 : 8);
                SelectAnimatedEmojiDialog.this.emojiGridView.setVisibility(z ? 8 : 0);
                SelectAnimatedEmojiDialog.this.gridSwitchAnimator = null;
                if (!z && SelectAnimatedEmojiDialog.this.searchResult != null) {
                    SelectAnimatedEmojiDialog.this.searchResult.clear();
                    if (SelectAnimatedEmojiDialog.this.searchSets != null) {
                        SelectAnimatedEmojiDialog.this.searchSets.clear();
                    }
                    SelectAnimatedEmojiDialog.this.searchAdapter.updateRows(false);
                }
                if (z || SelectAnimatedEmojiDialog.this.searchResultStickers == null) {
                    return;
                }
                SelectAnimatedEmojiDialog.this.searchResultStickers.clear();
            }
        });
        this.gridSwitchAnimator.setDuration(320L);
        this.gridSwitchAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.gridSwitchAnimator.start();
        ((View) this.emojiGridView.getParent()).animate().translationY((this.gridSearch && z2) ? -AndroidUtilities.m1124dp(36.0f) : 0.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                this.f$0.lambda$switchGrids$9(valueAnimator3);
            }
        }).setInterpolator(CubicBezierInterpolator.DEFAULT).setDuration(160L).start();
        if (!this.gridSearch || z2) {
            this.emojiSearchGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(54.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
        } else {
            this.emojiSearchGridView.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(54.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(38.0f));
        }
        checkScroll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchGrids$8(boolean z, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (!z) {
            fFloatValue = 1.0f - fFloatValue;
        }
        float f = 1.0f - fFloatValue;
        this.emojiGridView.setAlpha(f);
        this.emojiGridView.setTranslationY(AndroidUtilities.m1124dp(8.0f) * fFloatValue);
        this.emojiSearchGridView.setAlpha(fFloatValue);
        this.emojiSearchGridView.setTranslationY(AndroidUtilities.m1124dp(8.0f) * f);
        this.emojiSearchEmptyView.setAlpha(this.emojiSearchGridView.getAlpha() * fFloatValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchGrids$9(ValueAnimator valueAnimator) {
        lambda$new$3();
    }

    public static void updateSearchEmptyViewImage(int i, BackupImageView backupImageView) {
        ImageLocation forDocument;
        if (backupImageView == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(MediaDataController.getInstance(i).getFeaturedEmojiSets());
        Collections.shuffle(arrayList);
        int iRound = (int) Math.round(Math.random() * 10.0d);
        TLRPC.Document document = null;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if ((arrayList.get(i2) instanceof TLRPC.TL_stickerSetFullCovered) && ((TLRPC.TL_stickerSetFullCovered) arrayList.get(i2)).documents != null) {
                ArrayList arrayList2 = new ArrayList(((TLRPC.TL_stickerSetFullCovered) arrayList.get(i2)).documents);
                Collections.shuffle(arrayList2);
                int i3 = 0;
                while (true) {
                    if (i3 >= arrayList2.size()) {
                        break;
                    }
                    TLRPC.Document document2 = (TLRPC.Document) arrayList2.get(i3);
                    if (document2 != null && emptyViewEmojis.contains(MessageObject.findAnimatedEmojiEmoticon(document2, null))) {
                        int i4 = iRound - 1;
                        if (iRound <= 0) {
                            iRound = i4;
                            document = document2;
                            break;
                        } else {
                            iRound = i4;
                            document = document2;
                        }
                    }
                    i3++;
                }
            }
            if (document != null && iRound <= 0) {
                break;
            }
        }
        if (document == null || iRound > 0) {
            ArrayList arrayList3 = new ArrayList(MediaDataController.getInstance(i).getStickerSets(5));
            Collections.shuffle(arrayList3);
            for (int i5 = 0; i5 < arrayList3.size(); i5++) {
                if (arrayList3.get(i5) != null && ((TLRPC.TL_messages_stickerSet) arrayList3.get(i5)).documents != null) {
                    ArrayList arrayList4 = new ArrayList(((TLRPC.TL_messages_stickerSet) arrayList3.get(i5)).documents);
                    Collections.shuffle(arrayList4);
                    int i6 = 0;
                    while (true) {
                        if (i6 >= arrayList4.size()) {
                            break;
                        }
                        TLRPC.Document document3 = (TLRPC.Document) arrayList4.get(i6);
                        if (document3 != null && emptyViewEmojis.contains(MessageObject.findAnimatedEmojiEmoticon(document3, null))) {
                            int i7 = iRound - 1;
                            if (iRound <= 0) {
                                iRound = i7;
                                document = document3;
                                break;
                            } else {
                                iRound = i7;
                                document = document3;
                            }
                        }
                        i6++;
                    }
                }
                if (document != null && iRound <= 0) {
                    break;
                }
            }
        }
        TLRPC.Document document4 = document;
        if (document4 != null) {
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document4.thumbs, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f);
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document4.thumbs, 90);
            String str = "36_36";
            if ("video/webm".equals(document4.mime_type)) {
                forDocument = ImageLocation.getForDocument(document4);
                str = "36_36_" + ImageLoader.AUTOPLAY_FILTER;
                if (svgThumb != null) {
                    svgThumb.overrideWidthAndHeight(512, 512);
                }
            } else {
                if (svgThumb != null && MessageObject.isAnimatedStickerDocument(document4, false)) {
                    svgThumb.overrideWidthAndHeight(512, 512);
                }
                forDocument = ImageLocation.getForDocument(document4);
            }
            ImageLocation imageLocation = forDocument;
            String str2 = str;
            backupImageView.setLayerNum(7);
            backupImageView.setRoundRadius(AndroidUtilities.m1124dp(4.0f));
            backupImageView.setImage(imageLocation, str2, ImageLocation.getForDocument(closestPhotoSizeWithSize, document4), "36_36", svgThumb, document4);
        }
    }

    public void switchSearchEmptyView(final boolean z) {
        if (this.searchEmptyViewVisible == z) {
            return;
        }
        this.searchEmptyViewVisible = z;
        ValueAnimator valueAnimator = this.searchEmptyViewAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.searchEmptyViewAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda38
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$switchSearchEmptyView$10(z, valueAnimator2);
            }
        });
        this.searchEmptyViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.23
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                selectAnimatedEmojiDialog.emojiSearchEmptyView.setVisibility((z && selectAnimatedEmojiDialog.emojiSearchGridView.getVisibility() == 0) ? 0 : 8);
                SelectAnimatedEmojiDialog.this.searchEmptyViewAnimator = null;
            }
        });
        this.searchEmptyViewAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.searchEmptyViewAnimator.setDuration(100L);
        this.searchEmptyViewAnimator.start();
        if (z) {
            updateSearchEmptyViewImage(this.currentAccount, this.emojiSearchEmptyViewImageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchSearchEmptyView$10(boolean z, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (!z) {
            fFloatValue = 1.0f - fFloatValue;
        }
        this.emojiSearchEmptyView.setAlpha(this.emojiSearchGridView.getAlpha() * fFloatValue);
    }

    public void search(String str) {
        search(str, true, true);
    }

    public void setPaused(boolean z, boolean z2) {
        if (this.paused == z) {
            return;
        }
        this.paused = z;
        this.pausedExceptSelected = z2;
        EmojiListView emojiListView = this.emojiGridView;
        if (emojiListView != null) {
            emojiListView.invalidate();
        }
        EmojiListView emojiListView2 = this.emojiSearchGridView;
        if (emojiListView2 != null) {
            emojiListView2.invalidate();
        }
    }

    public void search(final String str, final boolean z, boolean z2) {
        Runnable runnable = this.clearSearchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.clearSearchRunnable = null;
        }
        Runnable runnable2 = this.searchRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.searchRunnable = null;
        }
        if (TextUtils.isEmpty(str)) {
            this.searching = false;
            this.searched = false;
            switchGrids(false, z);
            SearchBox searchBox = this.searchBox;
            if (searchBox != null) {
                searchBox.showProgress(false);
                this.searchBox.toggleClear(false);
            }
            this.searchAdapter.updateRows(true);
            this.lastQuery = null;
        } else {
            boolean z3 = this.searching;
            final boolean z4 = !z3;
            this.searching = true;
            this.searched = false;
            this.searchedLiftUp = z;
            SearchBox searchBox2 = this.searchBox;
            if (searchBox2 != null) {
                searchBox2.showProgress(true);
            }
            if (!z3) {
                ArrayList arrayList = this.searchResult;
                if (arrayList != null) {
                    arrayList.clear();
                }
                ArrayList arrayList2 = this.searchResultStickers;
                if (arrayList2 != null) {
                    arrayList2.clear();
                }
                ArrayList arrayList3 = this.searchSets;
                if (arrayList3 != null) {
                    arrayList3.clear();
                }
                this.searchAdapter.updateRows(false);
            } else if (!str.equals(this.lastQuery)) {
                Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$search$11();
                    }
                };
                this.clearSearchRunnable = runnable3;
                AndroidUtilities.runOnUIThread(runnable3, 120L);
            }
            this.lastQuery = str;
            final String[] currentKeyboardLanguage = AndroidUtilities.getCurrentKeyboardLanguage();
            if (!Arrays.equals(currentKeyboardLanguage, lastSearchKeyboardLanguage)) {
                MediaDataController.getInstance(this.currentAccount).fetchNewEmojiKeywords(currentKeyboardLanguage);
            }
            lastSearchKeyboardLanguage = currentKeyboardLanguage;
            Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$search$30(str, z, z4, currentKeyboardLanguage);
                }
            };
            this.searchRunnable = runnable4;
            AndroidUtilities.runOnUIThread(runnable4, z2 ? 425L : 0L);
            SearchBox searchBox3 = this.searchBox;
            if (searchBox3 != null) {
                searchBox3.showProgress(true);
                this.searchBox.toggleClear(z);
            }
        }
        updateSearchBox();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$11() {
        ArrayList arrayList = this.searchResult;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList arrayList2 = this.searchResultStickers;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        ArrayList arrayList3 = this.searchSets;
        if (arrayList3 != null) {
            arrayList3.clear();
        }
        this.searchAdapter.updateRows(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$30(final String str, final boolean z, final boolean z2, final String[] strArr) {
        Utilities.Callback callback;
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        final LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        final HashMap<String, TLRPC.TL_availableReaction> reactionsMap = MediaDataController.getInstance(this.currentAccount).getReactionsMap();
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final boolean zFullyConsistsOfEmojis = Emoji.fullyConsistsOfEmojis(str);
        final ArrayList arrayList3 = new ArrayList();
        final HashMap map = new HashMap();
        final ArrayList arrayList4 = new ArrayList();
        Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$search$13(str, z, arrayList, reactionsMap, arrayList2, linkedHashSet, linkedHashSet2, arrayList4, arrayList3, z2, (Runnable) obj);
            }
        };
        int i = this.type;
        if (i == 13) {
            Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$search$15(str, linkedHashSet2, (Runnable) obj);
                }
            }, callback2);
            return;
        }
        if (i == 14) {
            if (zFullyConsistsOfEmojis) {
                callback = new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$search$16(str, arrayList2, arrayList, (Runnable) obj);
                    }
                };
            } else {
                callback = new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$search$18(str, arrayList2, arrayList, (Runnable) obj);
                    }
                };
            }
            Utilities.doCallbacks(callback, callback2);
            return;
        }
        Utilities.doCallbacks(new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                SelectAnimatedEmojiDialog.$r8$lambda$vKBERbIBFU3MF8WpleF4ta0yvt4(zFullyConsistsOfEmojis, str, linkedHashSet, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$search$22(str, linkedHashSet, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$search$24(strArr, str, linkedHashSet, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$search$26(zFullyConsistsOfEmojis, linkedHashSet, str, reactionsMap, arrayList, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$search$28(str, arrayList3, map, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$search$29(str, arrayList4, (Runnable) obj);
            }
        }, callback2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$13(final String str, final boolean z, final ArrayList arrayList, final HashMap map, final ArrayList arrayList2, final LinkedHashSet linkedHashSet, final LinkedHashSet linkedHashSet2, final ArrayList arrayList3, final ArrayList arrayList4, final boolean z2, Runnable runnable) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$search$12(str, z, arrayList, map, arrayList2, linkedHashSet, linkedHashSet2, arrayList3, arrayList4, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$12(String str, boolean z, ArrayList arrayList, HashMap map, ArrayList arrayList2, LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2, ArrayList arrayList3, ArrayList arrayList4, boolean z2) {
        Runnable runnable = this.clearSearchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.clearSearchRunnable = null;
        }
        if (str != this.lastQuery) {
            return;
        }
        this.searched = true;
        switchGrids(true, z);
        SearchBox searchBox = this.searchBox;
        int i = 0;
        if (searchBox != null) {
            searchBox.showProgress(false);
        }
        ArrayList arrayList5 = this.searchResult;
        if (arrayList5 == null) {
            this.searchResult = new ArrayList();
        } else {
            arrayList5.clear();
        }
        ArrayList arrayList6 = this.searchSets;
        if (arrayList6 == null) {
            this.searchSets = new ArrayList();
        } else {
            arrayList6.clear();
        }
        ArrayList arrayList7 = this.stickersSearchResult;
        if (arrayList7 == null) {
            this.stickersSearchResult = new ArrayList();
        } else {
            arrayList7.clear();
        }
        ArrayList arrayList8 = this.searchResultStickers;
        if (arrayList8 == null) {
            this.searchResultStickers = new ArrayList();
        } else {
            arrayList8.clear();
        }
        this.emojiSearchGridView.scrollToPosition(0);
        int i2 = this.type;
        if (i2 == 1 || i2 == 14 || i2 == 11 || i2 == 2) {
            if (!arrayList.isEmpty()) {
                this.searchResult.addAll(arrayList);
            } else {
                TLRPC.TL_availableReaction tL_availableReaction = (TLRPC.TL_availableReaction) map.get(str);
                if (tL_availableReaction != null) {
                    this.searchResult.add(ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(tL_availableReaction));
                }
            }
            if (!arrayList2.isEmpty()) {
                this.searchResultStickers.addAll(arrayList2);
            }
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            l.longValue();
            this.searchResult.add(ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(l));
        }
        Iterator it2 = linkedHashSet2.iterator();
        while (it2.hasNext()) {
            this.searchResult.add(ReactionsLayoutInBubble.VisibleReaction.fromEmojicon((String) it2.next()));
        }
        this.searchSets.addAll(arrayList3);
        int size = arrayList4.size();
        while (i < size) {
            Object obj = arrayList4.get(i);
            i++;
            this.stickersSearchResult.addAll((ArrayList) obj);
        }
        this.searchAdapter.updateRows(!z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$15(String str, final LinkedHashSet linkedHashSet, final Runnable runnable) {
        MediaDataController.getInstance(this.currentAccount).getEmojiSuggestions(lastSearchKeyboardLanguage, str, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
            public final void run(ArrayList arrayList, String str2) {
                SelectAnimatedEmojiDialog.$r8$lambda$oE0xTFpVIBp_a965tQFMs2jVRFo(linkedHashSet, runnable, arrayList, str2);
            }
        }, null, false, false, false, 0);
    }

    public static /* synthetic */ void $r8$lambda$oE0xTFpVIBp_a965tQFMs2jVRFo(LinkedHashSet linkedHashSet, Runnable runnable, ArrayList arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                if (!((MediaDataController.KeywordResult) arrayList.get(i)).emoji.startsWith("animated_")) {
                    String strFixEmoji = Emoji.fixEmoji(((MediaDataController.KeywordResult) arrayList.get(i)).emoji);
                    if (Emoji.getEmojiDrawable(strFixEmoji) != null) {
                        linkedHashSet.add(strFixEmoji);
                    }
                }
            } catch (Exception unused) {
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$16(String str, ArrayList arrayList, ArrayList arrayList2, Runnable runnable) {
        TLRPC.messages_AvailableEffects availableEffects = MessagesController.getInstance(this.currentAccount).getAvailableEffects();
        if (availableEffects != null) {
            for (int i = 0; i < availableEffects.effects.size(); i++) {
                try {
                    TLRPC.TL_availableEffect tL_availableEffect = (TLRPC.TL_availableEffect) availableEffects.effects.get(i);
                    if (str.contains(tL_availableEffect.emoticon)) {
                        (tL_availableEffect.effect_animation_id == 0 ? arrayList : arrayList2).add(ReactionsLayoutInBubble.VisibleReaction.fromTL(tL_availableEffect));
                    }
                } catch (Exception unused) {
                }
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$18(String str, final ArrayList arrayList, final ArrayList arrayList2, final Runnable runnable) {
        MediaDataController.getInstance(this.currentAccount).getEmojiSuggestions(lastSearchKeyboardLanguage, str, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30
            @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
            public final void run(ArrayList arrayList3, String str2) {
                this.f$0.lambda$search$17(arrayList, arrayList2, runnable, arrayList3, str2);
            }
        }, null, false, false, false, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$17(ArrayList arrayList, ArrayList arrayList2, Runnable runnable, ArrayList arrayList3, String str) {
        TLRPC.messages_AvailableEffects availableEffects = MessagesController.getInstance(this.currentAccount).getAvailableEffects();
        HashSet hashSet = new HashSet();
        if (availableEffects != null) {
            for (int i = 0; i < arrayList3.size(); i++) {
                try {
                    if (!((MediaDataController.KeywordResult) arrayList3.get(i)).emoji.startsWith("animated_")) {
                        String strFixEmoji = Emoji.fixEmoji(((MediaDataController.KeywordResult) arrayList3.get(i)).emoji);
                        for (int i2 = 0; i2 < availableEffects.effects.size(); i2++) {
                            TLRPC.TL_availableEffect tL_availableEffect = (TLRPC.TL_availableEffect) availableEffects.effects.get(i2);
                            if (!hashSet.contains(Long.valueOf(tL_availableEffect.f1699id)) && (tL_availableEffect.emoticon.contains(strFixEmoji) || strFixEmoji.contains(tL_availableEffect.emoticon))) {
                                (tL_availableEffect.effect_animation_id == 0 ? arrayList : arrayList2).add(ReactionsLayoutInBubble.VisibleReaction.fromTL(tL_availableEffect));
                                hashSet.add(Long.valueOf(tL_availableEffect.f1699id));
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$vKBERbIBFU3MF8WpleF4ta0yvt4(boolean z, String str, final LinkedHashSet linkedHashSet, final Runnable runnable) {
        if (z) {
            StickerCategoriesListView.search.fetch(UserConfig.selectedAccount, str, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    SelectAnimatedEmojiDialog.$r8$lambda$Uqn0EM85MByBpD0DweJ2uY4FGXA(linkedHashSet, runnable, (TLRPC.TL_emojiList) obj);
                }
            });
        } else {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$Uqn0EM85MByBpD0DweJ2uY4FGXA(LinkedHashSet linkedHashSet, Runnable runnable, TLRPC.TL_emojiList tL_emojiList) {
        if (tL_emojiList != null) {
            linkedHashSet.addAll(tL_emojiList.document_id);
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$22(String str, final LinkedHashSet linkedHashSet, final Runnable runnable) {
        MediaDataController.getInstance(this.currentAccount).getAnimatedEmojiByKeywords(str, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                SelectAnimatedEmojiDialog.$r8$lambda$nMdf9SYCdSK9ps6KLP8KilCmWzA(linkedHashSet, runnable, (ArrayList) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$nMdf9SYCdSK9ps6KLP8KilCmWzA(LinkedHashSet linkedHashSet, Runnable runnable, ArrayList arrayList) {
        if (arrayList != null) {
            linkedHashSet.addAll(arrayList);
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$24(String[] strArr, String str, final LinkedHashSet linkedHashSet, final Runnable runnable) {
        if (ConnectionsManager.getInstance(this.currentAccount).getConnectionState() != 3) {
            runnable.run();
        } else {
            MediaDataController.getInstance(this.currentAccount).searchStickers(true, (strArr == null || strArr.length == 0) ? _UrlKt.FRAGMENT_ENCODE_SET : strArr[0], str, new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda35
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$search$23(linkedHashSet, runnable, (ArrayList) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$23(LinkedHashSet linkedHashSet, Runnable runnable, ArrayList arrayList) {
        AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).putDocuments(arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            linkedHashSet.add(Long.valueOf(((TLRPC.Document) obj).f1668id));
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$26(boolean z, final LinkedHashSet linkedHashSet, String str, final HashMap map, final ArrayList arrayList, final Runnable runnable) {
        ArrayList arrayList2;
        ArrayList arrayList3;
        if (z) {
            ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = MediaDataController.getInstance(this.currentAccount).getStickerSets(5);
            for (int i = 0; i < stickerSets.size(); i++) {
                if (stickerSets.get(i).documents != null && (arrayList3 = stickerSets.get(i).documents) != null) {
                    for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                        String strFindAnimatedEmojiEmoticon = MessageObject.findAnimatedEmojiEmoticon((TLRPC.Document) arrayList3.get(i2), null);
                        long j = ((TLRPC.Document) arrayList3.get(i2)).f1668id;
                        if (strFindAnimatedEmojiEmoticon != null && !linkedHashSet.contains(Long.valueOf(j)) && str.contains(strFindAnimatedEmojiEmoticon.toLowerCase())) {
                            linkedHashSet.add(Long.valueOf(j));
                        }
                    }
                }
            }
            ArrayList<TLRPC.StickerSetCovered> featuredEmojiSets = MediaDataController.getInstance(this.currentAccount).getFeaturedEmojiSets();
            for (int i3 = 0; i3 < featuredEmojiSets.size(); i3++) {
                if ((featuredEmojiSets.get(i3) instanceof TLRPC.TL_stickerSetFullCovered) && ((TLRPC.TL_stickerSetFullCovered) featuredEmojiSets.get(i3)).keywords != null && (arrayList2 = ((TLRPC.TL_stickerSetFullCovered) featuredEmojiSets.get(i3)).documents) != null) {
                    for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                        String strFindAnimatedEmojiEmoticon2 = MessageObject.findAnimatedEmojiEmoticon((TLRPC.Document) arrayList2.get(i4), null);
                        long j2 = ((TLRPC.Document) arrayList2.get(i4)).f1668id;
                        if (strFindAnimatedEmojiEmoticon2 != null && !linkedHashSet.contains(Long.valueOf(j2)) && str.contains(strFindAnimatedEmojiEmoticon2)) {
                            linkedHashSet.add(Long.valueOf(j2));
                        }
                    }
                }
            }
            runnable.run();
            return;
        }
        MediaDataController.getInstance(this.currentAccount).getEmojiSuggestions(lastSearchKeyboardLanguage, str, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda36
            @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
            public final void run(ArrayList arrayList4, String str2) {
                this.f$0.lambda$search$25(linkedHashSet, map, arrayList, runnable, arrayList4, str2);
            }
        }, null, true, this.type == 3, false, 30);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$25(LinkedHashSet linkedHashSet, HashMap map, ArrayList arrayList, Runnable runnable, ArrayList arrayList2, String str) {
        TLRPC.TL_availableReaction tL_availableReaction;
        for (int i = 0; i < arrayList2.size(); i++) {
            try {
                if (((MediaDataController.KeywordResult) arrayList2.get(i)).emoji.startsWith("animated_")) {
                    linkedHashSet.add(Long.valueOf(Long.parseLong(((MediaDataController.KeywordResult) arrayList2.get(i)).emoji.substring(9))));
                } else {
                    int i2 = this.type;
                    if ((i2 == 1 || i2 == 11 || i2 == 2) && (tL_availableReaction = (TLRPC.TL_availableReaction) map.get(((MediaDataController.KeywordResult) arrayList2.get(i)).emoji)) != null) {
                        arrayList.add(ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(tL_availableReaction));
                    }
                }
            } catch (Exception unused) {
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ac A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$search$28(String str, final ArrayList arrayList, final HashMap map, final Runnable runnable) {
        if (this.type != 4) {
            runnable.run();
            return;
        }
        ArrayList arrayList2 = new ArrayList(0);
        LongSparseArray longSparseArray = new LongSparseArray(0);
        final HashMap<String, ArrayList<TLRPC.Document>> allStickers = MediaDataController.getInstance(this.currentAccount).getAllStickers();
        if (str.length() <= 14) {
            int length = str.length();
            CharSequence charSequenceConcat = str;
            int i = 0;
            while (i < length) {
                if (i < length - 1) {
                    if (charSequenceConcat.charAt(i) == 55356) {
                        int i2 = i + 1;
                        if (charSequenceConcat.charAt(i2) < 57339 || charSequenceConcat.charAt(i2) > 57343) {
                            if (charSequenceConcat.charAt(i) == 8205) {
                                int i3 = i + 1;
                                if (charSequenceConcat.charAt(i3) == 9792 || charSequenceConcat.charAt(i3) == 9794) {
                                }
                                i--;
                            }
                            if (charSequenceConcat.charAt(i) != 65039) {
                            }
                        }
                        charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i), charSequenceConcat.subSequence(i + 2, charSequenceConcat.length()));
                        length -= 2;
                        i--;
                    }
                } else if (charSequenceConcat.charAt(i) != 65039) {
                    charSequenceConcat = TextUtils.concat(charSequenceConcat.subSequence(0, i), charSequenceConcat.subSequence(i + 1, charSequenceConcat.length()));
                    length--;
                    i--;
                }
                i++;
            }
            ArrayList<TLRPC.Document> arrayList3 = allStickers != null ? allStickers.get(charSequenceConcat.toString()) : null;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                arrayList2.addAll(arrayList3);
                int size = arrayList3.size();
                for (int i4 = 0; i4 < size; i4++) {
                    TLRPC.Document document = arrayList3.get(i4);
                    longSparseArray.put(document.f1668id, document);
                }
                arrayList.add(arrayList2);
            }
        }
        if (allStickers == null || allStickers.isEmpty() || str.length() <= 1) {
            return;
        }
        MediaDataController.getInstance(this.currentAccount).getEmojiSuggestions(lastSearchKeyboardLanguage, str, false, new MediaDataController.KeywordResultCallback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34
            @Override // org.telegram.messenger.MediaDataController.KeywordResultCallback
            public final void run(ArrayList arrayList4, String str2) {
                SelectAnimatedEmojiDialog.m17908$r8$lambda$OoEVRIOoZ9luIKqwgXBgPt8cmk(allStickers, map, arrayList, runnable, arrayList4, str2);
            }
        }, false);
    }

    /* JADX INFO: renamed from: $r8$lambda$OoEVRIOoZ9luIK-qwgXBgPt8cmk, reason: not valid java name */
    public static /* synthetic */ void m17908$r8$lambda$OoEVRIOoZ9luIKqwgXBgPt8cmk(HashMap map, HashMap map2, ArrayList arrayList, Runnable runnable, ArrayList arrayList2, String str) {
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            String str2 = ((MediaDataController.KeywordResult) arrayList2.get(i)).emoji;
            ArrayList arrayList3 = map != null ? (ArrayList) map.get(str2) : null;
            if (arrayList3 != null && !arrayList3.isEmpty() && !map2.containsKey(arrayList3)) {
                map2.put(arrayList3, str2);
                arrayList.add(arrayList3);
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$search$29(String str, ArrayList arrayList, Runnable runnable) {
        TLRPC.StickerSet stickerSet;
        ArrayList arrayList2;
        TLRPC.StickerSet stickerSet2;
        ArrayList<TLRPC.TL_messages_stickerSet> stickerSets = MediaDataController.getInstance(this.currentAccount).getStickerSets(5);
        HashSet hashSet = new HashSet();
        String strTranslitSafe = AndroidUtilities.translitSafe(str);
        String str2 = " " + strTranslitSafe;
        if (stickerSets != null) {
            for (int i = 0; i < stickerSets.size(); i++) {
                TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSets.get(i);
                if (tL_messages_stickerSet != null && (stickerSet2 = tL_messages_stickerSet.set) != null && stickerSet2.title != null && tL_messages_stickerSet.documents != null && !hashSet.contains(Long.valueOf(stickerSet2.f1696id))) {
                    String strTranslitSafe2 = AndroidUtilities.translitSafe(tL_messages_stickerSet.set.title);
                    if (strTranslitSafe2.startsWith(strTranslitSafe) || strTranslitSafe2.contains(str2)) {
                        arrayList.add(new SetTitleDocument(strTranslitSafe2));
                        arrayList.addAll(tL_messages_stickerSet.documents);
                        hashSet.add(Long.valueOf(tL_messages_stickerSet.set.f1696id));
                    }
                }
            }
        }
        ArrayList<TLRPC.StickerSetCovered> featuredEmojiSets = MediaDataController.getInstance(this.currentAccount).getFeaturedEmojiSets();
        if (featuredEmojiSets != null) {
            for (int i2 = 0; i2 < featuredEmojiSets.size(); i2++) {
                TLRPC.StickerSetCovered stickerSetCovered = featuredEmojiSets.get(i2);
                if (stickerSetCovered != null && (stickerSet = stickerSetCovered.set) != null && stickerSet.title != null && !hashSet.contains(Long.valueOf(stickerSet.f1696id))) {
                    String strTranslitSafe3 = AndroidUtilities.translitSafe(stickerSetCovered.set.title);
                    if (strTranslitSafe3.startsWith(strTranslitSafe) || strTranslitSafe3.contains(str2)) {
                        if (stickerSetCovered instanceof TLRPC.TL_stickerSetNoCovered) {
                            TLRPC.TL_messages_stickerSet stickerSet3 = MediaDataController.getInstance(this.currentAccount).getStickerSet(MediaDataController.getInputStickerSet(stickerSetCovered.set), Integer.valueOf(stickerSetCovered.set.hash), true);
                            arrayList2 = stickerSet3 != null ? stickerSet3.documents : null;
                        } else if (stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered) {
                            arrayList2 = ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered).documents;
                        } else {
                            arrayList2 = stickerSetCovered.covers;
                        }
                        if (arrayList2 != null && arrayList2.size() != 0) {
                            arrayList.add(new SetTitleDocument(stickerSetCovered.set.title));
                            arrayList.addAll(arrayList2);
                            hashSet.add(Long.valueOf(stickerSetCovered.set.f1696id));
                        }
                    }
                }
            }
        }
        runnable.run();
    }

    public static TLRPC.Document findSticker(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, String str) {
        long jLongValue;
        if (tL_messages_stickerSet == null) {
            return null;
        }
        String strFixEmoji = Emoji.fixEmoji(str);
        int i = 0;
        while (true) {
            if (i >= tL_messages_stickerSet.packs.size()) {
                jLongValue = 0;
                break;
            }
            if (!((TLRPC.TL_stickerPack) tL_messages_stickerSet.packs.get(i)).documents.isEmpty() && TextUtils.equals(Emoji.fixEmoji(((TLRPC.TL_stickerPack) tL_messages_stickerSet.packs.get(i)).emoticon), strFixEmoji)) {
                jLongValue = ((Long) ((TLRPC.TL_stickerPack) tL_messages_stickerSet.packs.get(i)).documents.get(0)).longValue();
                break;
            }
            i++;
        }
        if (jLongValue == 0) {
            return null;
        }
        for (int i2 = 0; i2 < tL_messages_stickerSet.documents.size(); i2++) {
            TLRPC.Document document = (TLRPC.Document) tL_messages_stickerSet.documents.get(i2);
            if (document.f1668id == jLongValue) {
                return document;
            }
        }
        return null;
    }

    /* JADX INFO: loaded from: classes6.dex */
    private class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private int count;
        int emojiHeaderRow;
        int emojiStartRow;
        private ArrayList rowHashCodes;
        int setsStartRow;
        int stickersHeaderRow;
        int stickersStartRow;

        private SearchAdapter() {
            this.emojiHeaderRow = -1;
            this.stickersHeaderRow = -1;
            this.count = 1;
            this.rowHashCodes = new ArrayList();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 3 || viewHolder.getItemViewType() == 4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View imageViewEmoji;
            if (i == 6) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                imageViewEmoji = selectAnimatedEmojiDialog.new HeaderView(selectAnimatedEmojiDialog.getContext(), SelectAnimatedEmojiDialog.this.type == 6);
            } else if (i == 7) {
                imageViewEmoji = new View(SelectAnimatedEmojiDialog.this.getContext()) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SearchAdapter.1
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(52.0f), TLObject.FLAG_30));
                    }
                };
                imageViewEmoji.setTag("searchbox");
            } else {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                imageViewEmoji = selectAnimatedEmojiDialog2.new ImageViewEmoji(selectAnimatedEmojiDialog2.getContext());
            }
            if (SelectAnimatedEmojiDialog.this.enterAnimationInProgress()) {
                imageViewEmoji.setScaleX(0.0f);
                imageViewEmoji.setScaleY(0.0f);
            }
            return new RecyclerListView.Holder(imageViewEmoji);
        }

        public boolean isSticker(int i) {
            int i2;
            if (SelectAnimatedEmojiDialog.this.type == 14) {
                return SelectAnimatedEmojiDialog.this.searchResultStickers != null && i >= (i2 = this.stickersStartRow) && i - i2 < SelectAnimatedEmojiDialog.this.searchResultStickers.size();
            }
            int i3 = this.stickersStartRow;
            return i > i3 && (i - i3) - 1 < SelectAnimatedEmojiDialog.this.stickersSearchResult.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2;
            if (i == this.emojiHeaderRow || i == this.stickersHeaderRow) {
                return 6;
            }
            if (SelectAnimatedEmojiDialog.this.type == 14) {
                if (SelectAnimatedEmojiDialog.this.searchResultStickers != null && i >= (i2 = this.stickersStartRow) && i - i2 < SelectAnimatedEmojiDialog.this.searchResultStickers.size()) {
                    return 4;
                }
            } else {
                if (i > this.stickersStartRow && (i - r0) - 1 < SelectAnimatedEmojiDialog.this.stickersSearchResult.size()) {
                    return 5;
                }
            }
            if (SelectAnimatedEmojiDialog.this.searchResult == null) {
                return 3;
            }
            if (i > this.emojiStartRow && (i - r0) - 1 < SelectAnimatedEmojiDialog.this.searchResult.size() && (SelectAnimatedEmojiDialog.this.type == 13 || ((ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.searchResult.get((i - this.emojiStartRow) - 1)).documentId != 0)) {
                return 3;
            }
            int i3 = this.setsStartRow;
            if (i - i3 < 0 || i - i3 >= SelectAnimatedEmojiDialog.this.searchSets.size()) {
                return 4;
            }
            return SelectAnimatedEmojiDialog.this.searchSets.get(i - this.setsStartRow) instanceof SetTitleDocument ? 6 : 3;
        }

        /* JADX WARN: Removed duplicated region for block: B:120:0x0389  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLRPC.Document document;
            Long lValueOf;
            boolean zContains;
            int i2;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction;
            if (viewHolder.getItemViewType() == 6) {
                HeaderView headerView = (HeaderView) viewHolder.itemView;
                if (SelectAnimatedEmojiDialog.this.searchSets != null) {
                    int i3 = this.setsStartRow;
                    if (i - i3 >= 0 && i - i3 < SelectAnimatedEmojiDialog.this.searchSets.size()) {
                        TLRPC.Document document2 = (TLRPC.Document) SelectAnimatedEmojiDialog.this.searchSets.get(i - this.setsStartRow);
                        if (document2 instanceof SetTitleDocument) {
                            headerView.setText(((SetTitleDocument) document2).title, SelectAnimatedEmojiDialog.this.lastQuery, false);
                        }
                    } else if (i == this.emojiHeaderRow) {
                        headerView.setText(LocaleController.getString(C2888R.string.Emoji), false);
                    } else if (SelectAnimatedEmojiDialog.this.type == 14) {
                        headerView.setText(LocaleController.getString(C2888R.string.StickerEffects), false);
                    } else {
                        headerView.setText(LocaleController.getString(C2888R.string.AccDescrStickers), false);
                    }
                }
                headerView.closeIcon.setVisibility(8);
                return;
            }
            if (viewHolder.getItemViewType() == 5) {
                TLRPC.Document document3 = (TLRPC.Document) SelectAnimatedEmojiDialog.this.stickersSearchResult.get((i - this.stickersStartRow) - 1);
                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) viewHolder.itemView;
                imageViewEmoji.createImageReceiver(SelectAnimatedEmojiDialog.this.emojiSearchGridView);
                imageViewEmoji.imageReceiver.setImage(ImageLocation.getForDocument(document3), "100_100_firstframe", null, null, DocumentObject.getSvgThumb(document3, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f), 0L, "tgs", document3, 0);
                imageViewEmoji.isStaticIcon = true;
                imageViewEmoji.document = document3;
                imageViewEmoji.span = null;
                return;
            }
            if (viewHolder.getItemViewType() == 4) {
                ImageViewEmoji imageViewEmoji2 = (ImageViewEmoji) viewHolder.itemView;
                imageViewEmoji2.position = i;
                if (SelectAnimatedEmojiDialog.this.searchResult != null && i >= 0 && i < SelectAnimatedEmojiDialog.this.searchResult.size()) {
                    visibleReaction = (ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.searchResult.get(i);
                } else if (SelectAnimatedEmojiDialog.this.searchResultStickers == null || i < (i2 = this.stickersStartRow) || i - i2 >= SelectAnimatedEmojiDialog.this.searchResultStickers.size()) {
                    return;
                } else {
                    visibleReaction = (ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.searchResultStickers.get(i - this.stickersStartRow);
                }
                if (imageViewEmoji2.imageReceiver == null) {
                    ImageReceiver imageReceiver = new ImageReceiver(imageViewEmoji2);
                    imageViewEmoji2.imageReceiver = imageReceiver;
                    imageReceiver.setLayerNum(7);
                    imageViewEmoji2.imageReceiver.onAttachedToWindow();
                }
                imageViewEmoji2.imageReceiver.setParentView(SelectAnimatedEmojiDialog.this.emojiSearchGridView);
                imageViewEmoji2.reaction = visibleReaction;
                imageViewEmoji2.isFirstReactions = false;
                imageViewEmoji2.setViewSelected(SelectAnimatedEmojiDialog.this.selectedReactions.contains(visibleReaction), false);
                imageViewEmoji2.notDraw = false;
                imageViewEmoji2.invalidate();
                if (SelectAnimatedEmojiDialog.this.type == 13) {
                    imageViewEmoji2.setDrawable(Emoji.getEmojiDrawable(visibleReaction.emojicon));
                } else if (!visibleReaction.isEffect && visibleReaction.emojicon != null) {
                    imageViewEmoji2.isDefaultReaction = true;
                    TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).getReactionsMap().get(visibleReaction.emojicon);
                    if (tL_availableReaction != null) {
                        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tL_availableReaction.activate_animation, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f);
                        if (!LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS)) {
                            imageViewEmoji2.imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.select_animation), "60_60_firstframe", null, null, svgThumb, 0L, "tgs", visibleReaction, 0);
                        } else {
                            ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = visibleReaction;
                            imageViewEmoji2.imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.select_animation), "60_60_pcache", ImageLocation.getForDocument(tL_availableReaction.select_animation), "30_30_firstframe", null, null, svgThumb, 0L, "tgs", visibleReaction2, 0);
                            visibleReaction = visibleReaction2;
                        }
                        MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).preloadImage(imageViewEmoji2.preloadEffectImageReceiver, ImageLocation.getForDocument(tL_availableReaction.around_animation), ReactionsEffectOverlay.getFilterForAroundAnimation());
                    } else {
                        imageViewEmoji2.imageReceiver.clearImage();
                        imageViewEmoji2.preloadEffectImageReceiver.clearImage();
                    }
                    imageViewEmoji2.span = null;
                    imageViewEmoji2.document = null;
                    imageViewEmoji2.setDrawable(null);
                    PremiumLockIconView premiumLockIconView = imageViewEmoji2.premiumLockIconView;
                    if (premiumLockIconView != null) {
                        premiumLockIconView.setVisibility(8);
                        imageViewEmoji2.premiumLockIconView.setImageReceiver(null);
                    }
                    if (tL_availableReaction == null && visibleReaction.isEffect) {
                        imageViewEmoji2.setDrawable(Emoji.getEmojiDrawable(visibleReaction.emojicon));
                    }
                } else {
                    imageViewEmoji2.isDefaultReaction = false;
                    imageViewEmoji2.span = new AnimatedEmojiSpan(visibleReaction.documentId, (Paint.FontMetricsInt) null);
                    imageViewEmoji2.document = null;
                    imageViewEmoji2.imageReceiver.clearImage();
                    imageViewEmoji2.preloadEffectImageReceiver.clearImage();
                    AnimatedEmojiDrawable animatedEmojiDrawableMake = (AnimatedEmojiDrawable) SelectAnimatedEmojiDialog.this.emojiSearchGridView.animatedEmojiDrawables.get(imageViewEmoji2.span.getDocumentId());
                    if (animatedEmojiDrawableMake == null) {
                        animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(SelectAnimatedEmojiDialog.this.currentAccount, SelectAnimatedEmojiDialog.this.getCacheType(), imageViewEmoji2.span.getDocumentId());
                        SelectAnimatedEmojiDialog.this.emojiSearchGridView.animatedEmojiDrawables.put(imageViewEmoji2.span.getDocumentId(), animatedEmojiDrawableMake);
                    }
                    imageViewEmoji2.setDrawable(animatedEmojiDrawableMake);
                }
                if (!UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium() && SelectAnimatedEmojiDialog.this.type == 14 && visibleReaction.isEffect && visibleReaction.premium) {
                    imageViewEmoji2.createPremiumLockView();
                    imageViewEmoji2.premiumLockIconView.setVisibility(0);
                    imageViewEmoji2.setEmojicon(null);
                    return;
                }
                if (visibleReaction.sticker) {
                    imageViewEmoji2.setEmojicon(visibleReaction.emojicon);
                } else {
                    imageViewEmoji2.setEmojicon(null);
                }
                PremiumLockIconView premiumLockIconView2 = imageViewEmoji2.premiumLockIconView;
                if (premiumLockIconView2 != null) {
                    premiumLockIconView2.setVisibility(4);
                    return;
                }
                return;
            }
            if (viewHolder.getItemViewType() == 3) {
                ImageViewEmoji imageViewEmoji3 = (ImageViewEmoji) viewHolder.itemView;
                imageViewEmoji3.empty = false;
                imageViewEmoji3.position = i;
                imageViewEmoji3.setPadding(AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f));
                imageViewEmoji3.setDrawable(null);
                if (SelectAnimatedEmojiDialog.this.searchResult != null && i >= 0 && i < SelectAnimatedEmojiDialog.this.searchResult.size()) {
                    ReactionsLayoutInBubble.VisibleReaction visibleReaction3 = (ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.searchResult.get(i);
                    imageViewEmoji3.reaction = visibleReaction3;
                    long j = visibleReaction3.documentId;
                    if (j == 0) {
                        boolean zContains2 = SelectAnimatedEmojiDialog.this.selectedReactions.contains(visibleReaction3);
                        imageViewEmoji3.isFirstReactions = true;
                        imageViewEmoji3.setDrawable(Emoji.getEmojiDrawable(visibleReaction3.emojicon));
                        imageViewEmoji3.setViewSelected(zContains2, false);
                        return;
                    }
                    lValueOf = Long.valueOf(j);
                    if (SelectAnimatedEmojiDialog.this.type == 14 && !UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium() && visibleReaction3.isEffect && visibleReaction3.premium) {
                        imageViewEmoji3.createPremiumLockView();
                        imageViewEmoji3.premiumLockIconView.setVisibility(0);
                    } else {
                        PremiumLockIconView premiumLockIconView3 = imageViewEmoji3.premiumLockIconView;
                        if (premiumLockIconView3 != null) {
                            premiumLockIconView3.setVisibility(4);
                        }
                    }
                    document = null;
                } else if (SelectAnimatedEmojiDialog.this.searchSets != null) {
                    int i4 = this.setsStartRow;
                    if (i - i4 < 0 || i - i4 >= SelectAnimatedEmojiDialog.this.searchSets.size()) {
                        document = null;
                        lValueOf = null;
                    } else {
                        document = (TLRPC.Document) SelectAnimatedEmojiDialog.this.searchSets.get(i - this.setsStartRow);
                        if (!(document instanceof SetTitleDocument)) {
                            lValueOf = null;
                        }
                    }
                }
                if (lValueOf == null && document == null) {
                    zContains = false;
                } else {
                    if (document != null) {
                        imageViewEmoji3.span = new AnimatedEmojiSpan(document, (Paint.FontMetricsInt) null);
                        imageViewEmoji3.document = document;
                        zContains = SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(Long.valueOf(document.f1668id));
                    } else {
                        AnimatedEmojiSpan animatedEmojiSpan = new AnimatedEmojiSpan(lValueOf.longValue(), (Paint.FontMetricsInt) null);
                        imageViewEmoji3.span = animatedEmojiSpan;
                        imageViewEmoji3.document = animatedEmojiSpan.document;
                        zContains = SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(lValueOf);
                    }
                    AnimatedEmojiDrawable animatedEmojiDrawableMake2 = (AnimatedEmojiDrawable) SelectAnimatedEmojiDialog.this.emojiSearchGridView.animatedEmojiDrawables.get(imageViewEmoji3.span.getDocumentId());
                    if (animatedEmojiDrawableMake2 == null) {
                        animatedEmojiDrawableMake2 = AnimatedEmojiDrawable.make(SelectAnimatedEmojiDialog.this.currentAccount, SelectAnimatedEmojiDialog.this.getCacheType(), imageViewEmoji3.span.getDocumentId());
                        SelectAnimatedEmojiDialog.this.emojiSearchGridView.animatedEmojiDrawables.put(imageViewEmoji3.span.getDocumentId(), animatedEmojiDrawableMake2);
                    }
                    imageViewEmoji3.setDrawable(animatedEmojiDrawableMake2);
                }
                imageViewEmoji3.setViewSelected(zContains, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.count;
        }

        public void updateRows(boolean z) {
            if (SelectAnimatedEmojiDialog.this.isAttached) {
                int unused = SelectAnimatedEmojiDialog.this.type;
            }
            new ArrayList(this.rowHashCodes);
            this.setsStartRow = -1;
            this.stickersStartRow = -1;
            boolean z2 = false;
            this.count = 0;
            this.rowHashCodes.clear();
            if (SelectAnimatedEmojiDialog.this.searchResult != null) {
                if (SelectAnimatedEmojiDialog.this.type == 4 && !SelectAnimatedEmojiDialog.this.searchResult.isEmpty()) {
                    int i = this.count;
                    this.count = i + 1;
                    this.emojiHeaderRow = i;
                    this.rowHashCodes.add(1);
                }
                this.emojiStartRow = this.count;
                for (int i2 = 0; i2 < SelectAnimatedEmojiDialog.this.searchResult.size(); i2++) {
                    this.count++;
                    this.rowHashCodes.add(Integer.valueOf(Objects.hash(-4342, SelectAnimatedEmojiDialog.this.searchResult.get(i2))));
                }
            }
            if (SelectAnimatedEmojiDialog.this.type == 14) {
                if (SelectAnimatedEmojiDialog.this.searchResultStickers != null && !SelectAnimatedEmojiDialog.this.searchResultStickers.isEmpty()) {
                    int i3 = this.count;
                    this.count = i3 + 1;
                    this.stickersHeaderRow = i3;
                    this.rowHashCodes.add(2);
                    this.stickersStartRow = this.count;
                    for (int i4 = 0; i4 < SelectAnimatedEmojiDialog.this.searchResultStickers.size(); i4++) {
                        this.count++;
                        this.rowHashCodes.add(Integer.valueOf(Objects.hash(-7453, SelectAnimatedEmojiDialog.this.searchResultStickers.get(i4))));
                    }
                }
            } else if (SelectAnimatedEmojiDialog.this.stickersSearchResult != null) {
                if (SelectAnimatedEmojiDialog.this.type == 4 && !SelectAnimatedEmojiDialog.this.stickersSearchResult.isEmpty()) {
                    int i5 = this.count;
                    this.count = i5 + 1;
                    this.stickersHeaderRow = i5;
                    this.rowHashCodes.add(2);
                }
                this.stickersStartRow = this.count;
                for (int i6 = 0; i6 < SelectAnimatedEmojiDialog.this.stickersSearchResult.size(); i6++) {
                    this.count++;
                    this.rowHashCodes.add(Integer.valueOf(Objects.hash(-7453, SelectAnimatedEmojiDialog.this.stickersSearchResult.get(i6))));
                }
            }
            if (SelectAnimatedEmojiDialog.this.searchSets != null) {
                int i7 = this.count;
                this.setsStartRow = i7;
                this.count = i7 + SelectAnimatedEmojiDialog.this.searchSets.size();
            }
            notifyDataSetChanged();
            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
            if (selectAnimatedEmojiDialog.searched && this.count == 0) {
                z2 = true;
            }
            selectAnimatedEmojiDialog.switchSearchEmptyView(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    class Adapter extends RecyclerListView.SelectionAdapter {
        private Adapter() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            return itemViewType == 2 || itemViewType == 1 || itemViewType == 3 || itemViewType == 8;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View imageViewEmoji;
            if (i == 0) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                imageViewEmoji = selectAnimatedEmojiDialog.new HeaderView(selectAnimatedEmojiDialog.getContext(), SelectAnimatedEmojiDialog.this.type == 6);
            } else if (i == 2) {
                imageViewEmoji = new ImageView(SelectAnimatedEmojiDialog.this.getContext());
            } else if (i == 3 || i == 1 || i == 8) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                ImageViewEmoji imageViewEmoji2 = selectAnimatedEmojiDialog2.new ImageViewEmoji(selectAnimatedEmojiDialog2.getContext());
                if (i == 8) {
                    imageViewEmoji2.isStaticIcon = true;
                    ImageReceiver imageReceiver = new ImageReceiver(imageViewEmoji2);
                    imageViewEmoji2.imageReceiver = imageReceiver;
                    imageViewEmoji2.imageReceiverToDraw = imageReceiver;
                    imageReceiver.setImageBitmap(SelectAnimatedEmojiDialog.this.forumIconDrawable);
                    SelectAnimatedEmojiDialog.this.forumIconImage = imageViewEmoji2;
                    imageViewEmoji2.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
                }
                imageViewEmoji = imageViewEmoji2;
            } else if (i == 4) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog3 = SelectAnimatedEmojiDialog.this;
                imageViewEmoji = selectAnimatedEmojiDialog3.new EmojiPackExpand(selectAnimatedEmojiDialog3.getContext(), null);
            } else if (i == 5) {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog4 = SelectAnimatedEmojiDialog.this;
                imageViewEmoji = selectAnimatedEmojiDialog4.new EmojiPackButton(selectAnimatedEmojiDialog4.getContext());
            } else if (i == 6) {
                TextView textView = new TextView(SelectAnimatedEmojiDialog.this.getContext()) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.Adapter.1
                    @Override // android.widget.TextView, android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(AndroidUtilities.m1124dp(26.0f)), TLObject.FLAG_30));
                    }
                };
                textView.setTextSize(1, 13.0f);
                if (SelectAnimatedEmojiDialog.this.type == 3) {
                    textView.setText(LocaleController.getString(C2888R.string.SelectTopicIconHint));
                } else if (SelectAnimatedEmojiDialog.this.type == 0 || SelectAnimatedEmojiDialog.this.type == 12 || SelectAnimatedEmojiDialog.this.type == 9 || SelectAnimatedEmojiDialog.this.type == 10) {
                    textView.setText(LocaleController.getString(C2888R.string.EmojiLongtapHint));
                } else {
                    textView.setText(LocaleController.getString(C2888R.string.ReactionsLongtapHint));
                }
                textView.setGravity(17);
                textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, SelectAnimatedEmojiDialog.this.resourcesProvider));
                imageViewEmoji = textView;
            } else if (i == 7) {
                FixedHeightEmptyCell fixedHeightEmptyCell = new FixedHeightEmptyCell(SelectAnimatedEmojiDialog.this.getContext(), 52);
                fixedHeightEmptyCell.setTag("searchbox");
                imageViewEmoji = fixedHeightEmptyCell;
            } else {
                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog5 = SelectAnimatedEmojiDialog.this;
                imageViewEmoji = selectAnimatedEmojiDialog5.new ImageViewEmoji(selectAnimatedEmojiDialog5.getContext());
            }
            if (SelectAnimatedEmojiDialog.this.enterAnimationInProgress()) {
                imageViewEmoji.setScaleX(0.0f);
                imageViewEmoji.setScaleY(0.0f);
            }
            return new RecyclerListView.Holder(imageViewEmoji);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == SelectAnimatedEmojiDialog.this.searchRow) {
                return 7;
            }
            if (i >= SelectAnimatedEmojiDialog.this.recentReactionsStartRow && i < SelectAnimatedEmojiDialog.this.recentReactionsEndRow) {
                return 1;
            }
            if (i >= SelectAnimatedEmojiDialog.this.topReactionsStartRow && i < SelectAnimatedEmojiDialog.this.topReactionsEndRow) {
                return 1;
            }
            if (i >= SelectAnimatedEmojiDialog.this.stickersStartRow && i < SelectAnimatedEmojiDialog.this.stickersEndRow) {
                return 1;
            }
            if (i >= SelectAnimatedEmojiDialog.this.giftsStartRow && i < SelectAnimatedEmojiDialog.this.giftsEndRow) {
                return 3;
            }
            if (SelectAnimatedEmojiDialog.this.positionToExpand.indexOfKey(i) >= 0) {
                return 4;
            }
            if (SelectAnimatedEmojiDialog.this.positionToButton.indexOfKey(i) >= 0) {
                return 5;
            }
            if (i == SelectAnimatedEmojiDialog.this.longtapHintRow) {
                return 6;
            }
            if (SelectAnimatedEmojiDialog.this.positionToSection.indexOfKey(i) >= 0 || i == SelectAnimatedEmojiDialog.this.recentReactionsSectionRow || i == SelectAnimatedEmojiDialog.this.stickersSectionRow || i == SelectAnimatedEmojiDialog.this.giftsSectionRow || i == SelectAnimatedEmojiDialog.this.popularSectionRow || i == SelectAnimatedEmojiDialog.this.topicEmojiHeaderRow) {
                return 0;
            }
            return i == SelectAnimatedEmojiDialog.this.defaultTopicIconRow ? 8 : 3;
        }

        /* JADX WARN: Removed duplicated region for block: B:192:0x0505  */
        /* JADX WARN: Removed duplicated region for block: B:244:0x060a  */
        /* JADX WARN: Removed duplicated region for block: B:332:0x07b8  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int size;
            TLRPC.Document document;
            boolean zContains;
            final EmojiView.EmojiPack emojiPack;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 8) {
                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) viewHolder.itemView;
                imageViewEmoji.position = i;
                imageViewEmoji.selected = SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(0L);
                return;
            }
            if (SelectAnimatedEmojiDialog.this.showAnimator == null || !SelectAnimatedEmojiDialog.this.showAnimator.isRunning()) {
                viewHolder.itemView.setScaleX(1.0f);
                viewHolder.itemView.setScaleY(1.0f);
            }
            boolean z = true;
            z = true;
            boolean z2 = false;
            z2 = false;
            z2 = false;
            if (itemViewType == 6) {
                TextView textView = (TextView) viewHolder.itemView;
                if (SelectAnimatedEmojiDialog.this.hintExpireDate != null) {
                    textView.setText(LocaleController.formatString("EmojiStatusExpireHint", C2888R.string.EmojiStatusExpireHint, LocaleController.formatStatusExpireDateTime(SelectAnimatedEmojiDialog.this.hintExpireDate.intValue())));
                    return;
                }
                return;
            }
            if (itemViewType == 0) {
                HeaderView headerView = (HeaderView) viewHolder.itemView;
                if (i == SelectAnimatedEmojiDialog.this.topicEmojiHeaderRow) {
                    headerView.setText(LocaleController.getString(C2888R.string.SelectTopicIconHint), false);
                    headerView.closeIcon.setVisibility(8);
                    return;
                }
                if (i == SelectAnimatedEmojiDialog.this.recentReactionsSectionRow) {
                    headerView.setText(LocaleController.getString(C2888R.string.RecentlyUsed), false);
                    headerView.closeIcon.setVisibility(8);
                    return;
                }
                if (i == SelectAnimatedEmojiDialog.this.stickersSectionRow) {
                    headerView.setText(LocaleController.getString(C2888R.string.StickerEffects), false);
                    headerView.closeIcon.setVisibility(8);
                    return;
                }
                headerView.closeIcon.setVisibility(8);
                if (i == SelectAnimatedEmojiDialog.this.popularSectionRow) {
                    headerView.setText(LocaleController.getString(C2888R.string.PopularReactions), false);
                    return;
                }
                if (i == SelectAnimatedEmojiDialog.this.giftsSectionRow) {
                    headerView.setText(LocaleController.getString(C2888R.string.EmojiPackCollectibles), false);
                    return;
                }
                int i2 = SelectAnimatedEmojiDialog.this.positionToSection.get(i);
                if (i2 >= 0) {
                    EmojiView.EmojiPack emojiPack2 = (EmojiView.EmojiPack) SelectAnimatedEmojiDialog.this.packs.get(i2);
                    if (emojiPack2.needLoadSet != null) {
                        MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).getStickerSet(emojiPack2.needLoadSet, false);
                        emojiPack2.needLoadSet = null;
                    }
                    if (SelectAnimatedEmojiDialog.this.type != 5 && SelectAnimatedEmojiDialog.this.type != 7 && SelectAnimatedEmojiDialog.this.type != 6) {
                        z2 = (emojiPack2.free || UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium()) ? false : true;
                    }
                    headerView.setText(emojiPack2.set.title, z2);
                    return;
                }
                headerView.setText(null, false);
                return;
            }
            if (itemViewType == 1) {
                ImageViewEmoji imageViewEmoji2 = (ImageViewEmoji) viewHolder.itemView;
                imageViewEmoji2.position = i;
                if (i >= SelectAnimatedEmojiDialog.this.recentReactionsStartRow && i < SelectAnimatedEmojiDialog.this.recentReactionsEndRow) {
                    visibleReaction = (ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.recentReactions.get(i - SelectAnimatedEmojiDialog.this.recentReactionsStartRow);
                } else if (i >= SelectAnimatedEmojiDialog.this.stickersStartRow && i < SelectAnimatedEmojiDialog.this.stickersEndRow) {
                    visibleReaction = (ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.stickers.get(i - SelectAnimatedEmojiDialog.this.stickersStartRow);
                } else {
                    visibleReaction = (ReactionsLayoutInBubble.VisibleReaction) SelectAnimatedEmojiDialog.this.topReactions.get(i - SelectAnimatedEmojiDialog.this.topReactionsStartRow);
                }
                if (SelectAnimatedEmojiDialog.this.type == 13) {
                    imageViewEmoji2.notDraw = false;
                    imageViewEmoji2.isFirstReactions = true;
                    imageViewEmoji2.reaction = visibleReaction;
                    imageViewEmoji2.setDrawable(Emoji.getEmojiDrawable(visibleReaction.emojicon));
                    imageViewEmoji2.setViewSelected(SelectAnimatedEmojiDialog.this.selectedReactions.contains(visibleReaction), false);
                    return;
                }
                imageViewEmoji2.createImageReceiver(SelectAnimatedEmojiDialog.this.emojiGridView);
                imageViewEmoji2.isFirstReactions = true;
                imageViewEmoji2.reaction = visibleReaction;
                imageViewEmoji2.setViewSelected(SelectAnimatedEmojiDialog.this.selectedReactions.contains(visibleReaction), false);
                imageViewEmoji2.notDraw = false;
                if (!visibleReaction.isEffect && visibleReaction.emojicon != null) {
                    imageViewEmoji2.isDefaultReaction = true;
                    TLRPC.TL_availableReaction tL_availableReaction = MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).getReactionsMap().get(visibleReaction.emojicon);
                    if (tL_availableReaction != null) {
                        SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(tL_availableReaction.activate_animation, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f);
                        if (!LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS)) {
                            imageViewEmoji2.imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.select_animation), "60_60_firstframe", null, null, svgThumb, 0L, "tgs", visibleReaction, 0);
                        } else {
                            ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = visibleReaction;
                            imageViewEmoji2.imageReceiver.setImage(ImageLocation.getForDocument(tL_availableReaction.select_animation), "60_60_pcache", ImageLocation.getForDocument(tL_availableReaction.select_animation), "30_30_firstframe", null, null, svgThumb, 0L, "tgs", visibleReaction2, 0);
                            visibleReaction = visibleReaction2;
                        }
                        MediaDataController.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).preloadImage(imageViewEmoji2.preloadEffectImageReceiver, ImageLocation.getForDocument(tL_availableReaction.around_animation), ReactionsEffectOverlay.getFilterForAroundAnimation());
                    } else {
                        imageViewEmoji2.imageReceiver.clearImage();
                        imageViewEmoji2.preloadEffectImageReceiver.clearImage();
                    }
                    imageViewEmoji2.span = null;
                    imageViewEmoji2.document = null;
                    imageViewEmoji2.setDrawable(null);
                    PremiumLockIconView premiumLockIconView = imageViewEmoji2.premiumLockIconView;
                    if (premiumLockIconView != null) {
                        premiumLockIconView.setVisibility(8);
                        imageViewEmoji2.premiumLockIconView.setImageReceiver(null);
                    }
                } else {
                    imageViewEmoji2.isDefaultReaction = false;
                    imageViewEmoji2.span = new AnimatedEmojiSpan(visibleReaction.documentId, (Paint.FontMetricsInt) null);
                    imageViewEmoji2.document = null;
                    imageViewEmoji2.imageReceiver.clearImage();
                    imageViewEmoji2.preloadEffectImageReceiver.clearImage();
                    Drawable drawableMake = (Drawable) SelectAnimatedEmojiDialog.this.emojiGridView.animatedEmojiDrawables.get(imageViewEmoji2.span.getDocumentId());
                    if (drawableMake == null) {
                        drawableMake = AnimatedEmojiDrawable.make(SelectAnimatedEmojiDialog.this.currentAccount, SelectAnimatedEmojiDialog.this.getCacheType(), imageViewEmoji2.span.getDocumentId());
                        SelectAnimatedEmojiDialog.this.emojiGridView.animatedEmojiDrawables.put(imageViewEmoji2.span.getDocumentId(), drawableMake);
                    }
                    imageViewEmoji2.setDrawable(drawableMake);
                }
                if (!UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium() && SelectAnimatedEmojiDialog.this.type == 14 && visibleReaction.isEffect && visibleReaction.premium) {
                    imageViewEmoji2.createPremiumLockView();
                    imageViewEmoji2.premiumLockIconView.setVisibility(0);
                    imageViewEmoji2.setEmojicon(null);
                    return;
                }
                if (visibleReaction.sticker) {
                    imageViewEmoji2.setEmojicon(visibleReaction.emojicon);
                } else {
                    imageViewEmoji2.setEmojicon(null);
                }
                PremiumLockIconView premiumLockIconView2 = imageViewEmoji2.premiumLockIconView;
                if (premiumLockIconView2 != null) {
                    premiumLockIconView2.setVisibility(4);
                    return;
                }
                return;
            }
            if (itemViewType == 4) {
                EmojiPackExpand emojiPackExpand = (EmojiPackExpand) viewHolder.itemView;
                int i3 = SelectAnimatedEmojiDialog.this.positionToExpand.get(i);
                EmojiView.EmojiPack emojiPack3 = (i3 < 0 || i3 >= SelectAnimatedEmojiDialog.this.packs.size()) ? null : (EmojiView.EmojiPack) SelectAnimatedEmojiDialog.this.packs.get(i3);
                if (i3 == -1) {
                    SelectAnimatedEmojiDialog.this.recentExpandButton = emojiPackExpand;
                    emojiPackExpand.textView.setText("+" + ((SelectAnimatedEmojiDialog.this.recent.size() - 40) + (SelectAnimatedEmojiDialog.this.includeEmpty ? 1 : 0) + 1));
                    return;
                }
                if (emojiPack3 != null) {
                    if (SelectAnimatedEmojiDialog.this.recentExpandButton == emojiPackExpand) {
                        SelectAnimatedEmojiDialog.this.recentExpandButton = null;
                    }
                    TextView textView2 = emojiPackExpand.textView;
                    StringBuilder sb = new StringBuilder();
                    sb.append("+");
                    sb.append(emojiPack3.documents.size() - 23);
                    textView2.setText(sb.toString());
                    return;
                }
                if (SelectAnimatedEmojiDialog.this.recentExpandButton == emojiPackExpand) {
                    SelectAnimatedEmojiDialog.this.recentExpandButton = null;
                    return;
                }
                return;
            }
            if (itemViewType == 5) {
                EmojiPackButton emojiPackButton = (EmojiPackButton) viewHolder.itemView;
                final int i4 = SelectAnimatedEmojiDialog.this.positionToButton.get(i);
                if (i4 < 0 || i4 >= SelectAnimatedEmojiDialog.this.packs.size() || (emojiPack = (EmojiView.EmojiPack) SelectAnimatedEmojiDialog.this.packs.get(i4)) == null) {
                    return;
                }
                emojiPackButton.set(emojiPack.set.title, (emojiPack.free || UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium()) ? false : true, emojiPack.installed, new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$Adapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onBindViewHolder$0(emojiPack, i4, view);
                    }
                });
                return;
            }
            if (itemViewType == 7 || itemViewType == 9) {
                return;
            }
            ImageViewEmoji imageViewEmoji3 = (ImageViewEmoji) viewHolder.itemView;
            imageViewEmoji3.starGift = null;
            imageViewEmoji3.particlesColor = null;
            imageViewEmoji3.empty = false;
            imageViewEmoji3.position = i;
            imageViewEmoji3.setPadding(AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(1.0f));
            if ((SelectAnimatedEmojiDialog.this.type == 4 && SelectAnimatedEmojiDialog.this.showStickers) || SelectAnimatedEmojiDialog.this.type == 6) {
                size = SelectAnimatedEmojiDialog.this.recentStickers.size();
            } else if (SelectAnimatedEmojiDialog.this.type == 4 || SelectAnimatedEmojiDialog.this.type == 3) {
                size = SelectAnimatedEmojiDialog.this.recent.size();
            } else {
                size = (SelectAnimatedEmojiDialog.this.recent.size() <= 40 || SelectAnimatedEmojiDialog.this.recentExpanded) ? (SelectAnimatedEmojiDialog.this.includeEmpty ? 1 : 0) + SelectAnimatedEmojiDialog.this.recent.size() : 40;
            }
            if (!SelectAnimatedEmojiDialog.this.includeEmpty) {
                if (SelectAnimatedEmojiDialog.this.type == 13) {
                    if ((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0) < SelectAnimatedEmojiDialog.this.standardEmojis.size()) {
                        String str = (String) SelectAnimatedEmojiDialog.this.standardEmojis.get(((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow == -1 ? 0 : 1)) - (SelectAnimatedEmojiDialog.this.includeEmpty ? 1 : 0));
                        imageViewEmoji3.notDraw = false;
                        imageViewEmoji3.isFirstReactions = false;
                        imageViewEmoji3.reaction = ReactionsLayoutInBubble.VisibleReaction.fromEmojicon(str);
                        imageViewEmoji3.setDrawable(Emoji.getEmojiDrawable(str));
                        imageViewEmoji3.setViewSelected(SelectAnimatedEmojiDialog.this.selectedReactions.contains(imageViewEmoji3.reaction), false);
                        return;
                    }
                }
                if ((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0) < size) {
                    int i5 = ((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.includeEmpty ? 1 : 0);
                    if (SelectAnimatedEmojiDialog.this.type == 4 && SelectAnimatedEmojiDialog.this.showStickers) {
                        imageViewEmoji3.setSticker((TLRPC.Document) SelectAnimatedEmojiDialog.this.recentStickers.get(i5), SelectAnimatedEmojiDialog.this.emojiGridView);
                        zContains = false;
                    } else {
                        if (SelectAnimatedEmojiDialog.this.type == 6) {
                            TLRPC.Document document2 = (TLRPC.Document) SelectAnimatedEmojiDialog.this.recentStickers.get(i5);
                            imageViewEmoji3.setSticker(document2, SelectAnimatedEmojiDialog.this.emojiGridView);
                            if (document2 == null || !SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(Long.valueOf(document2.f1668id))) {
                                z = false;
                            }
                        } else {
                            AnimatedEmojiSpan animatedEmojiSpan = (AnimatedEmojiSpan) SelectAnimatedEmojiDialog.this.recent.get(i5);
                            imageViewEmoji3.span = animatedEmojiSpan;
                            imageViewEmoji3.document = animatedEmojiSpan == null ? null : animatedEmojiSpan.document;
                            z = animatedEmojiSpan != null && SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(Long.valueOf(animatedEmojiSpan.getDocumentId()));
                            imageViewEmoji3.isStaticIcon = false;
                            ImageReceiver imageReceiver = imageViewEmoji3.imageReceiver;
                            if (imageReceiver != null) {
                                imageReceiver.clearImage();
                            }
                        }
                        zContains = z;
                    }
                } else {
                    if (!SelectAnimatedEmojiDialog.this.gifts.isEmpty() && i - SelectAnimatedEmojiDialog.this.giftsStartRow >= 0 && i - SelectAnimatedEmojiDialog.this.giftsStartRow < SelectAnimatedEmojiDialog.this.gifts.size()) {
                        TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) SelectAnimatedEmojiDialog.this.gifts.get(i - SelectAnimatedEmojiDialog.this.giftsStartRow);
                        TLRPC.Document document3 = tL_starGiftUnique.getDocument();
                        imageViewEmoji3.span = new AnimatedEmojiSpan(document3, (Paint.FontMetricsInt) null);
                        imageViewEmoji3.document = document3;
                        imageViewEmoji3.starGift = tL_starGiftUnique;
                        TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop = (TL_stars.starGiftAttributeBackdrop) StarsController.findAttribute(tL_starGiftUnique.attributes, TL_stars.starGiftAttributeBackdrop.class);
                        if (stargiftattributebackdrop != null) {
                            imageViewEmoji3.particlesColor = Integer.valueOf(stargiftattributebackdrop.pattern_color | (-1879048192));
                        }
                        z = imageViewEmoji3.span != null && SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(Long.valueOf(tL_starGiftUnique.f1846id));
                        imageViewEmoji3.isStaticIcon = false;
                        ImageReceiver imageReceiver2 = imageViewEmoji3.imageReceiver;
                        if (imageReceiver2 != null) {
                            imageReceiver2.clearImage();
                        }
                    } else if (SelectAnimatedEmojiDialog.this.defaultStatuses.isEmpty()) {
                        for (int i6 = 0; i6 < SelectAnimatedEmojiDialog.this.positionToSection.size(); i6++) {
                            int iKeyAt = SelectAnimatedEmojiDialog.this.positionToSection.keyAt(i6);
                            int iValueAt = SelectAnimatedEmojiDialog.this.positionToSection.valueAt(i6);
                            EmojiView.EmojiPack emojiPack4 = iValueAt >= 0 ? (EmojiView.EmojiPack) SelectAnimatedEmojiDialog.this.packs.get(iValueAt) : null;
                            if (emojiPack4 != null) {
                                int size2 = emojiPack4.expanded ? emojiPack4.documents.size() : Math.min(emojiPack4.documents.size(), 24);
                                int i7 = (i - iKeyAt) - 1;
                                if (i7 >= 0 && i7 < size2 && (document = (TLRPC.Document) emojiPack4.documents.get(i7)) != null) {
                                    if (SelectAnimatedEmojiDialog.this.showStickers) {
                                        imageViewEmoji3.setSticker(document, SelectAnimatedEmojiDialog.this.emojiSearchGridView);
                                    } else {
                                        imageViewEmoji3.isStaticIcon = false;
                                        ImageReceiver imageReceiver3 = imageViewEmoji3.imageReceiver;
                                        if (imageReceiver3 != null) {
                                            imageReceiver3.clearImage();
                                        }
                                        imageViewEmoji3.span = new AnimatedEmojiSpan(document, (Paint.FontMetricsInt) null);
                                    }
                                    imageViewEmoji3.document = document;
                                }
                            }
                        }
                        AnimatedEmojiSpan animatedEmojiSpan2 = imageViewEmoji3.span;
                        if (animatedEmojiSpan2 == null || !SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(Long.valueOf(animatedEmojiSpan2.getDocumentId()))) {
                        }
                    } else if (((((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0)) - size) - 1) - (SelectAnimatedEmojiDialog.this.gifts.isEmpty() ? 0 : SelectAnimatedEmojiDialog.this.gifts.size() + 1) >= 0) {
                        if (((((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0)) - size) - 1) - (SelectAnimatedEmojiDialog.this.gifts.isEmpty() ? 0 : SelectAnimatedEmojiDialog.this.gifts.size() + 1) < SelectAnimatedEmojiDialog.this.defaultStatuses.size()) {
                            AnimatedEmojiSpan animatedEmojiSpan3 = (AnimatedEmojiSpan) SelectAnimatedEmojiDialog.this.defaultStatuses.get(((((i - (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0)) - (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0)) - size) - 1) - (SelectAnimatedEmojiDialog.this.gifts.isEmpty() ? 0 : SelectAnimatedEmojiDialog.this.gifts.size() + 1));
                            imageViewEmoji3.span = animatedEmojiSpan3;
                            imageViewEmoji3.document = animatedEmojiSpan3 == null ? null : animatedEmojiSpan3.document;
                            z = animatedEmojiSpan3 != null && SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(Long.valueOf(animatedEmojiSpan3.getDocumentId()));
                            imageViewEmoji3.isStaticIcon = false;
                            ImageReceiver imageReceiver4 = imageViewEmoji3.imageReceiver;
                            if (imageReceiver4 != null) {
                                imageReceiver4.clearImage();
                            }
                        }
                    }
                    zContains = z;
                }
            } else if (i == (SelectAnimatedEmojiDialog.this.searchRow != -1 ? 1 : 0) + (SelectAnimatedEmojiDialog.this.longtapHintRow != -1 ? 1 : 0)) {
                zContains = SelectAnimatedEmojiDialog.this.selectedDocumentIds.contains(null);
                imageViewEmoji3.empty = true;
                imageViewEmoji3.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f));
                imageViewEmoji3.span = null;
                imageViewEmoji3.document = null;
                imageViewEmoji3.isStaticIcon = false;
                ImageReceiver imageReceiver5 = imageViewEmoji3.imageReceiver;
                if (imageReceiver5 != null) {
                    imageReceiver5.clearImage();
                }
            }
            if (imageViewEmoji3.span != null) {
                AnimatedEmojiDrawable animatedEmojiDrawableMake = (AnimatedEmojiDrawable) SelectAnimatedEmojiDialog.this.emojiGridView.animatedEmojiDrawables.get(imageViewEmoji3.span.getDocumentId());
                if (animatedEmojiDrawableMake == null) {
                    if (imageViewEmoji3.span.document != null) {
                        animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(SelectAnimatedEmojiDialog.this.currentAccount, SelectAnimatedEmojiDialog.this.getCacheType(), imageViewEmoji3.span.document);
                    } else {
                        animatedEmojiDrawableMake = AnimatedEmojiDrawable.make(SelectAnimatedEmojiDialog.this.currentAccount, SelectAnimatedEmojiDialog.this.getCacheType(), imageViewEmoji3.span.getDocumentId());
                    }
                    SelectAnimatedEmojiDialog.this.emojiGridView.animatedEmojiDrawables.put(imageViewEmoji3.span.getDocumentId(), animatedEmojiDrawableMake);
                }
                imageViewEmoji3.setDrawable(animatedEmojiDrawableMake);
            } else {
                imageViewEmoji3.setDrawable(null);
            }
            imageViewEmoji3.setViewSelected(zContains, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(EmojiView.EmojiPack emojiPack, int i, View view) {
            Integer numValueOf;
            View childAt;
            int childAdapterPosition;
            if (!emojiPack.free && !UserConfig.getInstance(SelectAnimatedEmojiDialog.this.currentAccount).isPremium()) {
                BaseFragment lastFragment = LaunchActivity.getLastFragment();
                if (lastFragment != null) {
                    lastFragment.showDialog(new PremiumFeatureBottomSheet(SelectAnimatedEmojiDialog.this.baseFragment, SelectAnimatedEmojiDialog.this.getContext(), SelectAnimatedEmojiDialog.this.currentAccount, 11, false));
                    return;
                }
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= SelectAnimatedEmojiDialog.this.emojiGridView.getChildCount()) {
                    numValueOf = null;
                    childAt = null;
                    break;
                } else {
                    if ((SelectAnimatedEmojiDialog.this.emojiGridView.getChildAt(i2) instanceof EmojiPackExpand) && (childAdapterPosition = SelectAnimatedEmojiDialog.this.emojiGridView.getChildAdapterPosition((childAt = SelectAnimatedEmojiDialog.this.emojiGridView.getChildAt(i2)))) >= 0 && SelectAnimatedEmojiDialog.this.positionToExpand.get(childAdapterPosition) == i) {
                        numValueOf = Integer.valueOf(childAdapterPosition);
                        break;
                    }
                    i2++;
                }
            }
            if (numValueOf != null) {
                SelectAnimatedEmojiDialog.this.expand(numValueOf.intValue(), childAt);
            }
            EmojiPacksAlert.installSet(null, emojiPack.set, false);
            SelectAnimatedEmojiDialog.this.installedEmojiSets.add(Long.valueOf(emojiPack.set.f1696id));
            SelectAnimatedEmojiDialog.this.updateRows(true, true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SelectAnimatedEmojiDialog.this.totalCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return Math.abs(((Long) SelectAnimatedEmojiDialog.this.rowHashCodes.get(i)).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean enterAnimationInProgress() {
        if (this.enterAnimationInProgress) {
            return true;
        }
        ValueAnimator valueAnimator = this.showAnimator;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    class HeaderView extends FrameLayout {
        ImageView closeIcon;
        private LinearLayout layoutView;
        private ValueAnimator lockAnimator;
        private float lockT;
        private RLottieImageView lockView;
        private TextView textView;

        public HeaderView(Context context, boolean z) {
            super(context);
            LinearLayout linearLayout = new LinearLayout(context);
            this.layoutView = linearLayout;
            linearLayout.setOrientation(0);
            addView(this.layoutView, LayoutHelper.createFrame(-2, -2, z ? 3 : 17));
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.lockView = rLottieImageView;
            rLottieImageView.setAnimation(C2888R.raw.unlock_icon, 20, 20);
            RLottieImageView rLottieImageView2 = this.lockView;
            int i = Theme.key_chat_emojiPanelStickerSetName;
            rLottieImageView2.setColorFilter(Theme.getColor(i, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.layoutView.addView(this.lockView, LayoutHelper.createLinear(20, 20));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextColor(Theme.getColor(i, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.textView.setTypeface(AndroidUtilities.bold());
            this.textView.setTextSize(1, 14.0f);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.layoutView.addView(this.textView, LayoutHelper.createLinear(-2, -2, 17));
            ImageView imageView = new ImageView(context);
            this.closeIcon = imageView;
            imageView.setImageResource(C2888R.drawable.msg_close);
            this.closeIcon.setScaleType(ImageView.ScaleType.CENTER);
            this.closeIcon.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_emojiPanelStickerSetNameIcon, SelectAnimatedEmojiDialog.this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
            addView(this.closeIcon, LayoutHelper.createFrame(24, 24, 21));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(30.0f), TLObject.FLAG_30));
        }

        public void setText(String str, boolean z) {
            this.textView.setText(str);
            updateLock(z, false);
        }

        public void setText(CharSequence charSequence, String str, boolean z) {
            int iIndexOf;
            if (charSequence != null && str != null && (iIndexOf = charSequence.toString().toLowerCase().indexOf(str.toLowerCase())) >= 0) {
                SpannableString spannableString = new SpannableString(charSequence);
                spannableString.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_chat_emojiPanelStickerSetNameHighlight, SelectAnimatedEmojiDialog.this.resourcesProvider)), iIndexOf, str.length() + iIndexOf, 33);
                charSequence = spannableString;
            }
            this.textView.setText(charSequence);
            updateLock(z, false);
        }

        public void updateLock(boolean z, boolean z2) {
            ValueAnimator valueAnimator = this.lockAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.lockAnimator = null;
            }
            if (z2) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.lockT, z ? 1.0f : 0.0f);
                this.lockAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$HeaderView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$updateLock$0(valueAnimator2);
                    }
                });
                this.lockAnimator.setDuration(200L);
                this.lockAnimator.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
                this.lockAnimator.start();
                return;
            }
            this.lockT = z ? 1.0f : 0.0f;
            this.lockView.setTranslationX(AndroidUtilities.m1124dp(-8.0f) * (1.0f - this.lockT));
            this.textView.setTranslationX(AndroidUtilities.m1124dp(-8.0f) * (1.0f - this.lockT));
            this.lockView.setAlpha(this.lockT);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateLock$0(ValueAnimator valueAnimator) {
            this.lockT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.lockView.setTranslationX(AndroidUtilities.m1124dp(-8.0f) * (1.0f - this.lockT));
            this.textView.setTranslationX(AndroidUtilities.m1124dp(-8.0f) * (1.0f - this.lockT));
            this.lockView.setAlpha(this.lockT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    class EmojiPackButton extends FrameLayout {
        AnimatedTextView addButtonTextView;
        FrameLayout addButtonView;
        private ValueAnimator installFadeAway;
        private String lastTitle;
        private ValueAnimator lockAnimator;
        private Boolean lockShow;
        private float lockT;
        PremiumButtonView premiumButtonView;

        public EmojiPackButton(Context context) {
            super(context);
            AnimatedTextView animatedTextView = new AnimatedTextView(getContext()) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.EmojiPackButton.1
                @Override // android.view.View
                public void invalidate() {
                    if (HwEmojis.grab(this)) {
                        return;
                    }
                    super.invalidate();
                }

                @Override // android.view.View
                public void invalidate(int i, int i2, int i3, int i4) {
                    if (HwEmojis.grab(this)) {
                        return;
                    }
                    super.invalidate(i, i2, i3, i4);
                }
            };
            this.addButtonTextView = animatedTextView;
            animatedTextView.setAnimationProperties(0.3f, 0L, 250L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.addButtonTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
            this.addButtonTextView.setTypeface(AndroidUtilities.bold());
            this.addButtonTextView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.addButtonTextView.setGravity(17);
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.addButtonView = frameLayout;
            frameLayout.setBackground(Theme.AdaptiveRipple.filledRect(Theme.getColor(Theme.key_featuredStickers_addButton, SelectAnimatedEmojiDialog.this.resourcesProvider), 8.0f));
            this.addButtonView.addView(this.addButtonTextView, LayoutHelper.createFrame(-1, -2, 17));
            addView(this.addButtonView, LayoutHelper.createFrame(-1, -1.0f));
            PremiumButtonView premiumButtonView = new PremiumButtonView(getContext(), false, SelectAnimatedEmojiDialog.this.resourcesProvider);
            this.premiumButtonView = premiumButtonView;
            premiumButtonView.setIcon(C2888R.raw.unlock_icon);
            addView(this.premiumButtonView, LayoutHelper.createFrame(-1, -1.0f));
        }

        public void set(String str, boolean z, boolean z2, View.OnClickListener onClickListener) {
            this.lastTitle = str;
            if (z) {
                this.addButtonView.setVisibility(8);
                this.premiumButtonView.setVisibility(0);
                this.premiumButtonView.setButton(LocaleController.formatString("UnlockPremiumEmojiPack", C2888R.string.UnlockPremiumEmojiPack, str), onClickListener);
            } else {
                this.premiumButtonView.setVisibility(8);
                this.addButtonView.setVisibility(0);
                this.addButtonView.setOnClickListener(onClickListener);
            }
            updateInstall(z2, false);
            updateLock(z, false);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(8.0f));
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(44.0f) + getPaddingTop() + getPaddingBottom(), TLObject.FLAG_30));
        }

        public void updateInstall(boolean z, boolean z2) {
            String string;
            if (z) {
                string = LocaleController.getString(C2888R.string.Added);
            } else {
                string = LocaleController.formatString("AddStickersCount", C2888R.string.AddStickersCount, this.lastTitle);
            }
            this.addButtonTextView.setText(string, z2);
            ValueAnimator valueAnimator = this.installFadeAway;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.installFadeAway = null;
            }
            this.addButtonView.setEnabled(!z);
            if (z2) {
                this.installFadeAway = ValueAnimator.ofFloat(this.addButtonView.getAlpha(), z ? 0.6f : 1.0f);
                FrameLayout frameLayout = this.addButtonView;
                frameLayout.setAlpha(frameLayout.getAlpha());
                this.installFadeAway.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$EmojiPackButton$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$updateInstall$0(valueAnimator2);
                    }
                });
                this.installFadeAway.setDuration(450L);
                this.installFadeAway.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.installFadeAway.start();
                return;
            }
            this.addButtonView.setAlpha(z ? 0.6f : 1.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateInstall$0(ValueAnimator valueAnimator) {
            FrameLayout frameLayout = this.addButtonView;
            if (frameLayout != null) {
                frameLayout.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        }

        private void updateLock(final boolean z, boolean z2) {
            ValueAnimator valueAnimator = this.lockAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.lockAnimator = null;
            }
            Boolean bool = this.lockShow;
            if (bool == null || bool.booleanValue() != z) {
                Boolean boolValueOf = Boolean.valueOf(z);
                this.lockShow = boolValueOf;
                if (z2) {
                    this.premiumButtonView.setVisibility(0);
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.lockT, z ? 1.0f : 0.0f);
                    this.lockAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$EmojiPackButton$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$updateLock$1(valueAnimator2);
                        }
                    });
                    this.lockAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.EmojiPackButton.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (z) {
                                return;
                            }
                            EmojiPackButton.this.premiumButtonView.setVisibility(8);
                        }
                    });
                    this.lockAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.lockAnimator.setDuration(350L);
                    this.lockAnimator.start();
                    return;
                }
                float f = boolValueOf.booleanValue() ? 1.0f : 0.0f;
                this.lockT = f;
                this.addButtonView.setAlpha(1.0f - f);
                this.premiumButtonView.setAlpha(this.lockT);
                this.premiumButtonView.setScaleX(this.lockT);
                this.premiumButtonView.setScaleY(this.lockT);
                this.premiumButtonView.setVisibility(this.lockShow.booleanValue() ? 0 : 8);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateLock$1(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.lockT = fFloatValue;
            FrameLayout frameLayout = this.addButtonView;
            if (frameLayout != null) {
                frameLayout.setAlpha(1.0f - fFloatValue);
            }
            PremiumButtonView premiumButtonView = this.premiumButtonView;
            if (premiumButtonView != null) {
                premiumButtonView.setAlpha(this.lockT);
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class EmojiPackExpand extends FrameLayout {
        public TextView textView;

        public EmojiPackExpand(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 12.0f);
            this.textView.setTextColor(-1);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(11.0f), SelectAnimatedEmojiDialog.this.useAccentForPlus ? Theme.blendOver(SelectAnimatedEmojiDialog.this.accentColor, Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhite), 0.4f)) : ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_chat_emojiPanelStickerSetName, resourcesProvider), 99)));
            this.textView.setTypeface(AndroidUtilities.bold());
            this.textView.setPadding(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(1.66f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(2.0f));
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 17));
        }
    }

    public StarsReactionsSheet.Particles getCollectionParticles() {
        if (this.collectionParticles == null) {
            this.collectionParticles = new StarsReactionsSheet.Particles(1, 8);
        }
        return this.collectionParticles;
    }

    public long animateExpandDuration() {
        return animateExpandAppearDuration() + animateExpandCrossfadeDuration() + 16;
    }

    public long animateExpandAppearDuration() {
        return Math.max(450L, ((long) Math.min(55, this.animateExpandToPosition - this.animateExpandFromPosition)) * 30);
    }

    public long animateExpandCrossfadeDuration() {
        return Math.max(300L, ((long) Math.min(45, this.animateExpandToPosition - this.animateExpandFromPosition)) * 25);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class ImageViewEmoji extends View {
        private float animatedScale;
        public boolean attached;
        ValueAnimator backAnimator;
        public ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolder;
        public float bigReactionSelectedProgress;
        public TLRPC.Document document;
        public Drawable drawable;
        public Rect drawableBounds;
        Drawable emojiDrawable;
        public boolean empty;
        public ImageReceiver imageReceiver;
        public ImageReceiver imageReceiverToDraw;
        final AnimatedEmojiSpan.InvalidateHolder invalidateHolder;
        public boolean isDefaultReaction;
        public boolean isFirstReactions;
        public boolean isStaticIcon;
        public boolean notDraw;
        public Integer particlesColor;
        public int position;
        public ImageReceiver preloadEffectImageReceiver;
        PremiumLockIconView premiumLockIconView;
        private float pressedProgress;
        public ReactionsLayoutInBubble.VisibleReaction reaction;
        public boolean selected;
        private float selectedProgress;
        private float selectedProgressT;
        private boolean shouldSelected;
        public float skewAlpha;
        public int skewIndex;
        public AnimatedEmojiSpan span;
        public TL_stars.TL_starGiftUnique starGift;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            if (HwEmojis.isHwEnabled() || getParent() == null) {
                return;
            }
            ((View) getParent()).invalidate();
        }

        public ImageViewEmoji(Context context) {
            super(context);
            this.empty = false;
            this.notDraw = false;
            this.backgroundThreadDrawHolder = new ImageReceiver.BackgroundThreadDrawHolder[2];
            this.preloadEffectImageReceiver = new ImageReceiver();
            this.animatedScale = 1.0f;
            this.invalidateHolder = new AnimatedEmojiSpan.InvalidateHolder() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Components.AnimatedEmojiSpan.InvalidateHolder
                public final void invalidate() {
                    this.f$0.lambda$new$0();
                }
            };
            this.preloadEffectImageReceiver.ignoreNotifications = true;
        }

        public void setAnimatedScale(float f) {
            this.animatedScale = f;
        }

        public float getAnimatedScale() {
            return this.animatedScale;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            ValueAnimator valueAnimator;
            if (isPressed() != z) {
                super.setPressed(z);
                invalidate();
                if (z && (valueAnimator = this.backAnimator) != null) {
                    valueAnimator.removeAllListeners();
                    this.backAnimator.cancel();
                }
                if (z || this.pressedProgress == 0.0f || SelectAnimatedEmojiDialog.this.type == 14) {
                    return;
                }
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pressedProgress, 0.0f);
                this.backAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setPressed$1(valueAnimator2);
                    }
                });
                this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.ImageViewEmoji.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        ImageViewEmoji.this.backAnimator = null;
                    }
                });
                this.backAnimator.setInterpolator(new OvershootInterpolator(5.0f));
                this.backAnimator.setDuration(350L);
                this.backAnimator.start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setPressed$1(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
        }

        public void updatePressedProgress() {
            if (!isPressed() || this.pressedProgress == 1.0f || SelectAnimatedEmojiDialog.this.type == 14) {
                return;
            }
            this.pressedProgress = Utilities.clamp(this.pressedProgress + 0.16f, 1.0f, 0.0f);
            invalidate();
        }

        public void update(long j) {
            ImageReceiver imageReceiver = this.imageReceiverToDraw;
            if (imageReceiver != null) {
                if (imageReceiver.getLottieAnimation() != null) {
                    this.imageReceiverToDraw.getLottieAnimation().updateCurrentFrame(j, true);
                }
                if (this.imageReceiverToDraw.getAnimation() != null) {
                    this.imageReceiverToDraw.getAnimation().updateCurrentFrame(j, true);
                }
            }
        }

        private void cancelBackAnimator() {
            ValueAnimator valueAnimator = this.backAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.backAnimator.cancel();
            }
        }

        public void unselectWithScale() {
            if (!this.selected || SelectAnimatedEmojiDialog.this.type == 14) {
                return;
            }
            cancelBackAnimator();
            this.pressedProgress = 1.0f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            this.backAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$unselectWithScale$2(valueAnimator);
                }
            });
            this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.ImageViewEmoji.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ImageViewEmoji.this.backAnimator = null;
                }
            });
            this.backAnimator.setInterpolator(new OvershootInterpolator(5.0f));
            this.backAnimator.setDuration(350L);
            this.backAnimator.start();
            setViewSelected(false, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$unselectWithScale$2(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
        }

        public void setViewSelectedWithScale(boolean z, boolean z2) {
            if (!this.selected && z && z2 && SelectAnimatedEmojiDialog.this.type != 14) {
                this.shouldSelected = true;
                this.selectedProgress = 1.0f;
                this.selectedProgressT = 1.0f;
                cancelBackAnimator();
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.pressedProgress, 1.6f, 0.7f);
                this.backAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setViewSelectedWithScale$3(valueAnimator);
                    }
                });
                this.backAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.ImageViewEmoji.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        ImageViewEmoji.this.pressedProgress = 0.0f;
                        ImageViewEmoji imageViewEmoji = ImageViewEmoji.this;
                        imageViewEmoji.backAnimator = null;
                        imageViewEmoji.shouldSelected = false;
                        ImageViewEmoji.this.setViewSelected(true, false);
                    }
                });
                this.backAnimator.setInterpolator(new LinearInterpolator());
                this.backAnimator.setDuration(200L);
                this.backAnimator.start();
                return;
            }
            this.shouldSelected = false;
            setViewSelected(z, z2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setViewSelectedWithScale$3(ValueAnimator valueAnimator) {
            this.pressedProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
        }

        public void setViewSelected(boolean z, boolean z2) {
            if (this.selected != z) {
                this.selected = z;
                if (z2) {
                    return;
                }
                this.selectedProgressT = z ? 1.0f : 0.0f;
                this.selectedProgress = z ? 1.0f : 0.0f;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00b2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drawSelected(Canvas canvas, View view) {
            Paint paint;
            boolean z = this.selected;
            if ((z || this.shouldSelected || this.selectedProgress > 0.0f) && !this.notDraw) {
                if (z || this.shouldSelected) {
                    float f = this.selectedProgressT;
                    if (f < 1.0f) {
                        this.selectedProgressT = f + ((1000.0f / AndroidUtilities.screenRefreshRate) / 240.0f);
                        view.invalidate();
                    }
                }
                if (!this.selected && !this.shouldSelected) {
                    float f2 = this.selectedProgressT;
                    if (f2 > 0.0f) {
                        this.selectedProgressT = f2 - ((1000.0f / AndroidUtilities.screenRefreshRate) / 240.0f);
                        view.invalidate();
                    }
                }
                this.selectedProgress = Utilities.clamp(this.selected ? CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.selectedProgressT) : 1.0f - CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(1.0f - this.selectedProgressT), 1.0f, 0.0f);
                int iM1124dp = AndroidUtilities.m1124dp(SelectAnimatedEmojiDialog.this.type == 6 ? 1.5f : 1.0f);
                int iM1124dp2 = AndroidUtilities.m1124dp(SelectAnimatedEmojiDialog.this.type == 6 ? 6.0f : 4.0f);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                float f3 = iM1124dp;
                rectF.inset(f3, f3);
                if (!this.empty) {
                    Drawable drawable = this.drawable;
                    paint = ((drawable instanceof AnimatedEmojiDrawable) && ((AnimatedEmojiDrawable) drawable).canOverrideColor()) ? SelectAnimatedEmojiDialog.this.selectorAccentPaint : SelectAnimatedEmojiDialog.this.selectorPaint;
                }
                int alpha = paint.getAlpha();
                paint.setAlpha((int) (alpha * getAlpha() * this.selectedProgress));
                float f4 = iM1124dp2;
                canvas.drawRoundRect(rectF, f4, f4, paint);
                paint.setAlpha(alpha);
            }
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.attached) {
                return;
            }
            this.attached = true;
            Drawable drawable = this.drawable;
            if (drawable instanceof AnimatedEmojiDrawable) {
                ((AnimatedEmojiDrawable) drawable).addView(this.invalidateHolder);
            }
            ImageReceiver imageReceiver = this.imageReceiver;
            if (imageReceiver != null) {
                imageReceiver.setParentView((View) getParent());
                this.imageReceiver.onAttachedToWindow();
            }
            this.preloadEffectImageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.attached) {
                this.attached = false;
                Drawable drawable = this.drawable;
                if (drawable instanceof AnimatedEmojiDrawable) {
                    ((AnimatedEmojiDrawable) drawable).removeView(this.invalidateHolder);
                    if (((AnimatedEmojiDrawable) this.drawable).getImageReceiver() != null) {
                        ((AnimatedEmojiDrawable) this.drawable).getImageReceiver().setEmojiPaused(false);
                    }
                }
                ImageReceiver imageReceiver = this.imageReceiver;
                if (imageReceiver != null) {
                    imageReceiver.onDetachedFromWindow();
                    this.imageReceiver.setEmojiPaused(false);
                }
                this.preloadEffectImageReceiver.onDetachedFromWindow();
            }
        }

        public void setDrawable(Drawable drawable) {
            Drawable drawable2 = this.drawable;
            if (drawable2 != drawable) {
                if (this.attached && drawable2 != null && (drawable2 instanceof AnimatedEmojiDrawable)) {
                    ((AnimatedEmojiDrawable) drawable2).removeView(this.invalidateHolder);
                }
                this.drawable = drawable;
                if (this.attached && (drawable instanceof AnimatedEmojiDrawable)) {
                    ((AnimatedEmojiDrawable) drawable).addView(this.invalidateHolder);
                }
            }
        }

        public void setSticker(TLRPC.Document document, View view) {
            this.document = document;
            createImageReceiver(view);
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f);
            if (SelectAnimatedEmojiDialog.this.type == 6) {
                this.imageReceiver.setImage(ImageLocation.getForDocument(document), !LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD) ? "34_34_firstframe" : "34_34", null, null, svgThumb, document.size, null, document, 0);
            } else {
                this.imageReceiver.setImage(ImageLocation.getForDocument(document), "100_100_firstframe", null, null, svgThumb, 0L, "tgs", document, 0);
            }
            this.isStaticIcon = true;
            this.span = null;
        }

        public void createImageReceiver(View view) {
            if (this.imageReceiver == null) {
                ImageReceiver imageReceiver = new ImageReceiver(view);
                this.imageReceiver = imageReceiver;
                imageReceiver.setLayerNum(7);
                if (this.attached) {
                    this.imageReceiver.onAttachedToWindow();
                }
                this.imageReceiver.setAspectFit(true);
            }
        }

        @Override // android.view.View
        public void invalidate() {
            if (HwEmojis.isHwEnabled() || getParent() == null) {
                return;
            }
            ((View) getParent()).invalidate();
        }

        @Override // android.view.View
        public void invalidate(int i, int i2, int i3, int i4) {
            if (HwEmojis.isHwEnabled()) {
                return;
            }
            super.invalidate(i, i2, i3, i4);
        }

        public void createPremiumLockView() {
            PremiumLockIconView premiumLockIconView = this.premiumLockIconView;
            if (premiumLockIconView == null) {
                this.premiumLockIconView = new PremiumLockIconView(getContext(), PremiumLockIconView.TYPE_REACTIONS_LOCK) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.ImageViewEmoji.4
                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        if (ImageViewEmoji.this.getParent() instanceof View) {
                            ((View) ImageViewEmoji.this.getParent()).invalidate();
                        }
                    }
                };
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(16.66f), TLObject.FLAG_30);
                this.premiumLockIconView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                PremiumLockIconView premiumLockIconView2 = this.premiumLockIconView;
                premiumLockIconView2.layout(0, 0, premiumLockIconView2.getMeasuredWidth(), this.premiumLockIconView.getMeasuredHeight());
                return;
            }
            premiumLockIconView.resetColor();
        }

        public void setEmojicon(String str) {
            if (TextUtils.isEmpty(str)) {
                this.emojiDrawable = null;
            } else {
                this.emojiDrawable = Emoji.getEmojiDrawable(str);
            }
        }
    }

    public void onEmojiClick(final View view, final AnimatedEmojiSpan animatedEmojiSpan) {
        int i;
        int i2;
        incrementHintUse();
        if (animatedEmojiSpan == null || (!this.badgePicker && (((i2 = this.type) == 0 || i2 == 12 || i2 == 9 || i2 == 10) && this.selectedDocumentIds.contains(Long.valueOf(animatedEmojiSpan.documentId))))) {
            EditTextCaption editTextCaption = this.commentView;
            onEmojiSelected(view, null, null, null, null, editTextCaption != null ? editTextCaption.getText().toString() : null);
            return;
        }
        TLRPC.TL_emojiStatus tL_emojiStatus = new TLRPC.TL_emojiStatus();
        tL_emojiStatus.document_id = animatedEmojiSpan.getDocumentId();
        TLRPC.Document documentFindDocument = animatedEmojiSpan.document;
        if (documentFindDocument == null) {
            documentFindDocument = AnimatedEmojiDrawable.findDocument(this.currentAccount, animatedEmojiSpan.documentId);
        }
        final TLRPC.Document document = documentFindDocument;
        if (view instanceof ImageViewEmoji) {
            final ImageViewEmoji imageViewEmoji = (ImageViewEmoji) view;
            if (imageViewEmoji.starGift == null && ((i = this.type) == 0 || i == 12 || i == 9 || i == 10)) {
                MediaDataController.getInstance(this.currentAccount).pushRecentEmojiStatus(tL_emojiStatus);
            }
            int i3 = this.type;
            if (i3 == 0 || i3 == 12 || i3 == 9 || i3 == 10 || i3 == 2) {
                if (!willApplyEmoji(view, Long.valueOf(animatedEmojiSpan.documentId), document, imageViewEmoji.starGift, null)) {
                    Long lValueOf = Long.valueOf(animatedEmojiSpan.documentId);
                    TL_stars.TL_starGiftUnique tL_starGiftUnique = imageViewEmoji.starGift;
                    EditTextCaption editTextCaption2 = this.commentView;
                    onEmojiSelected(view, lValueOf, document, tL_starGiftUnique, null, editTextCaption2 != null ? editTextCaption2.getText().toString() : null);
                    return;
                }
                animateEmojiSelect(imageViewEmoji, new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onEmojiClick$31(view, animatedEmojiSpan, document, imageViewEmoji);
                    }
                });
                return;
            }
            Long lValueOf2 = Long.valueOf(animatedEmojiSpan.documentId);
            TL_stars.TL_starGiftUnique tL_starGiftUnique2 = imageViewEmoji.starGift;
            EditTextCaption editTextCaption3 = this.commentView;
            onEmojiSelected(view, lValueOf2, document, tL_starGiftUnique2, null, editTextCaption3 != null ? editTextCaption3.getText().toString() : null);
            return;
        }
        Long lValueOf3 = Long.valueOf(animatedEmojiSpan.documentId);
        EditTextCaption editTextCaption4 = this.commentView;
        onEmojiSelected(view, lValueOf3, document, null, null, editTextCaption4 != null ? editTextCaption4.getText().toString() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onEmojiClick$31(View view, AnimatedEmojiSpan animatedEmojiSpan, TLRPC.Document document, ImageViewEmoji imageViewEmoji) {
        Long lValueOf = Long.valueOf(animatedEmojiSpan.documentId);
        TL_stars.TL_starGiftUnique tL_starGiftUnique = imageViewEmoji.starGift;
        EditTextCaption editTextCaption = this.commentView;
        onEmojiSelected(view, lValueOf, document, tL_starGiftUnique, null, editTextCaption != null ? editTextCaption.getText().toString() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void incrementHintUse() {
        if (this.type == 2) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("emoji");
        int i = this.type;
        sb.append((i == 0 || i == 12 || i == 9 || i == 10) ? "status" : "reaction");
        sb.append("usehint");
        String string = sb.toString();
        int i2 = MessagesController.getGlobalMainSettings().getInt(string, 0);
        if (i2 <= 3) {
            MessagesController.getGlobalMainSettings().edit().putInt(string, i2 + 1).apply();
        }
    }

    protected void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num, String str) {
        onEmojiSelected(view, l, document, tL_starGiftUnique, num);
    }

    public void preload(int i, int i2) {
        if (MediaDataController.getInstance(i2) == null) {
            return;
        }
        MediaDataController.getInstance(i2).checkStickers(5);
        if (i == 14) {
            MessagesController.getInstance(this.currentAccount).getAvailableEffects();
            return;
        }
        if (i == 1 || i == 11 || i == 2 || i == 6 || i == 13) {
            MediaDataController.getInstance(i2).checkReactions();
            return;
        }
        if (i == 9 || i == 10) {
            if (MessagesController.getInstance(i2).getMainSettings().getBoolean("resetemojipacks", true)) {
                MediaDataController.getInstance(i2).loadStickers(5, false, false);
                MessagesController.getInstance(i2).getMainSettings().edit().putBoolean("resetemojipacks", false).commit();
            }
            MediaDataController.getInstance(i2).fetchEmojiStatuses(2, false);
            MediaDataController.getInstance(i2).loadRestrictedStatusEmojis();
            MediaDataController.getInstance(i2).getStickerSet(new TLRPC.TL_inputStickerSetEmojiChannelDefaultStatuses(), false);
            return;
        }
        if (i == 0 || i == 12) {
            MediaDataController.getInstance(i2).fetchEmojiStatuses(0, true);
            MediaDataController.getInstance(i2).getStickerSet(new TLRPC.TL_inputStickerSetEmojiDefaultStatuses(), false);
        } else if (i == 3) {
            MediaDataController.getInstance(i2).checkDefaultTopicIcons();
        } else if (i == 4) {
            MediaDataController.getInstance(i2).loadRecents(0, false, true, false);
            MediaDataController.getInstance(i2).checkStickers(0);
        }
    }

    public static void preload(int i) {
        if (preloaded[i] || MediaDataController.getInstance(i) == null) {
            return;
        }
        preloaded[i] = true;
        MediaDataController.getInstance(i).checkStickers(5);
        MediaDataController.getInstance(i).fetchEmojiStatuses(0, true);
        MediaDataController.getInstance(i).checkReactions();
        MediaDataController.getInstance(i).getStickerSet(new TLRPC.TL_inputStickerSetEmojiDefaultStatuses(), false);
        MediaDataController.getInstance(i).getDefaultEmojiStatuses();
        MediaDataController.getInstance(i).checkDefaultTopicIcons();
        StickerCategoriesListView.preload(i, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows(boolean z, boolean z2) {
        updateRows(z, z2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0443 A[LOOP:2: B:180:0x043b->B:182:0x0443, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0545 A[LOOP:5: B:218:0x053f->B:220:0x0545, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0689  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0765  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x076e A[LOOP:21: B:315:0x0766->B:317:0x076e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x07c8  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x07e2  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0830  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x083c  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0879  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0894  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x0972  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x098b  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0a0b  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0a86  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0a8a  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0b12  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0b27 A[LOOP:15: B:453:0x0b1f->B:455:0x0b27, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0b99  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0baa  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0bb2  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0bba  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0bca  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0bd6  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x04a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:550:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateRows(boolean z, boolean z2, boolean z3) {
        int i;
        MediaDataController mediaDataController;
        ArrayList arrayList;
        TLRPC.TL_emojiList tL_emojiList;
        HashSet hashSet;
        HashSet hashSet2;
        ArrayList<TLRPC.EmojiStatus> defaultEmojiStatuses;
        ArrayList arrayList2;
        boolean z4;
        int i2;
        int size;
        int i3;
        int i4;
        boolean z5;
        int i5;
        int i6;
        EmojiListView emojiListView;
        int i7;
        int i8;
        long j;
        MediaDataController mediaDataController2;
        TLRPC.InputStickerSet inputStickerSet;
        boolean zIsPremiumEmojiPack;
        ArrayList arrayList3;
        int i9;
        int i10;
        EmojiView.EmojiPack emojiPack;
        boolean z6;
        int i11;
        int i12;
        int i13;
        int i14;
        HashSet hashSet3;
        int i15;
        int i16;
        int i17;
        ArrayList arrayList4;
        int size2;
        int i18;
        ArrayList arrayList5;
        boolean z7;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z8;
        int i24;
        int i25;
        TLRPC.TL_messages_stickerSet stickerSetByName;
        ArrayList arrayList6;
        boolean z9 = !this.animationsEnabled ? false : z2;
        MediaDataController mediaDataController3 = MediaDataController.getInstance(this.currentAccount);
        if (mediaDataController3 == null) {
            return;
        }
        if (z || this.frozenEmojiPacks == null) {
            this.frozenEmojiPacks = new ArrayList(mediaDataController3.getStickerSets(this.showStickers ? 0 : 5));
        }
        ArrayList arrayList7 = this.frozenEmojiPacks;
        ArrayList arrayList8 = (UserConfig.getInstance(UserConfig.selectedAccount).isPremium() || this.type == 4) ? new ArrayList(mediaDataController3.getFeaturedEmojiSets()) : null;
        final ArrayList arrayList9 = new ArrayList(this.rowHashCodes);
        this.totalCount = 0;
        this.recentReactionsSectionRow = -1;
        this.recentReactionsStartRow = -1;
        this.giftsStartRow = -1;
        this.giftsEndRow = -1;
        this.recentReactionsEndRow = -1;
        this.popularSectionRow = -1;
        this.giftsSectionRow = -1;
        this.longtapHintRow = -1;
        this.defaultTopicIconRow = -1;
        this.topicEmojiHeaderRow = -1;
        this.stickersSectionRow = -1;
        this.stickersStartRow = -1;
        this.stickersEndRow = -1;
        this.recent.clear();
        this.defaultStatuses.clear();
        this.topReactions.clear();
        this.recentReactions.clear();
        this.packs.clear();
        this.positionToSection.clear();
        this.sectionToPosition.clear();
        this.positionToExpand.clear();
        this.rowHashCodes.clear();
        this.positionToButton.clear();
        this.stickerSets.clear();
        this.recentStickers.clear();
        this.standardEmojis.clear();
        this.gifts.clear();
        if ((!arrayList7.isEmpty() || this.type == 4) && (i = this.type) != 5 && i != 7 && i != 8) {
            int i26 = this.totalCount;
            this.totalCount = i26 + 1;
            this.searchRow = i26;
            this.rowHashCodes.add(9L);
        } else {
            this.searchRow = -1;
        }
        int i27 = this.type;
        if (i27 == 5 || i27 == 7) {
            mediaDataController = mediaDataController3;
            if (this.includeEmpty) {
                this.totalCount++;
                this.rowHashCodes.add(2L);
            }
            TLRPC.TL_emojiList tL_emojiList2 = MediaDataController.getInstance(this.currentAccount).replyIconsDefault;
            if (tL_emojiList2 != null && (arrayList = tL_emojiList2.document_id) != null && !arrayList.isEmpty()) {
                for (int i28 = 0; i28 < tL_emojiList2.document_id.size(); i28++) {
                    this.recent.add(new AnimatedEmojiSpan(((Long) tL_emojiList2.document_id.get(i28)).longValue(), (Paint.FontMetricsInt) null));
                }
                for (int i29 = 0; i29 < this.recent.size(); i29++) {
                    this.rowHashCodes.add(Long.valueOf((((AnimatedEmojiSpan) this.recent.get(i29)).getDocumentId() * 13) + 43223));
                    this.totalCount++;
                }
            }
        } else if (i27 == 4) {
            if (this.showStickers) {
                this.recentStickers.addAll(MediaDataController.getInstance(this.currentAccount).getRecentStickersNoCopy(0));
                for (int i30 = 0; i30 < this.recentStickers.size(); i30++) {
                    this.rowHashCodes.add(Long.valueOf((((TLRPC.Document) this.recentStickers.get(i30)).f1668id * 13) + 62425));
                    this.totalCount++;
                }
            } else {
                TLRPC.TL_emojiList tL_emojiList3 = this.forUser ? MediaDataController.getInstance(this.currentAccount).profileAvatarConstructorDefault : MediaDataController.getInstance(this.currentAccount).groupAvatarConstructorDefault;
                if (tL_emojiList3 != null && (arrayList6 = tL_emojiList3.document_id) != null && !arrayList6.isEmpty()) {
                    EmojiView.EmojiPack emojiPack2 = new EmojiView.EmojiPack();
                    emojiPack2.installed = true;
                    emojiPack2.featured = false;
                    emojiPack2.expanded = true;
                    emojiPack2.free = true;
                    emojiPack2.set = new TLRPC.TL_stickerSet();
                    emojiPack2.thumbDocumentId = (Long) tL_emojiList3.document_id.get(0);
                    emojiPack2.index = this.packs.size();
                    this.packs.add(emojiPack2);
                    int i31 = 0;
                    while (i31 < tL_emojiList3.document_id.size()) {
                        this.recent.add(new AnimatedEmojiSpan(((Long) tL_emojiList3.document_id.get(i31)).longValue(), (Paint.FontMetricsInt) null));
                        i31++;
                        mediaDataController3 = mediaDataController3;
                    }
                    mediaDataController = mediaDataController3;
                    for (int i32 = 0; i32 < this.recent.size(); i32++) {
                        this.rowHashCodes.add(Long.valueOf((((AnimatedEmojiSpan) this.recent.get(i32)).getDocumentId() * 13) + 43223));
                        this.totalCount++;
                    }
                }
            }
            mediaDataController = mediaDataController3;
        } else {
            mediaDataController = mediaDataController3;
            if (i27 == 6) {
                if (this.includeEmpty) {
                    this.totalCount++;
                    this.rowHashCodes.add(2L);
                }
                List<TLRPC.TL_availableReaction> enabledReactionsList = MediaDataController.getInstance(this.currentAccount).getEnabledReactionsList();
                for (int i33 = 0; i33 < enabledReactionsList.size(); i33++) {
                    this.recentStickers.add(enabledReactionsList.get(i33).activate_animation);
                }
                for (int i34 = 0; i34 < this.recentStickers.size(); i34++) {
                    this.rowHashCodes.add(Long.valueOf((((TLRPC.Document) this.recentStickers.get(i34)).f1668id * 13) + 62425));
                    this.totalCount++;
                }
            } else if (i27 == 3) {
                int i35 = this.totalCount;
                this.totalCount = i35 + 1;
                this.topicEmojiHeaderRow = i35;
                this.rowHashCodes.add(12L);
                int i36 = this.totalCount;
                this.totalCount = i36 + 1;
                this.defaultTopicIconRow = i36;
                this.rowHashCodes.add(7L);
                String str = UserConfig.getInstance(this.currentAccount).defaultTopicIcons;
                if (str != null) {
                    stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByName(str);
                    if (stickerSetByName == null) {
                        stickerSetByName = MediaDataController.getInstance(this.currentAccount).getStickerSetByEmojiOrName(str);
                    }
                } else {
                    stickerSetByName = null;
                }
                if (stickerSetByName == null) {
                    this.defaultSetLoading = true;
                } else {
                    if (this.includeEmpty) {
                        this.totalCount++;
                        this.rowHashCodes.add(2L);
                    }
                    ArrayList arrayList10 = stickerSetByName.documents;
                    if (arrayList10 != null && !arrayList10.isEmpty()) {
                        for (int i37 = 0; i37 < stickerSetByName.documents.size(); i37++) {
                            this.recent.add(new AnimatedEmojiSpan((TLRPC.Document) stickerSetByName.documents.get(i37), (Paint.FontMetricsInt) null));
                        }
                    }
                    for (int i38 = 0; i38 < this.recent.size(); i38++) {
                        this.rowHashCodes.add(Long.valueOf((((AnimatedEmojiSpan) this.recent.get(i38)).getDocumentId() * 13) + 43223));
                        this.totalCount++;
                    }
                }
            }
        }
        if (this.includeHint && !this.badgePicker && (i25 = this.type) != 13 && i25 != 2 && i25 != 11 && i25 != 3 && i25 != 6 && i25 != 8 && i25 != 4 && i25 != 5 && i25 != 7) {
            int i39 = this.totalCount;
            this.totalCount = i39 + 1;
            this.longtapHintRow = i39;
            this.rowHashCodes.add(6L);
        }
        int i40 = this.type;
        if ((i40 == 9 || i40 == 10) && (tL_emojiList = MediaDataController.getInstance(this.currentAccount).restrictedStatusEmojis) != null) {
            hashSet = new HashSet();
            hashSet.addAll(tL_emojiList.document_id);
        } else {
            hashSet = null;
        }
        if (this.recentReactionsToSet != null) {
            this.topReactionsStartRow = this.totalCount;
            ArrayList arrayList11 = new ArrayList(this.recentReactionsToSet);
            if (this.type == 13 && arrayList11.size() > 8) {
                arrayList11.removeAll(arrayList11.subList(8, arrayList11.size()));
            } else {
                if (this.type == 14) {
                    arrayList5 = new ArrayList();
                    z7 = true;
                    int i41 = 0;
                    while (i41 < arrayList11.size()) {
                        if (((ReactionsLayoutInBubble.VisibleReaction) arrayList11.get(i41)).sticker) {
                            arrayList5.add((ReactionsLayoutInBubble.VisibleReaction) arrayList11.remove(i41));
                            i41--;
                        }
                        i41++;
                    }
                }
                i19 = this.type;
                if (i19 != 8 || i19 == 11 || i19 == 13) {
                    this.topReactions.addAll(arrayList11);
                } else {
                    for (int i42 = 0; i42 < 16; i42++) {
                        if (!arrayList11.isEmpty()) {
                            this.topReactions.add((ReactionsLayoutInBubble.VisibleReaction) arrayList11.remove(0));
                        }
                    }
                }
                i20 = 0;
                while (i20 < this.topReactions.size()) {
                    this.rowHashCodes.add(Long.valueOf((((long) ((ReactionsLayoutInBubble.VisibleReaction) this.topReactions.get(i20)).hashCode()) * 13) - 5632));
                    i20++;
                    hashSet = hashSet;
                }
                hashSet2 = hashSet;
                int size3 = this.totalCount + this.topReactions.size();
                this.totalCount = size3;
                this.topReactionsEndRow = size3;
                if (!arrayList11.isEmpty() && (i22 = this.type) != 8 && i22 != 11 && i22 != 13) {
                    i23 = 0;
                    while (true) {
                        if (i23 < arrayList11.size()) {
                            z8 = z7;
                            break;
                        } else {
                            if (((ReactionsLayoutInBubble.VisibleReaction) arrayList11.get(i23)).documentId != 0) {
                                z8 = false;
                                break;
                            }
                            i23++;
                        }
                    }
                    if (this.type != 14) {
                        if (z8) {
                            if (UserConfig.getInstance(this.currentAccount).isPremium()) {
                                int i43 = this.totalCount;
                                this.totalCount = i43 + 1;
                                this.popularSectionRow = i43;
                                this.rowHashCodes.add(5L);
                            }
                        } else {
                            int i44 = this.totalCount;
                            this.totalCount = i44 + 1;
                            this.recentReactionsSectionRow = i44;
                            this.rowHashCodes.add(4L);
                        }
                    }
                    this.recentReactionsStartRow = this.totalCount;
                    this.recentReactions.addAll(arrayList11);
                    for (i24 = 0; i24 < this.recentReactions.size(); i24++) {
                        this.rowHashCodes.add(Long.valueOf(((long) (z8 ? 4235 : -3142)) + (((ReactionsLayoutInBubble.VisibleReaction) this.recentReactions.get(i24)).hash * 13)));
                    }
                    int size4 = this.totalCount + this.recentReactions.size();
                    this.totalCount = size4;
                    this.recentReactionsEndRow = size4;
                }
                if (arrayList5 != null && !arrayList5.isEmpty()) {
                    int i45 = this.totalCount;
                    this.totalCount = i45 + 1;
                    this.stickersSectionRow = i45;
                    this.rowHashCodes.add(8L);
                    this.stickersStartRow = this.totalCount;
                    this.stickers = arrayList5;
                    for (i21 = 0; i21 < arrayList5.size(); i21++) {
                        this.rowHashCodes.add(Long.valueOf(((ReactionsLayoutInBubble.VisibleReaction) arrayList5.get(i21)).effectId * 19));
                    }
                    int size5 = this.totalCount + arrayList5.size();
                    this.totalCount = size5;
                    this.stickersEndRow = size5;
                }
            }
            z7 = true;
            arrayList5 = null;
            i19 = this.type;
            if (i19 != 8) {
                this.topReactions.addAll(arrayList11);
                i20 = 0;
                while (i20 < this.topReactions.size()) {
                }
                hashSet2 = hashSet;
                int size32 = this.totalCount + this.topReactions.size();
                this.totalCount = size32;
                this.topReactionsEndRow = size32;
                if (!arrayList11.isEmpty()) {
                    i23 = 0;
                    while (true) {
                        if (i23 < arrayList11.size()) {
                        }
                        i23++;
                    }
                    if (this.type != 14) {
                    }
                    this.recentReactionsStartRow = this.totalCount;
                    this.recentReactions.addAll(arrayList11);
                    while (i24 < this.recentReactions.size()) {
                    }
                    int size42 = this.totalCount + this.recentReactions.size();
                    this.totalCount = size42;
                    this.recentReactionsEndRow = size42;
                }
                if (arrayList5 != null) {
                    int i452 = this.totalCount;
                    this.totalCount = i452 + 1;
                    this.stickersSectionRow = i452;
                    this.rowHashCodes.add(8L);
                    this.stickersStartRow = this.totalCount;
                    this.stickers = arrayList5;
                    while (i21 < arrayList5.size()) {
                    }
                    int size52 = this.totalCount + arrayList5.size();
                    this.totalCount = size52;
                    this.stickersEndRow = size52;
                }
            }
            this.gifts.clear();
            if (!this.badgePicker && ((i17 = this.type) == 0 || i17 == 12 || i17 == 9 || i17 == 10)) {
                StarsController.GiftsList profileGiftsList = StarsController.getInstance(this.currentAccount).getProfileGiftsList(getDialogId());
                profileGiftsList.load();
                arrayList4 = new ArrayList();
                ArrayList arrayList12 = profileGiftsList.gifts;
                size2 = arrayList12.size();
                i18 = 0;
                while (i18 < size2) {
                    Object obj = arrayList12.get(i18);
                    i18++;
                    TL_stars.StarGift starGift = ((TL_stars.SavedStarGift) obj).gift;
                    if (starGift instanceof TL_stars.TL_starGiftUnique) {
                        arrayList4.add((TL_stars.TL_starGiftUnique) starGift);
                    }
                }
                if (arrayList4.isEmpty()) {
                    int i46 = this.totalCount;
                    this.totalCount = i46 + 1;
                    this.giftsSectionRow = i46;
                    this.rowHashCodes.add(22L);
                    this.giftsStartRow = this.totalCount;
                    int size6 = arrayList4.size();
                    int i47 = 0;
                    while (i47 < size6) {
                        Object obj2 = arrayList4.get(i47);
                        i47++;
                        TL_stars.TL_starGiftUnique tL_starGiftUnique = (TL_stars.TL_starGiftUnique) obj2;
                        this.rowHashCodes.add(Long.valueOf((tL_starGiftUnique.f1846id * 322) + 13334));
                        this.totalCount++;
                        this.gifts.add(tL_starGiftUnique);
                    }
                    this.giftsEndRow = this.totalCount;
                    this.emojiTabs.showGifts(true);
                } else {
                    this.emojiTabs.showGifts(false);
                }
            }
            if (this.type == 13) {
                for (String[] strArr : EmojiData.dataColored) {
                    for (String str2 : strArr) {
                        this.standardEmojis.add(str2);
                        this.rowHashCodes.add(Long.valueOf((((long) str2.hashCode()) * 322) + 13334));
                        this.totalCount++;
                    }
                }
            }
            i4 = this.type;
            long j2 = 3212;
            if (i4 != 8 && i4 != 13 && i4 != 14) {
                i14 = 0;
                while (i14 < arrayList2.size()) {
                    TLRPC.TL_messages_stickerSet tL_messages_stickerSet = (TLRPC.TL_messages_stickerSet) arrayList2.get(i14);
                    if (tL_messages_stickerSet == null || tL_messages_stickerSet.set == null || ((((i15 = this.type) == 5 || i15 == 7) && !MessageObject.isTextColorSet(tL_messages_stickerSet)) || (((i16 = this.type) == 10 || i16 == 9) && !tL_messages_stickerSet.set.channel_emoji_status))) {
                        hashSet3 = hashSet2;
                    } else {
                        TLRPC.StickerSet stickerSet = tL_messages_stickerSet.set;
                        if ((stickerSet.emojis || this.showStickers) && !this.installedEmojiSets.contains(Long.valueOf(stickerSet.f1696id))) {
                            this.positionToSection.put(this.totalCount, this.packs.size());
                            this.sectionToPosition.put(this.packs.size(), this.totalCount);
                            this.totalCount++;
                            this.rowHashCodes.add(Long.valueOf((tL_messages_stickerSet.set.f1696id * 13) + 9211));
                            EmojiView.EmojiPack emojiPack3 = new EmojiView.EmojiPack();
                            emojiPack3.installed = true;
                            emojiPack3.featured = false;
                            emojiPack3.expanded = true;
                            if (this.type == 4) {
                                emojiPack3.free = false;
                            } else {
                                emojiPack3.free = !MessageObject.isPremiumEmojiPack(tL_messages_stickerSet);
                            }
                            emojiPack3.set = tL_messages_stickerSet.set;
                            hashSet3 = hashSet2;
                            emojiPack3.documents = filter(tL_messages_stickerSet.documents, hashSet3);
                            emojiPack3.index = this.packs.size();
                            this.packs.add(emojiPack3);
                            this.totalCount += emojiPack3.documents.size();
                            for (int i48 = 0; i48 < emojiPack3.documents.size(); i48++) {
                                this.rowHashCodes.add(Long.valueOf((((TLRPC.Document) emojiPack3.documents.get(i48)).f1668id * 13) + 3212));
                            }
                        }
                    }
                    i14++;
                    hashSet2 = hashSet3;
                }
            }
            HashSet hashSet4 = hashSet2;
            if (arrayList8 != null && !this.showStickers && (i7 = this.type) != 8 && i7 != 13 && i7 != 14) {
                i8 = 0;
                while (i8 < arrayList8.size()) {
                    TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) arrayList8.get(i8);
                    TLRPC.StickerSet stickerSet2 = stickerSetCovered.set;
                    int i49 = 0;
                    while (true) {
                        if (i49 < this.packs.size()) {
                            j = j2;
                            if (((EmojiView.EmojiPack) this.packs.get(i49)).set.f1696id == stickerSet2.f1696id) {
                                z6 = z9;
                                i12 = i8;
                                mediaDataController2 = mediaDataController;
                                break;
                            }
                            i49++;
                            j2 = j;
                        } else {
                            j = j2;
                            if (stickerSetCovered instanceof TLRPC.TL_stickerSetNoCovered) {
                                mediaDataController2 = mediaDataController;
                                TLRPC.TL_messages_stickerSet stickerSet3 = mediaDataController2.getStickerSet(MediaDataController.getInputStickerSet(stickerSetCovered.set), Integer.valueOf(stickerSetCovered.set.hash), true);
                                if (stickerSet3 != null) {
                                    ArrayList arrayList13 = stickerSet3.documents;
                                    zIsPremiumEmojiPack = MessageObject.isPremiumEmojiPack(stickerSet3);
                                    arrayList3 = arrayList13;
                                    inputStickerSet = null;
                                    if (arrayList3 != null && ((!((i9 = this.type) == 5 || i9 == 7) || (!arrayList3.isEmpty() && MessageObject.isTextColorEmoji((TLRPC.Document) arrayList3.get(0)))) && (!((i10 = this.type) == 10 || i10 == 9) || stickerSet2.channel_emoji_status))) {
                                        this.positionToSection.put(this.totalCount, this.packs.size());
                                        this.sectionToPosition.put(this.packs.size(), this.totalCount);
                                        this.totalCount++;
                                        this.rowHashCodes.add(Long.valueOf((stickerSet2.f1696id * 13) + 9211));
                                        emojiPack = new EmojiView.EmojiPack();
                                        emojiPack.needLoadSet = inputStickerSet;
                                        emojiPack.installed = this.installedEmojiSets.contains(Long.valueOf(stickerSet2.f1696id));
                                        emojiPack.featured = true;
                                        if (this.type != 4) {
                                            emojiPack.free = false;
                                        } else {
                                            emojiPack.free = !zIsPremiumEmojiPack;
                                        }
                                        emojiPack.set = stickerSet2;
                                        emojiPack.documents = filter(arrayList3, hashSet4);
                                        emojiPack.index = this.packs.size();
                                        emojiPack.expanded = this.expandedEmojiSets.contains(Long.valueOf(emojiPack.set.f1696id));
                                        if (emojiPack.documents.size() <= 24 && !emojiPack.expanded) {
                                            this.totalCount += 24;
                                            for (int i50 = 0; i50 < 23; i50++) {
                                                this.rowHashCodes.add(Long.valueOf((((TLRPC.Document) emojiPack.documents.get(i50)).f1668id * 13) + j));
                                            }
                                            z6 = z9;
                                            this.rowHashCodes.add(Long.valueOf(((stickerSet2.f1696id * 13) - 5531) + (((long) (emojiPack.documents.size() - 23)) * 169)));
                                            this.positionToExpand.put(this.totalCount - 1, this.packs.size());
                                        } else {
                                            z6 = z9;
                                            this.totalCount += emojiPack.documents.size();
                                            for (i11 = 0; i11 < emojiPack.documents.size(); i11++) {
                                                this.rowHashCodes.add(Long.valueOf((((TLRPC.Document) emojiPack.documents.get(i11)).f1668id * 13) + j));
                                            }
                                        }
                                        if (emojiPack.installed && (i13 = this.type) != 4 && i13 != 5 && i13 != 7 && i13 != 6) {
                                            this.positionToButton.put(this.totalCount, this.packs.size());
                                            this.totalCount++;
                                            i12 = i8;
                                            this.rowHashCodes.add(Long.valueOf((stickerSet2.f1696id * 13) + 3321));
                                            this.packs.add(emojiPack);
                                        } else {
                                            i12 = i8;
                                            this.packs.add(emojiPack);
                                        }
                                    } else {
                                        z6 = z9;
                                        i12 = i8;
                                    }
                                } else {
                                    TLRPC.InputStickerSet inputStickerSet2 = MediaDataController.getInputStickerSet(stickerSetCovered.set);
                                    arrayList3 = new ArrayList();
                                    inputStickerSet = inputStickerSet2;
                                    zIsPremiumEmojiPack = true;
                                    if (arrayList3 != null) {
                                        this.positionToSection.put(this.totalCount, this.packs.size());
                                        this.sectionToPosition.put(this.packs.size(), this.totalCount);
                                        this.totalCount++;
                                        this.rowHashCodes.add(Long.valueOf((stickerSet2.f1696id * 13) + 9211));
                                        emojiPack = new EmojiView.EmojiPack();
                                        emojiPack.needLoadSet = inputStickerSet;
                                        emojiPack.installed = this.installedEmojiSets.contains(Long.valueOf(stickerSet2.f1696id));
                                        emojiPack.featured = true;
                                        if (this.type != 4) {
                                        }
                                        emojiPack.set = stickerSet2;
                                        emojiPack.documents = filter(arrayList3, hashSet4);
                                        emojiPack.index = this.packs.size();
                                        emojiPack.expanded = this.expandedEmojiSets.contains(Long.valueOf(emojiPack.set.f1696id));
                                        if (emojiPack.documents.size() <= 24) {
                                            z6 = z9;
                                            this.totalCount += emojiPack.documents.size();
                                            while (i11 < emojiPack.documents.size()) {
                                            }
                                            i12 = emojiPack.installed ? i8 : i8;
                                            this.packs.add(emojiPack);
                                        }
                                    }
                                    z6 = z9;
                                    i12 = i8;
                                }
                            } else {
                                mediaDataController2 = mediaDataController;
                                if (stickerSetCovered instanceof TLRPC.TL_stickerSetFullCovered) {
                                    arrayList3 = ((TLRPC.TL_stickerSetFullCovered) stickerSetCovered).documents;
                                    zIsPremiumEmojiPack = MessageObject.isPremiumEmojiPack(stickerSetCovered);
                                    inputStickerSet = null;
                                    if (arrayList3 != null) {
                                    }
                                    z6 = z9;
                                    i12 = i8;
                                } else {
                                    inputStickerSet = null;
                                    zIsPremiumEmojiPack = false;
                                    arrayList3 = null;
                                    if (arrayList3 != null) {
                                    }
                                    z6 = z9;
                                    i12 = i8;
                                }
                            }
                        }
                    }
                    i8 = i12 + 1;
                    mediaDataController = mediaDataController2;
                    z9 = z6;
                    j2 = j;
                }
            }
            z5 = z9;
            i5 = this.type;
            if (i5 != 14 && i5 != 8 && i5 != 13) {
                this.emojiTabs.updateEmojiPacks(this.packs);
            }
            if (z5) {
                this.emojiGridView.setItemAnimator(this.emojiItemAnimator);
            } else {
                this.emojiGridView.setItemAnimator(null);
            }
            if (z3) {
                i6 = 0;
                DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.24
                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public boolean areContentsTheSame(int i51, int i52) {
                        return true;
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public int getOldListSize() {
                        return arrayList9.size();
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public int getNewListSize() {
                        return SelectAnimatedEmojiDialog.this.rowHashCodes.size();
                    }

                    @Override // androidx.recyclerview.widget.DiffUtil.Callback
                    public boolean areItemsTheSame(int i51, int i52) {
                        return ((Long) arrayList9.get(i51)).equals(SelectAnimatedEmojiDialog.this.rowHashCodes.get(i52));
                    }
                }, false).dispatchUpdatesTo(this.adapter);
            } else {
                i6 = 0;
                this.adapter.notifyDataSetChanged();
            }
            emojiListView = this.emojiGridView;
            if (emojiListView.scrolledByUserOnce) {
                return;
            }
            emojiListView.scrollToPosition(i6);
            return;
        }
        hashSet2 = hashSet;
        int i51 = this.type;
        if (i51 == 0 || i51 == 12 || i51 == 9 || i51 == 10) {
            ArrayList<TLRPC.EmojiStatus> recentEmojiStatuses = MediaDataController.getInstance(this.currentAccount).getRecentEmojiStatuses();
            MediaDataController mediaDataController4 = MediaDataController.getInstance(this.currentAccount);
            int i52 = this.type;
            TLRPC.TL_messages_stickerSet stickerSet4 = mediaDataController4.getStickerSet((i52 == 0 || i52 == 12) ? new TLRPC.TL_inputStickerSetEmojiDefaultStatuses() : new TLRPC.TL_inputStickerSetEmojiChannelDefaultStatuses(), true);
            if (stickerSet4 == null) {
                this.defaultSetLoading = true;
            } else {
                if (this.includeEmpty) {
                    this.totalCount++;
                    this.rowHashCodes.add(2L);
                }
                int i53 = this.type;
                if (i53 == 0 || i53 == 12) {
                    defaultEmojiStatuses = MediaDataController.getInstance(this.currentAccount).getDefaultEmojiStatuses();
                } else {
                    defaultEmojiStatuses = MediaDataController.getInstance(this.currentAccount).getDefaultChannelEmojiStatuses();
                }
                ArrayList arrayList14 = stickerSet4.documents;
                if (arrayList14 != null && !arrayList14.isEmpty()) {
                    for (int i54 = 0; i54 < Math.min(7, stickerSet4.documents.size()); i54++) {
                        this.recent.add(new AnimatedEmojiSpan((TLRPC.Document) stickerSet4.documents.get(i54), (Paint.FontMetricsInt) null));
                        if (this.recent.size() + (this.includeEmpty ? 1 : 0) >= 104) {
                            break;
                        }
                    }
                }
                int i55 = this.type;
                if ((i55 == 0 || i55 == 12) && recentEmojiStatuses != null && !recentEmojiStatuses.isEmpty()) {
                    int size7 = recentEmojiStatuses.size();
                    int i56 = 0;
                    while (i56 < size7) {
                        TLRPC.EmojiStatus emojiStatus = recentEmojiStatuses.get(i56);
                        i56++;
                        Long emojiStatusDocumentId = UserObject.getEmojiStatusDocumentId(emojiStatus);
                        if (emojiStatusDocumentId != null) {
                            int i57 = 0;
                            while (true) {
                                if (i57 >= this.recent.size()) {
                                    arrayList2 = arrayList7;
                                    this.recent.add(new AnimatedEmojiSpan(emojiStatusDocumentId.longValue(), (Paint.FontMetricsInt) null));
                                    if (this.recent.size() + (this.includeEmpty ? 1 : 0) >= 104) {
                                        break;
                                    } else {
                                        arrayList7 = arrayList2;
                                    }
                                } else if (((AnimatedEmojiSpan) this.recent.get(i57)).getDocumentId() == emojiStatusDocumentId.longValue()) {
                                    break;
                                } else {
                                    i57++;
                                }
                            }
                        }
                    }
                    arrayList2 = arrayList7;
                    if (defaultEmojiStatuses != null && !defaultEmojiStatuses.isEmpty()) {
                        size = defaultEmojiStatuses.size();
                        i3 = 0;
                        while (i3 < size) {
                            TLRPC.EmojiStatus emojiStatus2 = defaultEmojiStatuses.get(i3);
                            i3++;
                            Long emojiStatusDocumentId2 = UserObject.getEmojiStatusDocumentId(emojiStatus2);
                            if (emojiStatusDocumentId2 != null) {
                                int i58 = 0;
                                while (true) {
                                    if (i58 >= this.recent.size()) {
                                        this.recent.add(new AnimatedEmojiSpan(emojiStatusDocumentId2.longValue(), (Paint.FontMetricsInt) null));
                                        if (this.recent.size() + (this.includeEmpty ? 1 : 0) >= 104) {
                                            break;
                                        }
                                    } else if (((AnimatedEmojiSpan) this.recent.get(i58)).getDocumentId() == emojiStatusDocumentId2.longValue()) {
                                        break;
                                    } else {
                                        i58++;
                                    }
                                }
                            }
                        }
                    }
                    z4 = this.includeEmpty;
                    if (this.recent.size() <= 40 - (z4 ? 1 : 0) && !this.recentExpanded) {
                        for (int i59 = 0; i59 < 39 - (z4 ? 1 : 0); i59++) {
                            this.rowHashCodes.add(Long.valueOf((((AnimatedEmojiSpan) this.recent.get(i59)).getDocumentId() * 13) + 43223));
                            this.totalCount++;
                        }
                        this.rowHashCodes.add(Long.valueOf((((long) (((this.recent.size() - 40) + (this.includeEmpty ? 1 : 0)) + 1)) * 13) - 5531));
                        EmojiPackExpand emojiPackExpand = this.recentExpandButton;
                        if (emojiPackExpand != null) {
                            emojiPackExpand.textView.setText("+" + ((this.recent.size() - 40) + (this.includeEmpty ? 1 : 0) + 1));
                        }
                        this.positionToExpand.put(this.totalCount, -1);
                        this.totalCount++;
                    } else {
                        for (i2 = 0; i2 < this.recent.size(); i2++) {
                            this.rowHashCodes.add(Long.valueOf((((AnimatedEmojiSpan) this.recent.get(i2)).getDocumentId() * 13) + 43223));
                            this.totalCount++;
                        }
                    }
                } else {
                    arrayList2 = arrayList7;
                    if (defaultEmojiStatuses != null) {
                        size = defaultEmojiStatuses.size();
                        i3 = 0;
                        while (i3 < size) {
                        }
                    }
                    z4 = this.includeEmpty;
                    if (this.recent.size() <= 40 - (z4 ? 1 : 0)) {
                        while (i2 < this.recent.size()) {
                        }
                    }
                }
            }
        }
        this.gifts.clear();
        if (!this.badgePicker) {
            StarsController.GiftsList profileGiftsList2 = StarsController.getInstance(this.currentAccount).getProfileGiftsList(getDialogId());
            profileGiftsList2.load();
            arrayList4 = new ArrayList();
            ArrayList arrayList122 = profileGiftsList2.gifts;
            size2 = arrayList122.size();
            i18 = 0;
            while (i18 < size2) {
            }
            if (arrayList4.isEmpty()) {
            }
        }
        if (this.type == 13) {
        }
        i4 = this.type;
        long j22 = 3212;
        if (i4 != 8) {
            i14 = 0;
            while (i14 < arrayList2.size()) {
            }
        }
        HashSet hashSet42 = hashSet2;
        if (arrayList8 != null) {
            i8 = 0;
            while (i8 < arrayList8.size()) {
            }
        }
        z5 = z9;
        i5 = this.type;
        if (i5 != 14) {
            this.emojiTabs.updateEmojiPacks(this.packs);
        }
        if (z5) {
        }
        if (z3) {
        }
        emojiListView = this.emojiGridView;
        if (emojiListView.scrolledByUserOnce) {
        }
        arrayList2 = arrayList7;
        this.gifts.clear();
        if (!this.badgePicker) {
        }
        if (this.type == 13) {
        }
        i4 = this.type;
        long j222 = 3212;
        if (i4 != 8) {
        }
        HashSet hashSet422 = hashSet2;
        if (arrayList8 != null) {
        }
        z5 = z9;
        i5 = this.type;
        if (i5 != 14) {
        }
        if (z5) {
        }
        if (z3) {
        }
        emojiListView = this.emojiGridView;
        if (emojiListView.scrolledByUserOnce) {
        }
    }

    public void notifyDataSetChanged() {
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public void expand(int i, View view) {
        boolean z;
        int iMin;
        int size;
        int size2;
        int i2;
        Integer numValueOf;
        int i3;
        boolean z2;
        int i4 = this.positionToExpand.get(i);
        this.animateExpandFromButtonTranslate = 0.0f;
        Integer numValueOf2 = null;
        if (i4 >= 0 && i4 < this.packs.size()) {
            EmojiView.EmojiPack emojiPack = (EmojiView.EmojiPack) this.packs.get(i4);
            if (emojiPack.expanded) {
                return;
            }
            boolean z3 = i4 + 1 == this.packs.size();
            i3 = this.sectionToPosition.get(i4);
            this.expandedEmojiSets.add(Long.valueOf(emojiPack.set.f1696id));
            i2 = 24;
            size = emojiPack.expanded ? emojiPack.documents.size() : Math.min(24, emojiPack.documents.size());
            numValueOf = emojiPack.documents.size() > 24 ? Integer.valueOf(i3 + 1 + size) : null;
            emojiPack.expanded = true;
            size2 = emojiPack.documents.size();
            z2 = z3;
        } else {
            if (i4 != -1 || (z = this.recentExpanded)) {
                return;
            }
            int i5 = (this.searchRow != -1 ? 1 : 0) + (this.longtapHintRow != -1 ? 1 : 0);
            boolean z4 = this.includeEmpty;
            int i6 = i5 + (z4 ? 1 : 0);
            if (z) {
                iMin = this.recent.size();
            } else {
                iMin = Math.min(38 - (z4 ? 1 : 0), this.recent.size());
            }
            size = iMin;
            size2 = this.recent.size();
            this.recentExpanded = true;
            i2 = 40;
            numValueOf = null;
            i3 = i6;
            z2 = false;
        }
        if (size2 > size) {
            numValueOf = Integer.valueOf(i3 + 1 + size);
            numValueOf2 = Integer.valueOf(size2 - size);
        }
        updateRows(false, true);
        if (numValueOf == null || numValueOf2 == null) {
            return;
        }
        this.animateExpandFromButton = view;
        this.animateExpandFromPosition = numValueOf.intValue();
        this.animateExpandToPosition = numValueOf.intValue() + numValueOf2.intValue();
        this.animateExpandStartTime = SystemClock.elapsedRealtime();
        if (z2) {
            final int iIntValue = numValueOf.intValue();
            final float f = numValueOf2.intValue() > i2 / 2 ? 1.5f : 3.5f;
            post(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$expand$32(f, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$expand$32(float f, int i) {
        try {
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(this.emojiGridView.getContext(), 0, f);
            linearSmoothScrollerCustom.setTargetPosition(i);
            this.layoutManager.startSmoothScroll(linearSmoothScrollerCustom);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        if (this.drawBackground && (i3 = this.type) != 3 && i3 != 4) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) Math.min(AndroidUtilities.m1124dp(324.0f), AndroidUtilities.displaySize.x * 0.95f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((int) Math.min(AndroidUtilities.m1124dp(330.0f), AndroidUtilities.displaySize.y * 0.75f), Integer.MIN_VALUE));
        } else if (this.type == 6) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((int) (AndroidUtilities.displaySize.y * 0.35f), Integer.MIN_VALUE));
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z && this.type == 6) {
            this.layoutManager.setSpanCount((getMeasuredWidth() / AndroidUtilities.m1124dp(42.0f)) * 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCacheType() {
        int i = this.type;
        int i2 = 13;
        if (i != 5 && i != 7) {
            if (i == 6) {
                return AnimatedEmojiDrawable.getCacheTypeForEnterView();
            }
            if (i != 3 && i != 4) {
                i2 = 2;
                if (i != 0 && i != 12 && i != 9 && i != 10 && i != 2) {
                    return 3;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class EmojiListView extends RecyclerListView {
        private LongSparseArray animatedEmojiDrawables;
        private boolean invalidated;
        private int lastChildCount;
        ArrayList lineDrawables;
        ArrayList lineDrawablesTmp;
        ArrayList unusedArrays;
        ArrayList unusedLineDrawables;
        SparseArray viewsGroupedByLines;

        public EmojiListView(Context context) {
            super(context);
            this.viewsGroupedByLines = new SparseArray();
            this.unusedArrays = new ArrayList();
            this.unusedLineDrawables = new ArrayList();
            this.lineDrawables = new ArrayList();
            this.lineDrawablesTmp = new ArrayList();
            this.animatedEmojiDrawables = new LongSparseArray();
            this.lastChildCount = -1;
            setDrawSelectorBehind(true);
            setClipToPadding(false);
            setSelectorRadius(AndroidUtilities.m1124dp(4.0f));
            setSelectorDrawableColor(Theme.getColor(Theme.key_listSelector, this.resourcesProvider));
        }

        @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            return super.drawChild(canvas, view, j);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
        @Override // org.telegram.p029ui.Components.RecyclerListView
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected boolean canHighlightChildAt(View view, float f, float f2) {
            if (view instanceof ImageViewEmoji) {
                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) view;
                if (!imageViewEmoji.empty) {
                    Drawable drawable = imageViewEmoji.drawable;
                    if (!(drawable instanceof AnimatedEmojiDrawable) || !((AnimatedEmojiDrawable) drawable).canOverrideColor()) {
                        setSelectorDrawableColor(Theme.getColor(Theme.key_listSelector, this.resourcesProvider));
                    }
                }
                setSelectorDrawableColor(ColorUtils.setAlphaComponent(SelectAnimatedEmojiDialog.this.accentColor, 30));
            }
            return super.canHighlightChildAt(view, f, f2);
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            super.setAlpha(f);
            invalidate();
        }

        /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
            java.lang.NullPointerException
            */
        @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(android.graphics.Canvas r21) {
            /*
                Method dump skipped, instruction units count: 1143
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.ui.SelectAnimatedEmojiDialog.EmojiListView.dispatchDraw(android.graphics.Canvas):void");
        }

        public class DrawingInBackgroundLine extends DrawingInBackgroundThreadDrawable {
            ArrayList imageViewEmojis;
            public int position;
            public int startOffset;
            ArrayList drawInBackgroundViews = new ArrayList();
            float skewAlpha = 1.0f;
            boolean skewBelow = false;
            boolean lite = LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS);
            private OvershootInterpolator appearScaleInterpolator = new OvershootInterpolator(3.0f);

            public DrawingInBackgroundLine() {
            }

            @Override // org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable
            public void draw(Canvas canvas, long j, int i, int i2, float f) {
                ArrayList arrayList = this.imageViewEmojis;
                if (arrayList == null) {
                    return;
                }
                this.skewAlpha = 1.0f;
                this.skewBelow = false;
                if (!arrayList.isEmpty()) {
                    View view = (View) this.imageViewEmojis.get(0);
                    if (view.getY() > (EmojiListView.this.getHeight() - EmojiListView.this.getPaddingBottom()) - view.getHeight()) {
                        this.skewAlpha = (MathUtils.clamp((-((view.getY() - EmojiListView.this.getHeight()) + EmojiListView.this.getPaddingBottom())) / view.getHeight(), 0.0f, 1.0f) * 0.75f) + 0.25f;
                    }
                }
                boolean z = true;
                boolean z2 = SelectAnimatedEmojiDialog.this.type == 13 || this.skewAlpha < 1.0f || EmojiListView.this.isAnimating() || this.imageViewEmojis.size() <= 4 || !this.lite || SelectAnimatedEmojiDialog.this.enterAnimationInProgress() || SelectAnimatedEmojiDialog.this.type == 4 || SelectAnimatedEmojiDialog.this.type == 6;
                if (z2) {
                    z = z2;
                } else {
                    boolean z3 = SelectAnimatedEmojiDialog.this.animateExpandStartTime > 0 && SystemClock.elapsedRealtime() - SelectAnimatedEmojiDialog.this.animateExpandStartTime < SelectAnimatedEmojiDialog.this.animateExpandDuration();
                    for (int i3 = 0; i3 < this.imageViewEmojis.size(); i3++) {
                        ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.imageViewEmojis.get(i3);
                        if (imageViewEmoji.pressedProgress != 0.0f || imageViewEmoji.selectedProgress != 0.0f || imageViewEmoji.backAnimator != null || imageViewEmoji.getTranslationX() != 0.0f || imageViewEmoji.getTranslationY() != 0.0f || imageViewEmoji.getAlpha() != 1.0f || ((z3 && imageViewEmoji.position > SelectAnimatedEmojiDialog.this.animateExpandFromPosition && imageViewEmoji.position < SelectAnimatedEmojiDialog.this.animateExpandToPosition) || imageViewEmoji.isStaticIcon)) {
                            break;
                        }
                    }
                    z = z2;
                }
                float f2 = HwEmojis.isHwEnabled() ? 1.0f : f;
                if (z || HwEmojis.isPreparing()) {
                    float f3 = f2;
                    prepareDraw(System.currentTimeMillis());
                    drawInUiThread(canvas, f3);
                    reset();
                    return;
                }
                super.draw(canvas, j, i, i2, f2);
            }

            @Override // org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable
            public void drawBitmap(Canvas canvas, Bitmap bitmap, Paint paint) {
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
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
            @Override // org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable
            public void prepareDraw(long j) {
                float alpha;
                ImageReceiver imageReceiver;
                this.drawInBackgroundViews.clear();
                for (int i = 0; i < this.imageViewEmojis.size(); i++) {
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.imageViewEmojis.get(i);
                    if (!imageViewEmoji.notDraw) {
                        if (imageViewEmoji.empty) {
                            Drawable premiumStar = SelectAnimatedEmojiDialog.this.getPremiumStar();
                            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                            float fMax = (selectAnimatedEmojiDialog.badgePicker || selectAnimatedEmojiDialog.type == 5 || SelectAnimatedEmojiDialog.this.type == 10 || SelectAnimatedEmojiDialog.this.type == 9 || SelectAnimatedEmojiDialog.this.type == 7) ? 1.3f : 1.0f;
                            if (imageViewEmoji.pressedProgress != 0.0f || imageViewEmoji.selectedProgress > 0.0f) {
                                fMax *= ((1.0f - Math.max(imageViewEmoji.selectedProgress * 0.8f, imageViewEmoji.pressedProgress)) * 0.2f) + 0.8f;
                            }
                            if (premiumStar != null) {
                                premiumStar.setAlpha(255);
                                int width = (imageViewEmoji.getWidth() - imageViewEmoji.getPaddingLeft()) - imageViewEmoji.getPaddingRight();
                                int height = (imageViewEmoji.getHeight() - imageViewEmoji.getPaddingTop()) - imageViewEmoji.getPaddingBottom();
                                Rect rect = AndroidUtilities.rectTmp2;
                                float f = width / 2.0f;
                                float f2 = height / 2.0f;
                                rect.set((int) ((imageViewEmoji.getWidth() / 2.0f) - ((imageViewEmoji.getScaleX() * f) * fMax)), (int) ((imageViewEmoji.getHeight() / 2.0f) - ((imageViewEmoji.getScaleY() * f2) * fMax)), (int) ((imageViewEmoji.getWidth() / 2.0f) + (f * imageViewEmoji.getScaleX() * fMax)), (int) ((imageViewEmoji.getHeight() / 2.0f) + (f2 * imageViewEmoji.getScaleY() * fMax)));
                                rect.offset(imageViewEmoji.getLeft() - this.startOffset, 0);
                                if (imageViewEmoji.drawableBounds == null) {
                                    imageViewEmoji.drawableBounds = new Rect();
                                }
                                imageViewEmoji.drawableBounds.set(rect);
                                imageViewEmoji.setDrawable(premiumStar);
                                this.drawInBackgroundViews.add(imageViewEmoji);
                            }
                        } else {
                            if (imageViewEmoji.pressedProgress != 0.0f || imageViewEmoji.selectedProgress > 0.0f) {
                                Math.max(imageViewEmoji.selectedProgress * 0.8f, imageViewEmoji.pressedProgress);
                            }
                            if (SelectAnimatedEmojiDialog.this.animateExpandStartTime > 0 && SystemClock.elapsedRealtime() - SelectAnimatedEmojiDialog.this.animateExpandStartTime < SelectAnimatedEmojiDialog.this.animateExpandDuration() && SelectAnimatedEmojiDialog.this.animateExpandFromPosition >= 0 && SelectAnimatedEmojiDialog.this.animateExpandToPosition >= 0 && SelectAnimatedEmojiDialog.this.animateExpandStartTime > 0) {
                                int childAdapterPosition = EmojiListView.this.getChildAdapterPosition(imageViewEmoji) - SelectAnimatedEmojiDialog.this.animateExpandFromPosition;
                                int i2 = SelectAnimatedEmojiDialog.this.animateExpandToPosition - SelectAnimatedEmojiDialog.this.animateExpandFromPosition;
                                if (childAdapterPosition < 0 || childAdapterPosition >= i2) {
                                    alpha = 1.0f;
                                } else {
                                    float fClamp = MathUtils.clamp((SystemClock.elapsedRealtime() - SelectAnimatedEmojiDialog.this.animateExpandStartTime) / SelectAnimatedEmojiDialog.this.animateExpandAppearDuration(), 0.0f, 1.0f);
                                    float f3 = childAdapterPosition;
                                    float f4 = i2;
                                    float f5 = f4 / 4.0f;
                                    float fCascade = AndroidUtilities.cascade(fClamp, f3, f4, f5);
                                    this.appearScaleInterpolator.getInterpolation(AndroidUtilities.cascade(fClamp, f3, f4, f5));
                                    alpha = fCascade * 1.0f;
                                }
                            } else {
                                alpha = 1.0f * imageViewEmoji.getAlpha();
                            }
                            if (!imageViewEmoji.isDefaultReaction && !imageViewEmoji.isStaticIcon) {
                                if (imageViewEmoji.span != null) {
                                    Drawable drawable = imageViewEmoji.drawable;
                                    AnimatedEmojiDrawable animatedEmojiDrawable = drawable instanceof AnimatedEmojiDrawable ? (AnimatedEmojiDrawable) drawable : null;
                                    if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                                        imageReceiver = animatedEmojiDrawable.getImageReceiver();
                                        animatedEmojiDrawable.setAlpha((int) (alpha * 255.0f));
                                        imageViewEmoji.setDrawable(animatedEmojiDrawable);
                                        imageViewEmoji.drawable.setColorFilter(SelectAnimatedEmojiDialog.this.premiumStarColorFilter);
                                    }
                                }
                            } else {
                                imageReceiver = imageViewEmoji.imageReceiver;
                                imageReceiver.setAlpha(alpha);
                            }
                            if (imageReceiver != null) {
                                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog2 = SelectAnimatedEmojiDialog.this;
                                imageReceiver.setEmojiPaused(selectAnimatedEmojiDialog2.paused && !(selectAnimatedEmojiDialog2.pausedExceptSelected && imageViewEmoji.selected));
                                if (imageViewEmoji.selected) {
                                    imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(4.0f));
                                } else {
                                    imageReceiver.setRoundRadius(0);
                                }
                                ImageReceiver.BackgroundThreadDrawHolder[] backgroundThreadDrawHolderArr = imageViewEmoji.backgroundThreadDrawHolder;
                                int i3 = this.threadIndex;
                                backgroundThreadDrawHolderArr[i3] = imageReceiver.setDrawInBackgroundThread(backgroundThreadDrawHolderArr[i3], i3);
                                imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex].time = j;
                                imageViewEmoji.imageReceiverToDraw = imageReceiver;
                                imageViewEmoji.update(j);
                                imageViewEmoji.getWidth();
                                imageViewEmoji.getPaddingLeft();
                                imageViewEmoji.getPaddingRight();
                                imageViewEmoji.getHeight();
                                imageViewEmoji.getPaddingTop();
                                imageViewEmoji.getPaddingBottom();
                                Rect rect2 = AndroidUtilities.rectTmp2;
                                rect2.set(imageViewEmoji.getPaddingLeft(), imageViewEmoji.getPaddingTop(), imageViewEmoji.getWidth() - imageViewEmoji.getPaddingRight(), imageViewEmoji.getHeight() - imageViewEmoji.getPaddingBottom());
                                if (imageViewEmoji.selected && SelectAnimatedEmojiDialog.this.type != 3 && SelectAnimatedEmojiDialog.this.type != 4) {
                                    rect2.set(Math.round(rect2.centerX() - ((rect2.width() / 2.0f) * 0.86f)), Math.round(rect2.centerY() - ((rect2.height() / 2.0f) * 0.86f)), Math.round(rect2.centerX() + ((rect2.width() / 2.0f) * 0.86f)), Math.round(rect2.centerY() + ((rect2.height() / 2.0f) * 0.86f)));
                                }
                                rect2.offset((imageViewEmoji.getLeft() + ((int) imageViewEmoji.getTranslationX())) - this.startOffset, 0);
                                imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex].setBounds(rect2);
                                imageViewEmoji.skewAlpha = 1.0f;
                                imageViewEmoji.skewIndex = i;
                                this.drawInBackgroundViews.add(imageViewEmoji);
                            }
                        }
                    }
                }
            }

            @Override // org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable
            public void drawInBackground(Canvas canvas) {
                for (int i = 0; i < this.drawInBackgroundViews.size(); i++) {
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.drawInBackgroundViews.get(i);
                    if (!imageViewEmoji.notDraw) {
                        if (imageViewEmoji.empty) {
                            imageViewEmoji.drawable.setBounds(imageViewEmoji.drawableBounds);
                            imageViewEmoji.drawable.draw(canvas);
                        } else {
                            ImageReceiver imageReceiver = imageViewEmoji.imageReceiverToDraw;
                            if (imageReceiver != null) {
                                imageReceiver.draw(canvas, imageViewEmoji.backgroundThreadDrawHolder[this.threadIndex]);
                            }
                        }
                    }
                }
            }

            @Override // org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable
            protected void drawInUiThread(Canvas canvas, float f) {
                Drawable premiumStar;
                if (this.imageViewEmojis != null) {
                    canvas.save();
                    canvas.translate(-this.startOffset, 0.0f);
                    float alpha = f;
                    for (int i = 0; i < this.imageViewEmojis.size(); i++) {
                        ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.imageViewEmojis.get(i);
                        if (!imageViewEmoji.notDraw) {
                            float scaleX = imageViewEmoji.getScaleX();
                            if (SelectAnimatedEmojiDialog.this.type == 13) {
                                scaleX *= 0.87f;
                            }
                            if (imageViewEmoji.pressedProgress != 0.0f || (imageViewEmoji.selectedProgress > 0.0f && SelectAnimatedEmojiDialog.this.type != 3 && SelectAnimatedEmojiDialog.this.type != 4)) {
                                scaleX *= 0.8f + (0.2f * (1.0f - Math.max((SelectAnimatedEmojiDialog.this.type == 3 || SelectAnimatedEmojiDialog.this.type == 4) ? 1.0f : imageViewEmoji.selectedProgress * 0.7f, imageViewEmoji.pressedProgress)));
                            }
                            boolean z = SelectAnimatedEmojiDialog.this.animateExpandStartTime > 0 && SystemClock.elapsedRealtime() - SelectAnimatedEmojiDialog.this.animateExpandStartTime < SelectAnimatedEmojiDialog.this.animateExpandDuration();
                            if (z && SelectAnimatedEmojiDialog.this.animateExpandFromPosition >= 0 && SelectAnimatedEmojiDialog.this.animateExpandToPosition >= 0 && SelectAnimatedEmojiDialog.this.animateExpandStartTime > 0) {
                                int childAdapterPosition = EmojiListView.this.getChildAdapterPosition(imageViewEmoji) - SelectAnimatedEmojiDialog.this.animateExpandFromPosition;
                                int i2 = SelectAnimatedEmojiDialog.this.animateExpandToPosition - SelectAnimatedEmojiDialog.this.animateExpandFromPosition;
                                if (childAdapterPosition >= 0 && childAdapterPosition < i2) {
                                    float fClamp = MathUtils.clamp((SystemClock.elapsedRealtime() - SelectAnimatedEmojiDialog.this.animateExpandStartTime) / SelectAnimatedEmojiDialog.this.animateExpandAppearDuration(), 0.0f, 1.0f);
                                    float f2 = childAdapterPosition;
                                    float f3 = i2;
                                    float f4 = f3 / 4.0f;
                                    float fCascade = AndroidUtilities.cascade(fClamp, f2, f3, f4);
                                    scaleX *= (this.appearScaleInterpolator.getInterpolation(AndroidUtilities.cascade(fClamp, f2, f3, f4)) * 0.5f) + 0.5f;
                                    alpha = fCascade;
                                }
                            } else {
                                alpha *= imageViewEmoji.getAlpha();
                            }
                            Rect rect = AndroidUtilities.rectTmp2;
                            rect.set(((int) imageViewEmoji.getX()) + imageViewEmoji.getPaddingLeft(), imageViewEmoji.getPaddingTop(), (((int) imageViewEmoji.getX()) + imageViewEmoji.getWidth()) - imageViewEmoji.getPaddingRight(), imageViewEmoji.getHeight() - imageViewEmoji.getPaddingBottom());
                            if (!SelectAnimatedEmojiDialog.this.smoothScrolling && !z) {
                                rect.offset(0, (int) imageViewEmoji.getTranslationY());
                            }
                            if (imageViewEmoji.empty) {
                                premiumStar = SelectAnimatedEmojiDialog.this.getPremiumStar();
                                SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
                                if (selectAnimatedEmojiDialog.badgePicker || selectAnimatedEmojiDialog.type == 5 || SelectAnimatedEmojiDialog.this.type == 10 || SelectAnimatedEmojiDialog.this.type == 9 || SelectAnimatedEmojiDialog.this.type == 7) {
                                    rect.inset((int) ((-rect.width()) * 0.15f), (int) ((-rect.height()) * 0.15f));
                                }
                                premiumStar.setBounds(rect);
                                premiumStar.setAlpha(255);
                            } else if (!imageViewEmoji.isDefaultReaction && !imageViewEmoji.isStaticIcon) {
                                if ((imageViewEmoji.span != null || SelectAnimatedEmojiDialog.this.type == 13) && !imageViewEmoji.notDraw && (premiumStar = imageViewEmoji.drawable) != null) {
                                    premiumStar.setAlpha(255);
                                    premiumStar.setBounds(rect);
                                }
                            } else {
                                ImageReceiver imageReceiver = imageViewEmoji.imageReceiver;
                                if (imageReceiver != null) {
                                    imageReceiver.setImageCoords(rect);
                                }
                                premiumStar = null;
                            }
                            if (SelectAnimatedEmojiDialog.this.premiumStarColorFilter != null) {
                                Drawable drawable = imageViewEmoji.drawable;
                                if (drawable instanceof AnimatedEmojiDrawable) {
                                    drawable.setColorFilter(SelectAnimatedEmojiDialog.this.premiumStarColorFilter);
                                }
                            }
                            float f5 = this.skewAlpha;
                            imageViewEmoji.skewAlpha = f5;
                            imageViewEmoji.skewIndex = i;
                            if (scaleX != 1.0f || f5 < 1.0f) {
                                canvas.save();
                                if (imageViewEmoji.selectedProgress > 1.0f && SelectAnimatedEmojiDialog.this.type != 3 && SelectAnimatedEmojiDialog.this.type != 4 && SelectAnimatedEmojiDialog.this.type != 6) {
                                    float fLerp = AndroidUtilities.lerp(1.0f, 0.85f, imageViewEmoji.selectedProgress);
                                    canvas.scale(fLerp, fLerp, rect.centerX(), rect.centerY());
                                }
                                if (SelectAnimatedEmojiDialog.this.type == 6 || SelectAnimatedEmojiDialog.this.type == 13 || SelectAnimatedEmojiDialog.this.type == 14) {
                                    canvas.scale(scaleX, scaleX, rect.centerX(), rect.centerY());
                                } else {
                                    skew(canvas, i, imageViewEmoji.getHeight());
                                }
                                drawImage(canvas, premiumStar, imageViewEmoji, alpha);
                                canvas.restore();
                            } else {
                                drawImage(canvas, premiumStar, imageViewEmoji, alpha);
                            }
                        }
                    }
                    canvas.restore();
                }
            }

            private void skew(Canvas canvas, int i, int i2) {
                float f = this.skewAlpha;
                if (f < 1.0f) {
                    if (this.skewBelow) {
                        canvas.translate(0.0f, i2);
                        canvas.skew((1.0f - ((i * 2.0f) / this.imageViewEmojis.size())) * (-(1.0f - this.skewAlpha)), 0.0f);
                        canvas.translate(0.0f, -i2);
                    } else {
                        canvas.scale(1.0f, f, 0.0f, 0.0f);
                        canvas.skew((1.0f - ((i * 2.0f) / this.imageViewEmojis.size())) * (1.0f - this.skewAlpha), 0.0f);
                    }
                }
            }

            private void drawImage(Canvas canvas, Drawable drawable, ImageViewEmoji imageViewEmoji, float f) {
                if (drawable != null) {
                    drawable.setAlpha((int) (f * 255.0f));
                    drawable.setColorFilter(SelectAnimatedEmojiDialog.this.premiumStarColorFilter);
                    drawable.draw(canvas);
                } else if ((imageViewEmoji.isDefaultReaction || imageViewEmoji.isStaticIcon) && imageViewEmoji.imageReceiver != null) {
                    canvas.save();
                    canvas.clipRect(imageViewEmoji.imageReceiver.getImageX(), imageViewEmoji.imageReceiver.getImageY(), imageViewEmoji.imageReceiver.getImageX2(), imageViewEmoji.imageReceiver.getImageY2());
                    imageViewEmoji.imageReceiver.setAlpha(f);
                    imageViewEmoji.imageReceiver.draw(canvas);
                    canvas.restore();
                }
            }

            @Override // org.telegram.p029ui.Components.DrawingInBackgroundThreadDrawable
            public void onFrameReady() {
                super.onFrameReady();
                for (int i = 0; i < this.drawInBackgroundViews.size(); i++) {
                    ImageReceiver.BackgroundThreadDrawHolder backgroundThreadDrawHolder = ((ImageViewEmoji) this.drawInBackgroundViews.get(i)).backgroundThreadDrawHolder[this.threadIndex];
                    if (backgroundThreadDrawHolder != null) {
                        backgroundThreadDrawHolder.release();
                    }
                }
                SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
            }
        }

        @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
            if (this == selectAnimatedEmojiDialog.emojiGridView) {
                selectAnimatedEmojiDialog.bigReactionImageReceiver.onAttachedToWindow();
            }
        }

        @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = SelectAnimatedEmojiDialog.this;
            if (this == selectAnimatedEmojiDialog.emojiGridView) {
                selectAnimatedEmojiDialog.bigReactionImageReceiver.onDetachedFromWindow();
            }
            release(this.unusedLineDrawables);
            release(this.lineDrawables);
            release(this.lineDrawablesTmp);
        }

        private void release(ArrayList arrayList) {
            for (int i = 0; i < arrayList.size(); i++) {
                ((DrawingInBackgroundLine) arrayList.get(i)).onDetachFromWindow();
            }
            arrayList.clear();
        }

        @Override // org.telegram.p029ui.Components.RecyclerListView
        public void invalidateViews() {
            if (HwEmojis.grab(this)) {
                return;
            }
            super.invalidateViews();
        }

        @Override // android.view.View
        public void invalidate() {
            if (HwEmojis.grab(this) || this.invalidated) {
                return;
            }
            this.invalidated = true;
            super.invalidate();
        }

        @Override // android.view.View
        public void invalidate(int i, int i2, int i3, int i4) {
            if (HwEmojis.grab(this)) {
                return;
            }
            super.invalidate(i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttached = true;
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.featuredEmojiDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.stickersDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.recentEmojiStatusesUpdate);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupStickersDidLoad);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        int i = this.type;
        if (i == 0 || i == 12) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.starUserGiftsLoaded);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.scrimDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.setSecondParent(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setBigReactionAnimatedEmoji(null);
        this.isAttached = false;
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.featuredEmojiDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.stickersDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.recentEmojiStatusesUpdate);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupStickersDidLoad);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        int i = this.type;
        if (i == 0 || i == 12) {
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.starUserGiftsLoaded);
        }
        AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = this.scrimDrawable;
        if (swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.setSecondParent(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$33() {
        updateRows(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$34() {
        NotificationCenter.getGlobalInstance().removeDelayed(this.updateRows);
        NotificationCenter.getGlobalInstance().doOnIdle(this.updateRows);
    }

    private void updateRowsDelayed() {
        AndroidUtilities.cancelRunOnUIThread(this.updateRowsDelayed);
        AndroidUtilities.runOnUIThread(this.updateRowsDelayed);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.stickersDidLoad) {
            if (((Integer) objArr[0]).intValue() == 5 || (((Integer) objArr[0]).intValue() == 0 && this.showStickers)) {
                updateRowsDelayed();
                return;
            }
            return;
        }
        if (i == NotificationCenter.featuredEmojiDidLoad) {
            updateRowsDelayed();
            return;
        }
        if (i == NotificationCenter.recentEmojiStatusesUpdate) {
            updateRowsDelayed();
            return;
        }
        if (i == NotificationCenter.groupStickersDidLoad) {
            updateRowsDelayed();
            return;
        }
        if (i == NotificationCenter.emojiLoaded) {
            AndroidUtilities.forEachViews((RecyclerView) this.emojiGridView, (Consumer) new FloatingDebugView$$ExternalSyntheticLambda10());
            EmojiListView emojiListView = this.emojiGridView;
            if (emojiListView != null) {
                emojiListView.invalidate();
                return;
            }
            return;
        }
        if (i == NotificationCenter.starUserGiftsLoaded && ((Long) objArr[0]).longValue() == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            updateRowsDelayed();
        }
    }

    private boolean isAnimatedShow() {
        int i = this.type;
        return (i == 3 || i == 4 || i == 6) ? false : true;
    }

    public void onShow(Runnable runnable) {
        int i;
        Integer num = this.listStateId;
        if (num != null) {
        }
        this.dismiss = runnable;
        if (!this.drawBackground) {
            checkScroll();
            for (int i2 = 0; i2 < this.emojiGridView.getChildCount(); i2++) {
                View childAt = this.emojiGridView.getChildAt(i2);
                childAt.setScaleX(1.0f);
                childAt.setScaleY(1.0f);
            }
            return;
        }
        ValueAnimator valueAnimator = this.showAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.showAnimator = null;
        }
        ValueAnimator valueAnimator2 = this.hideAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.hideAnimator = null;
        }
        if (isAnimatedShow()) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.showAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    this.f$0.lambda$onShow$35(valueAnimator3);
                }
            });
            this.showAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.25
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HwEmojis.disableHw();
                    SelectAnimatedEmojiDialog.this.emojiGridView.setLayerType(0, null);
                    SelectAnimatedEmojiDialog.this.searchBox.setLayerType(0, null);
                    SelectAnimatedEmojiDialog.this.emojiTabsShadow.setLayerType(0, null);
                    SelectAnimatedEmojiDialog.this.backgroundView.setLayerType(0, null);
                    if (SelectAnimatedEmojiDialog.this.bubble2View != null) {
                        SelectAnimatedEmojiDialog.this.bubble2View.setLayerType(0, null);
                    }
                    if (SelectAnimatedEmojiDialog.this.bubble1View != null) {
                        SelectAnimatedEmojiDialog.this.bubble1View.setLayerType(0, null);
                    }
                    SelectAnimatedEmojiDialog.this.searchBox.checkInitialization();
                    SelectAnimatedEmojiDialog.this.emojiTabs.showRecentTabStub(false);
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                    SelectAnimatedEmojiDialog.this.notificationsLocker.unlock();
                    final NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                    Objects.requireNonNull(globalInstance);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$25$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            globalInstance.runDelayedNotifications();
                        }
                    });
                    SelectAnimatedEmojiDialog.this.checkScroll();
                    SelectAnimatedEmojiDialog.this.updateShow(1.0f);
                    for (int i3 = 0; i3 < SelectAnimatedEmojiDialog.this.emojiGridView.getChildCount(); i3++) {
                        View childAt2 = SelectAnimatedEmojiDialog.this.emojiGridView.getChildAt(i3);
                        childAt2.setScaleX(1.0f);
                        childAt2.setScaleY(1.0f);
                    }
                    for (int i4 = 0; i4 < SelectAnimatedEmojiDialog.this.emojiTabs.contentView.getChildCount(); i4++) {
                        View childAt3 = SelectAnimatedEmojiDialog.this.emojiTabs.contentView.getChildAt(i4);
                        childAt3.setScaleX(1.0f);
                        childAt3.setScaleY(1.0f);
                    }
                    SelectAnimatedEmojiDialog.this.emojiTabs.contentView.invalidate();
                    SelectAnimatedEmojiDialog.this.emojiGridViewContainer.invalidate();
                    SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
                }
            });
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onShow$37();
                }
            };
            if (isFirstOpen && (i = this.type) != 5 && i != 10 && i != 7) {
                isFirstOpen = false;
                AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).setUiDbCallback(null);
            }
            HwEmojis.prepare(runnable2, true);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
            this.notificationsLocker.lock();
            this.showAnimator.setDuration(800L);
            this.emojiGridView.setLayerType(2, null);
            this.searchBox.setLayerType(2, null);
            this.emojiTabsShadow.setLayerType(2, null);
            this.backgroundView.setLayerType(2, null);
            View view = this.bubble2View;
            if (view != null) {
                view.setLayerType(2, null);
            }
            View view2 = this.bubble1View;
            if (view2 != null) {
                view2.setLayerType(2, null);
            }
            this.emojiTabs.showRecentTabStub(true);
            updateShow(0.0f);
            return;
        }
        checkScroll();
        updateShow(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShow$35(ValueAnimator valueAnimator) {
        updateShow(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShow$37() {
        HwEmojis.enableHw();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onShow$36();
            }
        }, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onShow$36() {
        this.showAnimator.start();
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class SearchBox extends FrameLayout {
        private FrameLayout box;
        private StickerCategoriesListView categoriesListView;
        private ImageView clear;
        private Runnable delayedToggle;
        private EditTextCaption input;
        private FrameLayout inputBox;
        private View inputBoxGradient;
        private float inputBoxGradientAlpha;
        private ValueAnimator inputBoxGradientAnimator;
        private boolean inputBoxShown;
        private ImageView search;
        private SearchStateDrawable searchStateDrawable;

        public SearchBox(Context context, final boolean z) {
            super(context);
            this.inputBoxShown = false;
            setClickable(true);
            this.box = new FrameLayout(context);
            if (z) {
                setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, SelectAnimatedEmojiDialog.this.resourcesProvider));
            }
            FrameLayout frameLayout = this.box;
            int iM1124dp = AndroidUtilities.m1124dp(18.0f);
            int i = Theme.key_chat_emojiPanelBackground;
            frameLayout.setBackground(Theme.createRoundRectDrawable(iM1124dp, Theme.getColor(i, SelectAnimatedEmojiDialog.this.resourcesProvider)));
            this.box.setClipToOutline(true);
            this.box.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SearchBox.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), AndroidUtilities.m1124dp(18.0f));
                }
            });
            addView(this.box, LayoutHelper.createFrame(-1, 36.0f, 55, 8.0f, 12.0f, 8.0f, 8.0f));
            ImageView imageView = new ImageView(context);
            this.search = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            SearchStateDrawable searchStateDrawable = new SearchStateDrawable();
            this.searchStateDrawable = searchStateDrawable;
            searchStateDrawable.setIconState(0, false);
            SearchStateDrawable searchStateDrawable2 = this.searchStateDrawable;
            int i2 = Theme.key_chat_emojiSearchIcon;
            searchStateDrawable2.setColor(Theme.getColor(i2, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.search.setImageDrawable(this.searchStateDrawable);
            this.search.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            this.box.addView(this.search, LayoutHelper.createFrame(36, 36, 51));
            FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SearchBox.2
                Paint fadePaint;

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    if (!z && SearchBox.this.inputBoxGradientAlpha > 0.0f) {
                        if (this.fadePaint == null) {
                            Paint paint = new Paint();
                            this.fadePaint = paint;
                            paint.setShader(new LinearGradient(0.0f, 0.0f, AndroidUtilities.m1124dp(18.0f), 0.0f, new int[]{-1, 0}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP));
                            this.fadePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
                        }
                        canvas.saveLayerAlpha(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), 255, 31);
                        super.dispatchDraw(canvas);
                        this.fadePaint.setAlpha((int) (SearchBox.this.inputBoxGradientAlpha * 255.0f));
                        canvas.drawRect(0.0f, 0.0f, AndroidUtilities.m1124dp(18.0f), getMeasuredHeight(), this.fadePaint);
                        canvas.restore();
                        return;
                    }
                    super.dispatchDraw(canvas);
                }
            };
            this.inputBox = frameLayout2;
            this.box.addView(frameLayout2, LayoutHelper.createFrame(-1, -1.0f, 119, 36.0f, 0.0f, 0.0f, 0.0f));
            C66393 c66393 = new C66393(context, SelectAnimatedEmojiDialog.this.resourcesProvider, SelectAnimatedEmojiDialog.this);
            this.input = c66393;
            c66393.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SearchBox.4
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    String string = (SearchBox.this.input.getText() == null || AndroidUtilities.trim(SearchBox.this.input.getText(), null).length() == 0) ? null : SearchBox.this.input.getText().toString();
                    SelectAnimatedEmojiDialog.this.search(string);
                    if (SearchBox.this.categoriesListView != null) {
                        SearchBox.this.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                        SearchBox.this.categoriesListView.updateCategoriesShown(TextUtils.isEmpty(string), true);
                    }
                    if (SearchBox.this.input != null) {
                        SearchBox.this.input.clearAnimation();
                        SearchBox.this.input.animate().translationX(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                    }
                    SearchBox.this.showInputBoxGradient(false);
                }
            });
            this.input.setBackground(null);
            this.input.setPadding(0, 0, AndroidUtilities.m1124dp(4.0f), 0);
            this.input.setTextSize(1, 16.0f);
            this.input.setHint(LocaleController.getString(C2888R.string.Search));
            this.input.setHintTextColor(Theme.getColor(i2, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.input.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.input.setImeOptions(268435459);
            this.input.setCursorColor(Theme.getColor(Theme.key_featuredStickers_addedIcon, SelectAnimatedEmojiDialog.this.resourcesProvider));
            this.input.setCursorSize(AndroidUtilities.m1124dp(20.0f));
            this.input.setGravity(19);
            this.input.setCursorWidth(1.5f);
            this.input.setMaxLines(1);
            this.input.setSingleLine(true);
            this.input.setLines(1);
            this.input.setTranslationY(AndroidUtilities.m1124dp(-1.0f));
            this.inputBox.addView(this.input, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 32.0f, 0.0f));
            if (z) {
                this.inputBoxGradient = new View(context);
                Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.gradient_right).mutate();
                drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i, SelectAnimatedEmojiDialog.this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
                this.inputBoxGradient.setBackground(drawableMutate);
                this.inputBoxGradient.setAlpha(0.0f);
                this.inputBox.addView(this.inputBoxGradient, LayoutHelper.createFrame(18, -1, 3));
            }
            setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            ImageView imageView2 = new ImageView(context);
            this.clear = imageView2;
            imageView2.setScaleType(scaleType);
            this.clear.setImageDrawable(new CloseProgressDrawable2(1.25f) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SearchBox.5
                {
                    setSide(AndroidUtilities.m1124dp(7.0f));
                }

                @Override // org.telegram.p029ui.Components.CloseProgressDrawable2
                protected int getCurrentColor() {
                    return Theme.getColor(Theme.key_chat_emojiSearchIcon, SelectAnimatedEmojiDialog.this.resourcesProvider);
                }
            });
            this.clear.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, SelectAnimatedEmojiDialog.this.resourcesProvider), 1, AndroidUtilities.m1124dp(15.0f)));
            this.clear.setAlpha(0.0f);
            this.clear.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(view);
                }
            });
            this.box.addView(this.clear, LayoutHelper.createFrame(36, 36, 53));
            if (HwEmojis.isFirstOpen()) {
                return;
            }
            createCategoriesListView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.searchStateDrawable.getIconState() == 1) {
                this.input.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                SelectAnimatedEmojiDialog.this.search(null, true, false);
                StickerCategoriesListView stickerCategoriesListView = this.categoriesListView;
                if (stickerCategoriesListView != null) {
                    stickerCategoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                    this.categoriesListView.updateCategoriesShown(true, true);
                    this.categoriesListView.scrollToStart();
                }
                this.input.clearAnimation();
                this.input.animate().translationX(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                showInputBoxGradient(false);
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$3 */
        class C66393 extends EditTextCaption {
            final /* synthetic */ SelectAnimatedEmojiDialog val$this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C66393(Context context, Theme.ResourcesProvider resourcesProvider, SelectAnimatedEmojiDialog selectAnimatedEmojiDialog) {
                super(context, resourcesProvider);
                this.val$this$0 = selectAnimatedEmojiDialog;
            }

            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1 && SelectAnimatedEmojiDialog.this.prevWindowKeyboardVisible()) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$3$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onTouchEvent$0();
                        }
                    }, 200L);
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onTouchEvent$0() {
                requestFocus();
            }

            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            protected void onFocusChanged(boolean z, int i, Rect rect) {
                if (z) {
                    SelectAnimatedEmojiDialog.this.onInputFocus();
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$3$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onFocusChanged$1();
                        }
                    }, 200L);
                }
                super.onFocusChanged(z, i, rect);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onFocusChanged$1() {
                AndroidUtilities.showKeyboard(SearchBox.this.input);
            }

            @Override // android.view.View
            public void invalidate() {
                if (HwEmojis.isHwEnabled()) {
                    return;
                }
                super.invalidate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            if (SelectAnimatedEmojiDialog.this.prevWindowKeyboardVisible()) {
                return;
            }
            SelectAnimatedEmojiDialog.this.onInputFocus();
            this.input.requestFocus();
            SelectAnimatedEmojiDialog.this.scrollToPosition(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            this.input.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            SelectAnimatedEmojiDialog.this.search(null, true, false);
            StickerCategoriesListView stickerCategoriesListView = this.categoriesListView;
            if (stickerCategoriesListView != null) {
                stickerCategoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
                this.categoriesListView.updateCategoriesShown(true, true);
            }
            this.input.clearAnimation();
            this.input.animate().translationX(0.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            showInputBoxGradient(false);
        }

        public void checkInitialization() {
            createCategoriesListView();
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0071  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void createCategoriesListView() {
            if (this.categoriesListView != null || getContext() == null) {
                return;
            }
            int i = 2;
            if (SelectAnimatedEmojiDialog.this.type == 1 || SelectAnimatedEmojiDialog.this.type == 11 || SelectAnimatedEmojiDialog.this.type == 2 || SelectAnimatedEmojiDialog.this.type == 0 || SelectAnimatedEmojiDialog.this.type == 12 || SelectAnimatedEmojiDialog.this.type == 4 || SelectAnimatedEmojiDialog.this.type == 10 || SelectAnimatedEmojiDialog.this.type == 9 || SelectAnimatedEmojiDialog.this.type == 14) {
                int i2 = SelectAnimatedEmojiDialog.this.type;
                if (i2 == 0) {
                    i = 1;
                } else if (i2 != 4) {
                    if (i2 != 12) {
                        i = 0;
                    }
                }
                StickerCategoriesListView stickerCategoriesListView = new StickerCategoriesListView(getContext(), i, SelectAnimatedEmojiDialog.this.resourcesProvider) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SearchBox.6
                    @Override // org.telegram.p029ui.Components.StickerCategoriesListView
                    public void selectCategory(int i3) {
                        super.selectCategory(i3);
                        SearchBox.this.updateButton();
                    }

                    @Override // org.telegram.p029ui.Components.StickerCategoriesListView
                    protected boolean isTabIconsAnimationEnabled(boolean z) {
                        return LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_KEYBOARD) || SelectAnimatedEmojiDialog.this.type == 4;
                    }
                };
                this.categoriesListView = stickerCategoriesListView;
                stickerCategoriesListView.setShownButtonsAtStart(SelectAnimatedEmojiDialog.this.type == 4 ? 6.5f : 4.5f);
                this.categoriesListView.setDontOccupyWidth((int) this.input.getPaint().measureText(((Object) this.input.getHint()) + _UrlKt.FRAGMENT_ENCODE_SET));
                this.categoriesListView.setOnScrollIntoOccupiedWidth(new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$createCategoriesListView$3((Integer) obj);
                    }
                });
                this.categoriesListView.setOnCategoryClick(new Utilities.Callback() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda4
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$createCategoriesListView$4((StickerCategoriesListView.EmojiCategory) obj);
                    }
                });
                this.box.addView(this.categoriesListView, LayoutHelper.createFrame(-1, -1.0f, 119, 36.0f, 0.0f, 0.0f, 0.0f));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createCategoriesListView$3(Integer num) {
            this.input.setTranslationX(-Math.max(0, num.intValue()));
            showInputBoxGradient(num.intValue() > 0);
            updateButton();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createCategoriesListView$4(StickerCategoriesListView.EmojiCategory emojiCategory) {
            if (this.categoriesListView.getSelectedCategory() == emojiCategory) {
                SelectAnimatedEmojiDialog.this.search(null, false, false);
                this.categoriesListView.selectCategory((StickerCategoriesListView.EmojiCategory) null);
            } else {
                SelectAnimatedEmojiDialog.this.search(emojiCategory.emojis, false, false);
                this.categoriesListView.selectCategory(emojiCategory);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void toggleClear(boolean z) {
            if (z) {
                if (this.delayedToggle == null) {
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$toggleClear$5();
                        }
                    };
                    this.delayedToggle = runnable;
                    AndroidUtilities.runOnUIThread(runnable, 340L);
                    return;
                }
                return;
            }
            Runnable runnable2 = this.delayedToggle;
            if (runnable2 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable2);
                this.delayedToggle = null;
            }
            AndroidUtilities.updateViewShow(this.clear, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$toggleClear$5() {
            AndroidUtilities.updateViewShow(this.clear, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showInputBoxGradient(boolean z) {
            if (z == this.inputBoxShown) {
                return;
            }
            this.inputBoxShown = z;
            ValueAnimator valueAnimator = this.inputBoxGradientAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.inputBoxGradientAlpha, z ? 1.0f : 0.0f);
            this.inputBoxGradientAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$showInputBoxGradient$6(valueAnimator2);
                }
            });
            this.inputBoxGradientAnimator.setDuration(120L);
            this.inputBoxGradientAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.inputBoxGradientAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showInputBoxGradient$6(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.inputBoxGradientAlpha = fFloatValue;
            View view = this.inputBoxGradient;
            if (view != null) {
                view.setAlpha(fFloatValue);
                return;
            }
            FrameLayout frameLayout = this.inputBox;
            if (frameLayout != null) {
                frameLayout.invalidate();
            }
        }

        public boolean isInProgress() {
            return this.searchStateDrawable.getIconState() == 2;
        }

        public void showProgress(boolean z) {
            if (z) {
                this.searchStateDrawable.setIconState(2);
            } else {
                updateButton(true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateButton() {
            updateButton(false);
        }

        private void updateButton(boolean z) {
            StickerCategoriesListView stickerCategoriesListView;
            StickerCategoriesListView stickerCategoriesListView2;
            if (!isInProgress() || ((this.input.length() == 0 && ((stickerCategoriesListView2 = this.categoriesListView) == null || stickerCategoriesListView2.getSelectedCategory() == null)) || z)) {
                this.searchStateDrawable.setIconState((this.input.length() > 0 || ((stickerCategoriesListView = this.categoriesListView) != null && stickerCategoriesListView.isCategoriesShown() && (this.categoriesListView.isScrolledIntoOccupiedWidth() || this.categoriesListView.getSelectedCategory() != null))) ? 1 : 0);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(52.0f), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void invalidate() {
            if (HwEmojis.grab(this)) {
                return;
            }
            super.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShow(float f) {
        if (this.bubble1View != null) {
            float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(MathUtils.clamp((((f * 800.0f) - 0.0f) / 120.0f) / 1.0f, 0.0f, 1.0f));
            this.bubble1View.setAlpha(interpolation);
            this.bubble1View.setScaleX(interpolation);
            this.bubble1View.setScaleY(interpolation * (isBottom() ? -1 : 1));
        }
        if (this.bubble2View != null) {
            float fClamp = MathUtils.clamp((((f * 800.0f) - 30.0f) / 120.0f) / 1.0f, 0.0f, 1.0f);
            this.bubble2View.setAlpha(fClamp);
            this.bubble2View.setScaleX(fClamp);
            this.bubble2View.setScaleY(fClamp * (isBottom() ? -1 : 1));
        }
        float f2 = 800.0f * f;
        float f3 = f2 - 40.0f;
        float fClamp2 = MathUtils.clamp(f3 / 700.0f, 0.0f, 1.0f);
        float fClamp3 = MathUtils.clamp((f2 - 80.0f) / 700.0f, 0.0f, 1.0f);
        float fClamp4 = MathUtils.clamp(f3 / 750.0f, 0.0f, 1.0f);
        float fClamp5 = MathUtils.clamp((f2 - 30.0f) / 120.0f, 0.0f, 1.0f);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        float interpolation2 = cubicBezierInterpolator.getInterpolation(fClamp2);
        float interpolation3 = cubicBezierInterpolator.getInterpolation(fClamp3);
        this.backgroundView.setAlpha(fClamp5);
        this.searchBox.setAlpha(fClamp5);
        for (int i = 0; i < this.emojiTabs.contentView.getChildCount(); i++) {
            this.emojiTabs.contentView.getChildAt(i).setAlpha(fClamp5);
        }
        if (this.scrimDrawable != null) {
            invalidate();
        }
        float f4 = 1.0f - fClamp5;
        this.contentView.setTranslationY(AndroidUtilities.m1124dp(-5.0f) * f4);
        View view = this.bubble2View;
        if (view != null) {
            view.setTranslationY(AndroidUtilities.m1124dp(-5.0f) * f4);
        }
        this.scaleX = (interpolation2 * 0.85f) + 0.15f;
        this.scaleY = (interpolation3 * 0.925f) + 0.075f;
        this.contentView.invalidateOutline();
        View view2 = this.bubble2View;
        if (view2 != null) {
            view2.setAlpha(fClamp5);
        }
        this.emojiTabsShadow.setAlpha(fClamp5);
        this.emojiTabsShadow.setScaleX(Math.min(this.scaleX, 1.0f));
        float pivotX = this.emojiTabsShadow.getPivotX();
        float fSqrt = (float) Math.sqrt(Math.max(((double) (pivotX * pivotX)) + Math.pow(this.contentView.getHeight(), 2.0d), Math.pow(this.contentView.getWidth() - pivotX, 2.0d) + Math.pow(this.contentView.getHeight(), 2.0d)));
        for (int i2 = 0; i2 < this.emojiTabs.contentView.getChildCount(); i2++) {
            View childAt = this.emojiTabs.contentView.getChildAt(i2);
            if (f == 0.0f) {
                childAt.setLayerType(2, null);
            } else if (f == 1.0f) {
                childAt.setLayerType(0, null);
            }
            float left = (childAt.getLeft() + (childAt.getWidth() / 2.0f)) - pivotX;
            float top = childAt.getTop() + (childAt.getHeight() / 2.0f);
            if (isBottom()) {
                top = getMeasuredHeight() - top;
            }
            float fCascade = AndroidUtilities.cascade(fClamp4, (float) Math.sqrt((left * left) + (top * top * 0.4f)), fSqrt, childAt.getHeight() * 1.75f);
            if (Float.isNaN(fCascade)) {
                fCascade = 0.0f;
            }
            childAt.setScaleX(fCascade);
            childAt.setScaleY(fCascade);
        }
        for (int i3 = 0; i3 < this.emojiGridView.getChildCount(); i3++) {
            View childAt2 = this.emojiGridView.getChildAt(i3);
            if (childAt2 instanceof ImageViewEmoji) {
                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) childAt2;
                float left2 = (childAt2.getLeft() + (childAt2.getWidth() / 2.0f)) - pivotX;
                float top2 = childAt2.getTop() + (childAt2.getHeight() / 2.0f);
                if (isBottom()) {
                    top2 = getMeasuredHeight() - top2;
                }
                float fCascade2 = AndroidUtilities.cascade(fClamp4, (float) Math.sqrt((left2 * left2) + (top2 * top2 * 0.2f)), fSqrt, childAt2.getHeight() * 1.75f);
                if (Float.isNaN(fCascade2)) {
                    fCascade2 = 0.0f;
                }
                imageViewEmoji.setAnimatedScale(fCascade2);
            }
        }
        this.emojiGridViewContainer.invalidate();
        this.emojiGridView.invalidate();
    }

    public void onDismiss(final Runnable runnable) {
        Integer num = this.listStateId;
        if (num != null) {
            listStates.put(num, this.layoutManager.onSaveInstanceState());
        }
        ValueAnimator valueAnimator = this.hideAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.hideAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.hideAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$onDismiss$38(valueAnimator2);
            }
        });
        this.hideAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.26
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                runnable.run();
                if (SelectAnimatedEmojiDialog.this.selectStatusDateDialog != null) {
                    SelectAnimatedEmojiDialog.this.selectStatusDateDialog.dismiss();
                    SelectAnimatedEmojiDialog.this.selectStatusDateDialog = null;
                }
            }
        });
        this.hideAnimator.setDuration(200L);
        this.hideAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.hideAnimator.start();
        SearchBox searchBox = this.searchBox;
        if (searchBox != null) {
            AndroidUtilities.hideKeyboard(searchBox.input);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDismiss$38(ValueAnimator valueAnimator) {
        float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        setTranslationY(AndroidUtilities.m1124dp(8.0f) * (1.0f - fFloatValue));
        View view = this.bubble1View;
        if (view != null) {
            view.setAlpha(fFloatValue);
        }
        View view2 = this.bubble2View;
        if (view2 != null) {
            view2.setAlpha(fFloatValue * fFloatValue);
        }
        this.contentView.setAlpha(fFloatValue);
        this.contentView.invalidate();
        invalidate();
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
        this.contentView.setClipToOutline(z);
        if (!z) {
            this.backgroundView.setVisibility(8);
        } else {
            this.backgroundView.setVisibility(0);
        }
    }

    public void setRecentReactions(List<ReactionsLayoutInBubble.VisibleReaction> list) {
        this.recentReactionsToSet = list;
        updateRows(false, true);
    }

    public void resetBackgroundBitmaps() {
        for (int i = 0; i < this.emojiGridView.lineDrawables.size(); i++) {
            EmojiListView.DrawingInBackgroundLine drawingInBackgroundLine = (EmojiListView.DrawingInBackgroundLine) this.emojiGridView.lineDrawables.get(i);
            for (int i2 = 0; i2 < drawingInBackgroundLine.imageViewEmojis.size(); i2++) {
                if (((ImageViewEmoji) drawingInBackgroundLine.imageViewEmojis.get(i2)).notDraw) {
                    ((ImageViewEmoji) drawingInBackgroundLine.imageViewEmojis.get(i2)).notDraw = false;
                    ((ImageViewEmoji) drawingInBackgroundLine.imageViewEmojis.get(i2)).invalidate();
                    drawingInBackgroundLine.reset();
                }
            }
        }
        this.emojiGridView.invalidate();
        for (int i3 = 0; i3 < this.emojiSearchGridView.lineDrawables.size(); i3++) {
            EmojiListView.DrawingInBackgroundLine drawingInBackgroundLine2 = (EmojiListView.DrawingInBackgroundLine) this.emojiSearchGridView.lineDrawables.get(i3);
            for (int i4 = 0; i4 < drawingInBackgroundLine2.imageViewEmojis.size(); i4++) {
                if (((ImageViewEmoji) drawingInBackgroundLine2.imageViewEmojis.get(i4)).notDraw) {
                    ((ImageViewEmoji) drawingInBackgroundLine2.imageViewEmojis.get(i4)).notDraw = false;
                    ((ImageViewEmoji) drawingInBackgroundLine2.imageViewEmojis.get(i4)).invalidate();
                    drawingInBackgroundLine2.reset();
                }
            }
        }
        this.emojiSearchGridView.invalidate();
    }

    public void setSelected(Long l) {
        this.selectedDocumentIds.clear();
        this.selectedDocumentIds.add(l);
        if (this.emojiGridView != null) {
            for (int i = 0; i < this.emojiGridView.getChildCount(); i++) {
                if (this.emojiGridView.getChildAt(i) instanceof ImageViewEmoji) {
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.emojiGridView.getChildAt(i);
                    AnimatedEmojiSpan animatedEmojiSpan = imageViewEmoji.span;
                    if (animatedEmojiSpan != null) {
                        imageViewEmoji.setViewSelected(this.selectedDocumentIds.contains(Long.valueOf(animatedEmojiSpan.getDocumentId())), true);
                    } else {
                        imageViewEmoji.setViewSelected(this.selectedDocumentIds.contains(0L), true);
                    }
                }
            }
            this.emojiGridView.invalidate();
        }
    }

    public void setMultiSelected(Long l, boolean z) {
        boolean z2;
        if (!this.selectedDocumentIds.contains(l)) {
            this.selectedDocumentIds.add(l);
            z2 = true;
        } else {
            this.selectedDocumentIds.remove(l);
            z2 = false;
        }
        if (this.emojiGridView != null) {
            for (int i = 0; i < this.emojiGridView.getChildCount(); i++) {
                if (this.emojiGridView.getChildAt(i) instanceof ImageViewEmoji) {
                    ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.emojiGridView.getChildAt(i);
                    AnimatedEmojiSpan animatedEmojiSpan = imageViewEmoji.span;
                    if (animatedEmojiSpan != null && animatedEmojiSpan.getDocumentId() == l.longValue()) {
                        imageViewEmoji.setViewSelectedWithScale(z2, z);
                    } else {
                        TLRPC.Document document = imageViewEmoji.document;
                        if (document != null && document.f1668id == l.longValue()) {
                            imageViewEmoji.setViewSelectedWithScale(z2, z);
                        }
                    }
                }
            }
            this.emojiGridView.invalidate();
        }
    }

    public boolean unselect(Long l) {
        this.selectedDocumentIds.remove(l);
        if (this.emojiGridView == null) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.emojiGridView.getChildCount(); i++) {
            if (this.emojiGridView.getChildAt(i) instanceof ImageViewEmoji) {
                ImageViewEmoji imageViewEmoji = (ImageViewEmoji) this.emojiGridView.getChildAt(i);
                AnimatedEmojiSpan animatedEmojiSpan = imageViewEmoji.span;
                if (animatedEmojiSpan != null && animatedEmojiSpan.getDocumentId() == l.longValue()) {
                    imageViewEmoji.unselectWithScale();
                } else {
                    TLRPC.Document document = imageViewEmoji.document;
                    if (document != null && document.f1668id == l.longValue()) {
                        imageViewEmoji.unselectWithScale();
                    }
                }
                z = true;
            }
        }
        this.emojiGridView.invalidate();
        if (!z) {
            for (int i2 = 0; i2 < this.rowHashCodes.size(); i2++) {
                long jLongValue = ((Long) this.rowHashCodes.get(i2)).longValue();
                if (jLongValue == (l.longValue() * 13) + 62425 || jLongValue == (l.longValue() * 13) + 3212) {
                    Adapter adapter = this.adapter;
                    if (adapter != null) {
                        adapter.notifyItemChanged(i2);
                    }
                    return true;
                }
            }
        }
        return z;
    }

    public void clearSelectedDocuments() {
        this.selectedDocumentIds.clear();
    }

    public void setScrimDrawable(AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable, View view) {
        this.scrimColor = (swapAnimatedEmojiDrawable == null || swapAnimatedEmojiDrawable.getColor() == null) ? 0 : swapAnimatedEmojiDrawable.getColor().intValue();
        this.scrimDrawable = swapAnimatedEmojiDrawable;
        this.scrimDrawableParent = view;
        if (this.isAttached && swapAnimatedEmojiDrawable != null) {
            swapAnimatedEmojiDrawable.setSecondParent(this);
        }
        invalidate();
    }

    public void drawBigReaction(Canvas canvas, View view) {
        if (this.selectedReactionView == null) {
            return;
        }
        this.bigReactionImageReceiver.setParentView(view);
        ImageViewEmoji imageViewEmoji = this.selectedReactionView;
        if (imageViewEmoji != null) {
            float f = this.pressedProgress;
            if (f != 1.0f && !this.cancelPressed && this.isLongPressEnabled) {
                float f2 = f + 0.010666667f;
                this.pressedProgress = f2;
                if (f2 >= 1.0f) {
                    this.pressedProgress = 1.0f;
                    onLongPressedListener onlongpressedlistener = this.bigReactionListener;
                    if (onlongpressedlistener != null) {
                        onlongpressedlistener.onLongPressed(imageViewEmoji);
                    }
                }
                this.selectedReactionView.bigReactionSelectedProgress = this.pressedProgress;
            }
            float f3 = (this.pressedProgress * 2.0f) + 1.0f;
            canvas.save();
            canvas.translate(this.emojiGridView.getX() + this.selectedReactionView.getX(), this.gridViewContainer.getY() + this.emojiGridView.getY() + this.selectedReactionView.getY());
            this.paint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, this.resourcesProvider));
            canvas.drawRect(0.0f, 0.0f, this.selectedReactionView.getMeasuredWidth(), this.selectedReactionView.getMeasuredHeight(), this.paint);
            canvas.scale(f3, f3, this.selectedReactionView.getMeasuredWidth() / 2.0f, this.selectedReactionView.getMeasuredHeight());
            ImageViewEmoji imageViewEmoji2 = this.selectedReactionView;
            ImageReceiver imageReceiver = imageViewEmoji2.isDefaultReaction ? this.bigReactionImageReceiver : imageViewEmoji2.imageReceiverToDraw;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.bigReactionAnimatedEmoji;
            if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null && this.bigReactionAnimatedEmoji.getImageReceiver().hasBitmapImage()) {
                imageReceiver = this.bigReactionAnimatedEmoji.getImageReceiver();
            }
            if (imageReceiver != null) {
                imageReceiver.setImageCoords(0.0f, 0.0f, this.selectedReactionView.getMeasuredWidth(), this.selectedReactionView.getMeasuredHeight());
                imageReceiver.draw(canvas);
            }
            canvas.restore();
            view.invalidate();
        }
    }

    public void setSaveState(int i) {
        this.listStateId = Integer.valueOf(i);
    }

    public void setOnLongPressedListener(onLongPressedListener onlongpressedlistener) {
        this.bigReactionListener = onlongpressedlistener;
    }

    public void setOnRecentClearedListener(onRecentClearedListener onrecentclearedlistener) {
        this.onRecentClearedListener = onrecentclearedlistener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes6.dex */
    class SelectStatusDurationDialog extends Dialog {
        private Bitmap blurBitmap;
        private Paint blurBitmapPaint;
        private boolean changeToScrimColor;
        private int clipBottom;
        private ContentView contentView;
        private Rect current;
        private BottomSheet dateBottomSheet;
        private boolean dismissed;
        private boolean done;
        private View emojiPreviewView;
        private Rect from;
        private ImageReceiver imageReceiver;
        private ImageViewEmoji imageViewEmoji;
        private WindowInsets lastInsets;
        private LinearLayout linearLayoutView;
        private ActionBarPopupWindow.ActionBarPopupWindowLayout menuView;
        private Runnable parentDialogDismiss;
        private View parentDialogView;
        private int parentDialogX;
        private int parentDialogY;
        private Theme.ResourcesProvider resourcesProvider;
        private ValueAnimator showAnimator;
        private ValueAnimator showMenuAnimator;
        private float showMenuT;
        private float showT;
        private boolean showing;
        private boolean showingMenu;
        private int[] tempLocation;

        /* JADX INFO: renamed from: to */
        private Rect f2137to;

        protected abstract boolean getOutBounds(Rect rect);

        protected abstract void onEnd(Integer num);

        protected abstract void onEndPartly(Integer num);

        private class ContentView extends FrameLayout {
            public ContentView(Context context) {
                super(context);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (SelectStatusDurationDialog.this.blurBitmap != null && SelectStatusDurationDialog.this.blurBitmapPaint != null) {
                    canvas.save();
                    canvas.scale(12.0f, 12.0f);
                    SelectStatusDurationDialog.this.blurBitmapPaint.setAlpha((int) (SelectStatusDurationDialog.this.showT * 255.0f));
                    canvas.drawBitmap(SelectStatusDurationDialog.this.blurBitmap, 0.0f, 0.0f, SelectStatusDurationDialog.this.blurBitmapPaint);
                    canvas.restore();
                }
                super.dispatchDraw(canvas);
                if (SelectStatusDurationDialog.this.imageViewEmoji != null) {
                    Drawable drawable = SelectStatusDurationDialog.this.imageViewEmoji.drawable;
                    if (drawable != null) {
                        if (SelectStatusDurationDialog.this.changeToScrimColor) {
                            drawable.setColorFilter(new PorterDuffColorFilter(ColorUtils.blendARGB(SelectAnimatedEmojiDialog.this.scrimColor, SelectAnimatedEmojiDialog.this.accentColor, SelectStatusDurationDialog.this.showT), PorterDuff.Mode.MULTIPLY));
                        } else {
                            drawable.setColorFilter(SelectAnimatedEmojiDialog.this.premiumStarColorFilter);
                        }
                        drawable.setAlpha((int) ((1.0f - SelectStatusDurationDialog.this.showT) * 255.0f));
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(SelectStatusDurationDialog.this.current);
                        float fMax = (SelectStatusDurationDialog.this.imageViewEmoji.pressedProgress != 0.0f || SelectStatusDurationDialog.this.imageViewEmoji.selectedProgress > 0.0f) ? (((1.0f - Math.max(SelectStatusDurationDialog.this.imageViewEmoji.selectedProgress * 0.8f, SelectStatusDurationDialog.this.imageViewEmoji.pressedProgress)) * 0.2f) + 0.8f) * 1.0f : 1.0f;
                        Rect rect = AndroidUtilities.rectTmp2;
                        rect.set((int) (rectF.centerX() - ((rectF.width() / 2.0f) * fMax)), (int) (rectF.centerY() - ((rectF.height() / 2.0f) * fMax)), (int) (rectF.centerX() + ((rectF.width() / 2.0f) * fMax)), (int) (rectF.centerY() + ((rectF.height() / 2.0f) * fMax)));
                        float f = 1.0f - ((1.0f - SelectStatusDurationDialog.this.imageViewEmoji.skewAlpha) * (1.0f - SelectStatusDurationDialog.this.showT));
                        canvas.save();
                        if (f < 1.0f) {
                            canvas.translate(rect.left, rect.top);
                            canvas.scale(1.0f, f, 0.0f, 0.0f);
                            canvas.skew((1.0f - ((SelectStatusDurationDialog.this.imageViewEmoji.skewIndex * 2.0f) / 8.0f)) * (1.0f - f), 0.0f);
                            canvas.translate(-rect.left, -rect.top);
                        }
                        canvas.clipRect(0.0f, 0.0f, getWidth(), SelectStatusDurationDialog.this.clipBottom + (SelectStatusDurationDialog.this.showT * AndroidUtilities.m1124dp(45.0f)));
                        drawable.setBounds(rect);
                        drawable.draw(canvas);
                        canvas.restore();
                        if (SelectStatusDurationDialog.this.imageViewEmoji.skewIndex == 0) {
                            rect.offset(AndroidUtilities.m1124dp(f * 8.0f), 0);
                        } else if (SelectStatusDurationDialog.this.imageViewEmoji.skewIndex == 1) {
                            rect.offset(AndroidUtilities.m1124dp(f * 4.0f), 0);
                        } else if (SelectStatusDurationDialog.this.imageViewEmoji.skewIndex == 6) {
                            rect.offset(-AndroidUtilities.m1124dp(f * (-4.0f)), 0);
                        } else if (SelectStatusDurationDialog.this.imageViewEmoji.skewIndex == 7) {
                            rect.offset(AndroidUtilities.m1124dp(f * (-8.0f)), 0);
                        }
                        canvas2 = canvas;
                        canvas2.saveLayerAlpha(rect.left, rect.top, rect.right, rect.bottom, (int) ((1.0f - SelectStatusDurationDialog.this.showT) * 255.0f), 31);
                        canvas2.clipRect(rect);
                        canvas2.translate((int) (SelectAnimatedEmojiDialog.this.bottomGradientView.getX() + SelectAnimatedEmojiDialog.this.contentView.getX() + SelectStatusDurationDialog.this.parentDialogX), ((int) SelectAnimatedEmojiDialog.this.bottomGradientView.getY()) + SelectAnimatedEmojiDialog.this.contentView.getY() + SelectStatusDurationDialog.this.parentDialogY);
                        SelectAnimatedEmojiDialog.this.bottomGradientView.draw(canvas2);
                        canvas2.restore();
                    } else {
                        canvas2 = canvas;
                        if (SelectStatusDurationDialog.this.imageViewEmoji.isDefaultReaction && SelectStatusDurationDialog.this.imageViewEmoji.imageReceiver != null) {
                            SelectStatusDurationDialog.this.imageViewEmoji.imageReceiver.setAlpha(1.0f - SelectStatusDurationDialog.this.showT);
                            SelectStatusDurationDialog.this.imageViewEmoji.imageReceiver.setImageCoords(SelectStatusDurationDialog.this.current);
                            SelectStatusDurationDialog.this.imageViewEmoji.imageReceiver.draw(canvas2);
                        }
                    }
                } else {
                    canvas2 = canvas;
                }
                if (SelectStatusDurationDialog.this.imageReceiver != null) {
                    SelectStatusDurationDialog.this.imageReceiver.setAlpha(SelectStatusDurationDialog.this.showT);
                    SelectStatusDurationDialog.this.imageReceiver.setImageCoords(SelectStatusDurationDialog.this.current);
                    SelectStatusDurationDialog.this.imageReceiver.draw(canvas2);
                }
            }

            @Override // android.view.View
            protected void onConfigurationChanged(Configuration configuration) {
                SelectStatusDurationDialog.this.lastInsets = null;
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                if (SelectStatusDurationDialog.this.imageReceiver != null) {
                    SelectStatusDurationDialog.this.imageReceiver.onAttachedToWindow();
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                if (SelectStatusDurationDialog.this.imageReceiver != null) {
                    SelectStatusDurationDialog.this.imageReceiver.onDetachedFromWindow();
                }
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                Activity parentActivity = SelectStatusDurationDialog.this.getParentActivity();
                if (parentActivity == null) {
                    return;
                }
                View decorView = parentActivity.getWindow().getDecorView();
                if (SelectStatusDurationDialog.this.blurBitmap != null && SelectStatusDurationDialog.this.blurBitmap.getWidth() == decorView.getMeasuredWidth() && SelectStatusDurationDialog.this.blurBitmap.getHeight() == decorView.getMeasuredHeight()) {
                    return;
                }
                SelectStatusDurationDialog.this.prepareBlurBitmap();
            }
        }

        public SelectStatusDurationDialog(final Context context, Runnable runnable, View view, ImageViewEmoji imageViewEmoji, Theme.ResourcesProvider resourcesProvider) {
            ImageLocation forDocument;
            String str;
            super(context);
            this.from = new Rect();
            this.f2137to = new Rect();
            this.current = new Rect();
            this.tempLocation = new int[2];
            this.done = false;
            this.dismissed = false;
            this.imageViewEmoji = imageViewEmoji;
            this.resourcesProvider = resourcesProvider;
            this.parentDialogDismiss = runnable;
            this.parentDialogView = view;
            ContentView contentView = new ContentView(context);
            this.contentView = contentView;
            setContentView(contentView, new ViewGroup.LayoutParams(-1, -1));
            LinearLayout linearLayout = new LinearLayout(context);
            this.linearLayoutView = linearLayout;
            linearLayout.setOrientation(1);
            View view2 = new View(context) { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog.1
                @Override // android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    super.onLayout(z, i, i2, i3, i4);
                    getLocationOnScreen(SelectStatusDurationDialog.this.tempLocation);
                    SelectStatusDurationDialog.this.f2137to.set(SelectStatusDurationDialog.this.tempLocation[0], SelectStatusDurationDialog.this.tempLocation[1], SelectStatusDurationDialog.this.tempLocation[0] + getWidth(), SelectStatusDurationDialog.this.tempLocation[1] + getHeight());
                    AndroidUtilities.lerp(SelectStatusDurationDialog.this.from, SelectStatusDurationDialog.this.f2137to, SelectStatusDurationDialog.this.showT, SelectStatusDurationDialog.this.current);
                }
            };
            this.emojiPreviewView = view2;
            this.linearLayoutView.addView(view2, LayoutHelper.createLinear(160, 160, 17, 0, 0, 0, 16));
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context, C2888R.drawable.popup_fixed_alert2, resourcesProvider);
            this.menuView = actionBarPopupWindowLayout;
            this.linearLayoutView.addView(actionBarPopupWindowLayout, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 0, 0));
            ActionBarMenuItem.addItem(true, false, this.menuView, 0, LocaleController.getString(C2888R.string.SetEmojiStatusUntil1Hour), false, resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$0(view3);
                }
            });
            ActionBarMenuItem.addItem(false, false, this.menuView, 0, LocaleController.getString(C2888R.string.SetEmojiStatusUntil2Hours), false, resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$1(view3);
                }
            });
            ActionBarMenuItem.addItem(false, false, this.menuView, 0, LocaleController.getString(C2888R.string.SetEmojiStatusUntil8Hours), false, resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$2(view3);
                }
            });
            ActionBarMenuItem.addItem(false, false, this.menuView, 0, LocaleController.getString(C2888R.string.SetEmojiStatusUntil2Days), false, resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$3(view3);
                }
            });
            ActionBarMenuItem.addItem(false, true, this.menuView, 0, LocaleController.getString(C2888R.string.SetEmojiStatusUntilOther), false, resourcesProvider).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f$0.lambda$new$6(context, view3);
                }
            });
            this.contentView.addView(this.linearLayoutView, LayoutHelper.createFrame(-2, -2, 17));
            Window window = getWindow();
            if (window != null) {
                window.setWindowAnimations(C2888R.style.DialogNoAnimation);
                window.setBackgroundDrawable(null);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.width = -1;
                attributes.gravity = 51;
                attributes.dimAmount = 0.0f;
                attributes.flags = (attributes.flags & (-3)) | (-2147286784);
                this.contentView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view3, WindowInsets windowInsets) {
                        return this.f$0.lambda$new$7(view3, windowInsets);
                    }
                });
                attributes.flags |= 1024;
                this.contentView.setFitsSystemWindows(true);
                this.contentView.setSystemUiVisibility(1284);
                attributes.height = -1;
                if (Build.VERSION.SDK_INT >= 28) {
                    attributes.layoutInDisplayCutoutMode = 1;
                }
                window.setAttributes(attributes);
            }
            if (imageViewEmoji != null) {
                imageViewEmoji.notDraw = true;
            }
            prepareBlurBitmap();
            ImageReceiver imageReceiver = new ImageReceiver();
            this.imageReceiver = imageReceiver;
            imageReceiver.setParentView(this.contentView);
            this.imageReceiver.setLayerNum(7);
            TLRPC.Document document = imageViewEmoji.document;
            if (document == null) {
                Drawable drawable = imageViewEmoji.drawable;
                if (drawable instanceof AnimatedEmojiDrawable) {
                    document = ((AnimatedEmojiDrawable) drawable).getDocument();
                }
            }
            if (document != null) {
                SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document.thumbs, Theme.key_windowBackgroundWhiteGrayIcon, 0.2f);
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                if ("video/webm".equals(document.mime_type)) {
                    forDocument = ImageLocation.getForDocument(document);
                    String str2 = "160_160_" + ImageLoader.AUTOPLAY_FILTER;
                    if (svgThumb != null) {
                        svgThumb.overrideWidthAndHeight(512, 512);
                    }
                    str = str2;
                } else {
                    if (svgThumb != null && MessageObject.isAnimatedStickerDocument(document, false)) {
                        svgThumb.overrideWidthAndHeight(512, 512);
                    }
                    forDocument = ImageLocation.getForDocument(document);
                    str = "160_160";
                }
                TLRPC.Document document2 = document;
                this.imageReceiver.setImage(forDocument, str, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), "160_160", null, null, svgThumb, document.size, null, document2, 1);
                if ((imageViewEmoji.drawable instanceof AnimatedEmojiDrawable) && (MessageObject.isTextColorEmoji(document2) || ((AnimatedEmojiDrawable) imageViewEmoji.drawable).canOverrideColor())) {
                    this.imageReceiver.setColorFilter((MessageObject.isTextColorEmoji(document2) || AnimatedEmojiDrawable.isDefaultStatusEmoji((AnimatedEmojiDrawable) imageViewEmoji.drawable)) ? SelectAnimatedEmojiDialog.this.premiumStarColorFilter : Theme.getAnimatedEmojiColorFilter(resourcesProvider));
                }
            }
            imageViewEmoji.getLocationOnScreen(this.tempLocation);
            this.from.left = this.tempLocation[0] + imageViewEmoji.getPaddingLeft();
            this.from.top = this.tempLocation[1] + imageViewEmoji.getPaddingTop();
            this.from.right = (this.tempLocation[0] + imageViewEmoji.getWidth()) - imageViewEmoji.getPaddingRight();
            this.from.bottom = (this.tempLocation[1] + imageViewEmoji.getHeight()) - imageViewEmoji.getPaddingBottom();
            AndroidUtilities.lerp(this.from, this.f2137to, this.showT, this.current);
            view.getLocationOnScreen(this.tempLocation);
            int[] iArr = this.tempLocation;
            this.parentDialogX = iArr[0];
            int i = iArr[1];
            this.parentDialogY = i;
            this.clipBottom = i + view.getHeight();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            done(Integer.valueOf((int) ((System.currentTimeMillis() / 1000) + 3600)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(View view) {
            done(Integer.valueOf((int) ((System.currentTimeMillis() / 1000) + 7200)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$2(View view) {
            done(Integer.valueOf((int) ((System.currentTimeMillis() / 1000) + 28800)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$3(View view) {
            done(Integer.valueOf((int) ((System.currentTimeMillis() / 1000) + 172800)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$6(Context context, View view) {
            if (this.dateBottomSheet != null) {
                return;
            }
            final boolean[] zArr = new boolean[1];
            BottomSheet.Builder builderCreateStatusUntilDatePickerDialog = AlertsCreator.createStatusUntilDatePickerDialog(context, System.currentTimeMillis() / 1000, new AlertsCreator.StatusUntilDatePickerDelegate() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda10
                @Override // org.telegram.ui.Components.AlertsCreator.StatusUntilDatePickerDelegate
                public final void didSelectDate(int i) {
                    this.f$0.lambda$new$4(zArr, i);
                }
            });
            builderCreateStatusUntilDatePickerDialog.setOnPreDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda11
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$new$5(zArr, dialogInterface);
                }
            });
            this.dateBottomSheet = builderCreateStatusUntilDatePickerDialog.show();
            animateMenuShow(false, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$4(boolean[] zArr, int i) {
            zArr[0] = true;
            done(Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$5(boolean[] zArr, DialogInterface dialogInterface) {
            if (!zArr[0]) {
                animateMenuShow(true, null);
            }
            this.dateBottomSheet = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ WindowInsets lambda$new$7(View view, WindowInsets windowInsets) {
            this.lastInsets = windowInsets;
            view.requestLayout();
            return Build.VERSION.SDK_INT >= 30 ? WindowInsets.CONSUMED : windowInsets.consumeSystemWindowInsets();
        }

        private void done(final Integer num) {
            Runnable runnable;
            if (this.done) {
                return;
            }
            this.done = true;
            boolean z = num != null && getOutBounds(this.from);
            this.changeToScrimColor = z;
            if (z) {
                this.parentDialogView.getLocationOnScreen(this.tempLocation);
                Rect rect = this.from;
                int[] iArr = this.tempLocation;
                rect.offset(iArr[0], iArr[1]);
            } else {
                this.imageViewEmoji.getLocationOnScreen(this.tempLocation);
                this.from.left = this.tempLocation[0] + this.imageViewEmoji.getPaddingLeft();
                this.from.top = this.tempLocation[1] + this.imageViewEmoji.getPaddingTop();
                this.from.right = (this.tempLocation[0] + this.imageViewEmoji.getWidth()) - this.imageViewEmoji.getPaddingRight();
                this.from.bottom = (this.tempLocation[1] + this.imageViewEmoji.getHeight()) - this.imageViewEmoji.getPaddingBottom();
            }
            if (num != null && (runnable = this.parentDialogDismiss) != null) {
                runnable.run();
            }
            animateShow(false, new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$done$8(num);
                }
            }, new Runnable() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$done$9(num);
                }
            }, !z);
            animateMenuShow(false, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$done$8(Integer num) {
            onEnd(num);
            try {
                super.dismiss();
            } catch (Exception unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$done$9(Integer num) {
            if (num != null) {
                try {
                    SelectAnimatedEmojiDialog.this.performHapticFeedback(VibratorUtils.getType(0), 1);
                } catch (Exception unused) {
                }
                onEndPartly(num);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Activity getParentActivity() {
            for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void prepareBlurBitmap() {
            Activity parentActivity = getParentActivity();
            if (parentActivity == null) {
                return;
            }
            View decorView = parentActivity.getWindow().getDecorView();
            int measuredWidth = (int) (decorView.getMeasuredWidth() / 12.0f);
            int measuredHeight = (int) (decorView.getMeasuredHeight() / 12.0f);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.scale(0.083333336f, 0.083333336f);
            canvas.drawColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            decorView.draw(canvas);
            if (parentActivity instanceof LaunchActivity) {
                LaunchActivity launchActivity = (LaunchActivity) parentActivity;
                if (launchActivity.getActionBarLayout().getLastFragment().getVisibleDialog() != null) {
                    launchActivity.getActionBarLayout().getLastFragment().getVisibleDialog().getWindow().getDecorView().draw(canvas);
                }
            }
            View view = this.parentDialogView;
            if (view != null) {
                view.getLocationOnScreen(this.tempLocation);
                canvas.save();
                int[] iArr = this.tempLocation;
                canvas.translate(iArr[0], iArr[1]);
                this.parentDialogView.draw(canvas);
                canvas.restore();
            }
            Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(10, Math.max(measuredWidth, measuredHeight) / 180));
            this.blurBitmapPaint = new Paint(1);
            this.blurBitmap = bitmapCreateBitmap;
        }

        private void animateShow(final boolean z, final Runnable runnable, final Runnable runnable2, final boolean z2) {
            if (this.imageViewEmoji == null) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator = this.showAnimator;
            if (valueAnimator != null) {
                if (this.showing == z) {
                    return;
                } else {
                    valueAnimator.cancel();
                }
            }
            this.showing = z;
            if (z) {
                this.imageViewEmoji.notDraw = true;
            }
            final boolean[] zArr = new boolean[1];
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.showT, z ? 1.0f : 0.0f);
            this.showAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateShow$10(z, z2, runnable2, zArr, valueAnimator2);
                }
            });
            this.showAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Runnable runnable3;
                    SelectStatusDurationDialog.this.showT = z ? 1.0f : 0.0f;
                    AndroidUtilities.lerp(SelectStatusDurationDialog.this.from, SelectStatusDurationDialog.this.f2137to, SelectStatusDurationDialog.this.showT, SelectStatusDurationDialog.this.current);
                    SelectStatusDurationDialog.this.contentView.invalidate();
                    if (!z) {
                        SelectStatusDurationDialog.this.menuView.setAlpha(SelectStatusDurationDialog.this.showT);
                    }
                    if (SelectStatusDurationDialog.this.showT < 0.5f && !z && (runnable3 = runnable2) != null) {
                        boolean[] zArr2 = zArr;
                        if (!zArr2[0]) {
                            zArr2[0] = true;
                            runnable3.run();
                        }
                    }
                    if (!z) {
                        if (z2) {
                            SelectStatusDurationDialog.this.imageViewEmoji.notDraw = false;
                            SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
                        }
                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 4);
                    }
                    SelectStatusDurationDialog.this.showAnimator = null;
                    SelectStatusDurationDialog.this.contentView.invalidate();
                    Runnable runnable4 = runnable;
                    if (runnable4 != null) {
                        runnable4.run();
                    }
                }
            });
            this.showAnimator.setDuration(420L);
            this.showAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.showAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateShow$10(boolean z, boolean z2, Runnable runnable, boolean[] zArr, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.showT = fFloatValue;
            AndroidUtilities.lerp(this.from, this.f2137to, fFloatValue, this.current);
            this.contentView.invalidate();
            if (!z) {
                this.menuView.setAlpha(this.showT);
            }
            if (this.showT < 0.025f && !z) {
                if (z2) {
                    this.imageViewEmoji.notDraw = false;
                    SelectAnimatedEmojiDialog.this.emojiGridView.invalidate();
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 4);
            }
            if (this.showT >= 0.5f || z || runnable == null || zArr[0]) {
                return;
            }
            zArr[0] = true;
            runnable.run();
        }

        private void animateMenuShow(final boolean z, final Runnable runnable) {
            ValueAnimator valueAnimator = this.showMenuAnimator;
            if (valueAnimator != null) {
                if (this.showingMenu == z) {
                    return;
                } else {
                    valueAnimator.cancel();
                }
            }
            this.showingMenu = z;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.showMenuT, z ? 1.0f : 0.0f);
            this.showMenuAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$SelectStatusDurationDialog$$ExternalSyntheticLambda6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateMenuShow$11(valueAnimator2);
                }
            });
            this.showMenuAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog.SelectStatusDurationDialog.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SelectStatusDurationDialog.this.showMenuT = z ? 1.0f : 0.0f;
                    SelectStatusDurationDialog.this.menuView.setBackScaleY(SelectStatusDurationDialog.this.showMenuT);
                    SelectStatusDurationDialog.this.menuView.setAlpha(CubicBezierInterpolator.EASE_OUT.getInterpolation(SelectStatusDurationDialog.this.showMenuT));
                    int itemsCount = SelectStatusDurationDialog.this.menuView.getItemsCount();
                    for (int i = 0; i < itemsCount; i++) {
                        float fCascade = AndroidUtilities.cascade(SelectStatusDurationDialog.this.showMenuT, i, itemsCount, 4.0f);
                        SelectStatusDurationDialog.this.menuView.getItemAt(i).setTranslationY((1.0f - fCascade) * AndroidUtilities.m1124dp(-12.0f));
                        SelectStatusDurationDialog.this.menuView.getItemAt(i).setAlpha(fCascade);
                    }
                    SelectStatusDurationDialog.this.showMenuAnimator = null;
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
            if (z) {
                this.showMenuAnimator.setDuration(360L);
                this.showMenuAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                this.showMenuAnimator.setDuration(240L);
                this.showMenuAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            }
            this.showMenuAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateMenuShow$11(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.showMenuT = fFloatValue;
            this.menuView.setBackScaleY(fFloatValue);
            this.menuView.setAlpha(CubicBezierInterpolator.EASE_OUT.getInterpolation(this.showMenuT));
            int itemsCount = this.menuView.getItemsCount();
            for (int i = 0; i < itemsCount; i++) {
                float fCascade = AndroidUtilities.cascade(this.showMenuT, i, itemsCount, 4.0f);
                this.menuView.getItemAt(i).setTranslationY((1.0f - fCascade) * AndroidUtilities.m1124dp(-12.0f));
                this.menuView.getItemAt(i).setAlpha(fCascade);
            }
        }

        @Override // android.app.Dialog, android.view.Window.Callback
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            if (zDispatchTouchEvent || motionEvent.getAction() != 0) {
                return zDispatchTouchEvent;
            }
            dismiss();
            return false;
        }

        @Override // android.app.Dialog
        public void show() {
            super.show();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 4);
            animateShow(true, null, null, true);
            animateMenuShow(true, null);
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            if (this.dismissed) {
                return;
            }
            done(null);
            this.dismissed = true;
        }
    }

    public void setForumIconDrawable(Drawable drawable) {
        this.forumIconDrawable = drawable;
        ImageViewEmoji imageViewEmoji = this.forumIconImage;
        if (imageViewEmoji != null) {
            imageViewEmoji.imageReceiver.setImageBitmap(drawable);
        }
    }

    public void setAnimationsEnabled(boolean z) {
        this.animationsEnabled = z;
    }

    public void setEnterAnimationInProgress(boolean z) {
        if (this.enterAnimationInProgress != z) {
            this.enterAnimationInProgress = z;
            if (z) {
                return;
            }
            AndroidUtilities.forEachViews((RecyclerView) this.emojiGridView, new Consumer() { // from class: org.telegram.ui.SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    SelectAnimatedEmojiDialog.m17914$r8$lambda$bTA3rK6zIUa_j7C0Nn868du0l0((View) obj);
                }
            });
            for (int i = 0; i < this.emojiTabs.contentView.getChildCount(); i++) {
                View childAt = this.emojiTabs.contentView.getChildAt(i);
                childAt.setScaleX(1.0f);
                childAt.setScaleY(1.0f);
            }
            this.emojiTabs.contentView.invalidate();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$b-TA3rK6zIUa_j7C0Nn868du0l0, reason: not valid java name */
    public static /* synthetic */ void m17914$r8$lambda$bTA3rK6zIUa_j7C0Nn868du0l0(View view) {
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
    }

    public void setBackgroundDelegate(BackgroundDelegate backgroundDelegate) {
        this.backgroundDelegate = backgroundDelegate;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class SetTitleDocument extends TLRPC.Document {
        public final CharSequence title;

        public SetTitleDocument(CharSequence charSequence) {
            this.title = charSequence;
        }
    }

    private ArrayList filter(ArrayList arrayList, HashSet hashSet) {
        if (hashSet == null) {
            return arrayList;
        }
        int i = 0;
        while (i < arrayList.size()) {
            TLRPC.Document document = (TLRPC.Document) arrayList.get(i);
            if (document == null || hashSet.contains(Long.valueOf(document.f1668id))) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        return arrayList;
    }

    public long getDialogId() {
        return UserConfig.getInstance(this.currentAccount).getClientUserId();
    }
}
