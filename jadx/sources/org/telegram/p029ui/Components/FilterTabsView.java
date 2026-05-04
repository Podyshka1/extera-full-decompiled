package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Property;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.p017ui.FolderIcons;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimationProperties;
import org.telegram.p029ui.Components.FilterTabsView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.Stories.recorder.HintView2;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class FilterTabsView extends FrameLayout {
    private final Property COLORS;
    private int aActiveTextColorKey;
    private int aBackgroundColorKey;
    private int aTabLineColorKey;
    private int aUnactiveTextColorKey;
    private int activeTextColorKey;
    private final ListAdapter adapter;
    private int additionalTabWidth;
    private int allTabsWidth;
    private boolean animatingIndicator;
    private float animatingIndicatorProgress;
    private final Runnable animationRunnable;
    private float animationTime;
    private float animationValue;
    private int backgroundColorKey;
    BlurredBackgroundDrawable blurredBackgroundDrawable;
    private final Path clipPath;
    private AnimatorSet colorChangeAnimator;
    private final Paint counterPaint;
    private int currentPosition;
    private FilterTabsViewDelegate delegate;
    private final Paint deletePaint;
    private float editingAnimationProgress;
    private boolean editingForwardAnimation;
    private float editingStartAnimationProgress;
    private ColorFilter emojiColorFilter;
    private final SparseIntArray idToPosition;
    private boolean ignoreLayout;
    private final CubicBezierInterpolator interpolator;
    private boolean invalidated;
    private boolean isEditing;
    private boolean isStaticAllChats;
    DefaultItemAnimator itemAnimator;
    private long lastAnimationTime;
    private long lastEditingAnimationTime;
    private final LinearLayoutManager layoutManager;
    private final RecyclerListView listView;
    private final int listViewPaddingH;
    private Drawable lockDrawable;
    private int lockDrawableColor;
    private int manualScrollingToId;
    private int manualScrollingToPosition;
    private int oldAnimatedTab;
    private boolean orderChanged;
    private final SparseIntArray positionToCount;
    private final SparseIntArray positionToId;
    private final SparseIntArray positionToStableId;
    private final SparseIntArray positionToWidth;
    private final SparseIntArray positionToX;
    private int prevLayoutWidth;
    private int previousId;
    private int previousPosition;
    private final Theme.ResourcesProvider resourcesProvider;
    private int scrollingToChild;
    private int selectedTabId;
    private int selectorColorKey;
    private final GradientDrawable selectorDrawable;
    private int tabLineColorKey;
    private final ArrayList tabs;
    private final TextPaint textCounterPaint;
    public final TextPaint textPaint;
    private int unactiveTextColorKey;

    public static /* synthetic */ void $r8$lambda$LUlLhaIciS00vlgmp_dSDwB023s(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    protected void onDefaultTabMoved() {
    }

    public int getCurrentTabStableId() {
        return this.positionToStableId.get(this.currentPosition, -1);
    }

    public int getStableId(int i) {
        return this.positionToStableId.get(i, -1);
    }

    public boolean selectTabWithStableId(int i) {
        for (int i2 = 0; i2 < this.tabs.size(); i2++) {
            if (this.positionToStableId.get(i2, -1) == i) {
                this.currentPosition = i2;
                this.selectedTabId = this.positionToId.get(i2);
                return true;
            }
        }
        return false;
    }

    public interface FilterTabsViewDelegate {
        boolean canPerformActions();

        boolean didSelectTab(TabView tabView, boolean z);

        int getTabCounter(int i);

        boolean isTabMenuVisible();

        void onDeletePressed(int i);

        void onPageReorder(int i, int i2);

        void onPageScrolled(float f);

        void onPageSelected(Tab tab, boolean z);

        void onSamePageSelected();

        void onTabSelected(Tab tab, boolean z, boolean z2);

        /* JADX INFO: renamed from: org.telegram.ui.Components.FilterTabsView$FilterTabsViewDelegate$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onTabSelected(FilterTabsViewDelegate filterTabsViewDelegate, Tab tab, boolean z, boolean z2) {
            }
        }
    }

    public class Tab {
        public int counter;
        public String emoticon;
        public int iconWidth;

        /* JADX INFO: renamed from: id */
        public int f1960id;
        public boolean isDefault;
        public boolean isLocked;
        public boolean noanimate;
        public CharSequence realTitle;
        public CharSequence title;
        public int titleWidth;

        public Tab(int i, CharSequence charSequence, String str, boolean z) {
            this.f1960id = i;
            this.title = ExteraConfig.tabIcons != 2 ? charSequence : _UrlKt.FRAGMENT_ENCODE_SET;
            this.realTitle = charSequence;
            this.noanimate = z;
            this.emoticon = str;
        }

        public int getWidth(boolean z) {
            int tabCounter;
            int iMax;
            this.iconWidth = FolderIcons.getTotalIconWidth();
            int iCeil = (int) Math.ceil(HintView2.measureCorrectly(this.title, FilterTabsView.this.textPaint));
            this.titleWidth = iCeil;
            int i = iCeil + this.iconWidth;
            int iM1124dp = 0;
            if (z) {
                tabCounter = FilterTabsView.this.delegate.getTabCounter(this.f1960id);
                if (tabCounter < 0) {
                    tabCounter = 0;
                }
                if (z) {
                    this.counter = tabCounter;
                }
            } else {
                tabCounter = this.counter;
            }
            if (tabCounter > 0) {
                iMax = Math.max(AndroidUtilities.m1124dp(7.333f), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(tabCounter))))) + AndroidUtilities.m1124dp(10.0f) + AndroidUtilities.m1124dp(-2.0f);
            } else {
                if (!this.isDefault && FilterTabsView.this.isEditing) {
                    iM1124dp = AndroidUtilities.m1124dp(12.333f);
                }
                iMax = iM1124dp;
            }
            return Math.max(AndroidUtilities.m1124dp(16.0f), i + iMax);
        }

        public boolean setTitle(String str, ArrayList arrayList, boolean z) {
            if (TextUtils.equals(this.realTitle, str)) {
                return false;
            }
            this.realTitle = str;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            this.title = spannableStringBuilder;
            CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(spannableStringBuilder, FilterTabsView.this.textPaint.getFontMetricsInt(), false);
            this.title = charSequenceReplaceEmoji;
            CharSequence charSequenceReplaceAnimatedEmoji = MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, arrayList, FilterTabsView.this.textPaint.getFontMetricsInt());
            this.title = charSequenceReplaceAnimatedEmoji;
            if (ExteraConfig.tabIcons == 2) {
                charSequenceReplaceAnimatedEmoji = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            this.title = charSequenceReplaceAnimatedEmoji;
            this.noanimate = z;
            return true;
        }
    }

    public class TabView extends View {
        public boolean animateChange;
        public boolean animateCounterChange;
        private float animateFromCountWidth;
        private float animateFromCounterWidth;
        private int animateFromIconWidth;
        float animateFromIconX;
        int animateFromTabCount;
        private float animateFromTabWidth;
        float animateFromTextX;
        private int animateFromTitleWidth;
        private float animateFromWidth;
        private boolean animateIconChange;
        private boolean animateIconWidth;
        boolean animateIconX;
        boolean animateTabCounter;
        private boolean animateTabWidth;
        private boolean animateTextChange;
        private boolean animateTextChangeOut;
        boolean animateTextX;
        private boolean attached;
        public ValueAnimator changeAnimator;
        public float changeProgress;
        private String currentEmoticon;
        private boolean currentNoanimate;
        private int currentPosition;
        private Tab currentTab;
        private CharSequence currentText;
        private Drawable icon;
        private Drawable iconAnimateInDrawable;
        private Drawable iconAnimateOutDrawable;
        StaticLayout inCounter;
        private int lastCountWidth;
        private float lastCounterWidth;
        String lastEmoticon;
        private int lastIconWidth;
        float lastIconX;
        int lastTabCount;
        private float lastTabWidth;
        float lastTextX;
        CharSequence lastTitle;
        StaticLayout lastTitleLayout;
        private int lastTitleWidth;
        private float lastWidth;
        private float locIconXOffset;
        StaticLayout outCounter;
        private float progressToLocked;
        private final RectF rect;
        StaticLayout stableCounter;
        private float tabCounterVisible;
        private int tabWidth;
        private int textHeight;
        private StaticLayout textLayout;
        private AnimatedEmojiSpan.EmojiGroupedSpans textLayoutEmojis;
        private int textOffsetX;
        private StaticLayout titleAnimateInLayout;
        private AnimatedEmojiSpan.EmojiGroupedSpans titleAnimateInLayoutEmojis;
        private StaticLayout titleAnimateOutLayout;
        private AnimatedEmojiSpan.EmojiGroupedSpans titleAnimateOutLayoutEmojis;
        private StaticLayout titleAnimateStableLayout;
        private AnimatedEmojiSpan.EmojiGroupedSpans titleAnimateStableLayoutEmojis;
        private float titleXOffset;

        private ColorMatrixColorFilter createColorFilterWithAlpha(int i, float f) {
            return new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, Color.red(i), 0.0f, 0.0f, 0.0f, 0.0f, Color.green(i), 0.0f, 0.0f, 0.0f, 0.0f, Color.blue(i), 0.0f, 0.0f, 0.0f, ((int) (f * 255.0f)) / 255.0f, 0.0f});
        }

        public TabView(Context context) {
            super(context);
            this.rect = new RectF();
            this.lastTabCount = -1;
        }

        public void setTab(Tab tab, int i) {
            this.currentTab = tab;
            this.currentPosition = i;
            setContentDescription(tab.title);
            requestLayout();
            boolean z = this.currentNoanimate;
            Tab tab2 = this.currentTab;
            if (z != (tab2 != null && tab2.noanimate)) {
                AnimatedEmojiSpan.release(this, this.textLayoutEmojis);
                AnimatedEmojiSpan.release(this, this.titleAnimateInLayoutEmojis);
                AnimatedEmojiSpan.release(this, this.titleAnimateOutLayoutEmojis);
                AnimatedEmojiSpan.release(this, this.titleAnimateStableLayoutEmojis);
                if (this.attached) {
                    this.textLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.textLayoutEmojis, this.textLayout);
                    this.titleAnimateInLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateInLayoutEmojis, this.titleAnimateInLayout);
                    this.titleAnimateOutLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateOutLayoutEmojis, this.titleAnimateOutLayout);
                    this.titleAnimateStableLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateStableLayoutEmojis, this.titleAnimateStableLayout);
                }
                this.currentNoanimate = this.currentTab.noanimate;
            }
        }

        @Override // android.view.View
        public int getId() {
            return this.currentTab.f1960id;
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            this.attached = false;
            super.onDetachedFromWindow();
            this.animateChange = false;
            this.animateTabCounter = false;
            this.animateCounterChange = false;
            this.animateTextChange = false;
            this.animateTextX = false;
            this.animateIconX = false;
            this.animateIconChange = false;
            this.animateTabWidth = false;
            ValueAnimator valueAnimator = this.changeAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.changeAnimator.removeAllUpdateListeners();
                this.changeAnimator.cancel();
                this.changeAnimator = null;
            }
            invalidate();
            AnimatedEmojiSpan.release(this, this.textLayoutEmojis);
            AnimatedEmojiSpan.release(this, this.titleAnimateInLayoutEmojis);
            AnimatedEmojiSpan.release(this, this.titleAnimateOutLayoutEmojis);
            AnimatedEmojiSpan.release(this, this.titleAnimateStableLayoutEmojis);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(this.currentTab.getWidth(false) + FolderIcons.getPaddingTab() + FilterTabsView.this.additionalTabWidth, View.MeasureSpec.getSize(i2));
        }

        /* JADX WARN: Removed duplicated region for block: B:244:0x0788  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x0825  */
        /* JADX WARN: Removed duplicated region for block: B:270:0x082e  */
        /* JADX WARN: Removed duplicated region for block: B:273:0x0836  */
        /* JADX WARN: Removed duplicated region for block: B:276:0x086f  */
        /* JADX WARN: Removed duplicated region for block: B:279:0x08a9  */
        /* JADX WARN: Removed duplicated region for block: B:312:0x0a1f  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            float f;
            float f2;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            float f3;
            int i9;
            String str;
            int iMax;
            float f4;
            float f5;
            int iM1124dp;
            int i10;
            int i11;
            boolean z;
            boolean z2;
            float f6;
            boolean z3;
            String str2;
            int i12;
            int i13;
            float f7;
            int i14;
            float f8;
            int iM1124dp2;
            float f9;
            int iM1124dp3;
            int lineBottom;
            int lineTop;
            int i15;
            int iM1124dp4;
            int i16;
            Canvas canvas2 = canvas;
            boolean z4 = !this.currentTab.isDefault || UserConfig.getInstance(UserConfig.selectedAccount).isPremium();
            boolean z5 = !this.currentTab.isDefault && z4;
            if (!z4 || FilterTabsView.this.editingAnimationProgress == 0.0f) {
                f = 400.0f;
                f2 = 1.0f;
            } else {
                canvas2.save();
                float fSin = (float) Math.sin(((double) ((FilterTabsView.this.editingAnimationProgress * (this.currentPosition % 2 == 0 ? 1.0f : -1.0f)) + (r6 % 2))) * 3.141592653589793d * 2.5d);
                double dElapsedRealtime = (float) (((double) (SystemClock.elapsedRealtime() / 400.0f)) * 3.141592653589793d * ((double) (this.currentPosition % 2 == 0 ? 1.0f : -1.0f)));
                f = 400.0f;
                f2 = 1.0f;
                canvas2.translate((float) (Math.cos(dElapsedRealtime) * ((double) AndroidUtilities.m1124dp(0.33f)) * ((double) (this.currentPosition % 2 == 0 ? 1.0f : -1.0f))), (float) (Math.sin(dElapsedRealtime) * ((double) (-AndroidUtilities.m1124dp(0.33f)))));
                canvas2.rotate(fSin * 1.4f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            }
            if (FilterTabsView.this.manualScrollingToId != -1) {
                i = FilterTabsView.this.manualScrollingToId;
                i2 = FilterTabsView.this.selectedTabId;
            } else {
                i = FilterTabsView.this.selectedTabId;
                i2 = FilterTabsView.this.previousId;
            }
            if (this.currentTab.f1960id == i) {
                i3 = FilterTabsView.this.activeTextColorKey;
                i4 = FilterTabsView.this.aActiveTextColorKey;
                i5 = FilterTabsView.this.unactiveTextColorKey;
                i6 = FilterTabsView.this.aUnactiveTextColorKey;
                i7 = Theme.key_chats_tabUnreadActiveBackground;
                i8 = Theme.key_chats_tabUnreadUnactiveBackground;
            } else {
                i3 = FilterTabsView.this.unactiveTextColorKey;
                i4 = FilterTabsView.this.aUnactiveTextColorKey;
                i5 = FilterTabsView.this.activeTextColorKey;
                i6 = FilterTabsView.this.aUnactiveTextColorKey;
                i7 = Theme.key_chats_tabUnreadUnactiveBackground;
                i8 = Theme.key_chats_tabUnreadActiveBackground;
            }
            if (i4 < 0) {
                if ((FilterTabsView.this.animatingIndicator || FilterTabsView.this.manualScrollingToId != -1) && ((i16 = this.currentTab.f1960id) == i || i16 == i2)) {
                    FilterTabsView filterTabsView = FilterTabsView.this;
                    filterTabsView.textPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i5, filterTabsView.resourcesProvider), Theme.getColor(i3, FilterTabsView.this.resourcesProvider), FilterTabsView.this.animatingIndicatorProgress));
                } else {
                    FilterTabsView filterTabsView2 = FilterTabsView.this;
                    filterTabsView2.textPaint.setColor(Theme.getColor(i3, filterTabsView2.resourcesProvider));
                }
                f3 = 0.0f;
            } else {
                f3 = 0.0f;
                int color = Theme.getColor(i3, FilterTabsView.this.resourcesProvider);
                int color2 = Theme.getColor(i4, FilterTabsView.this.resourcesProvider);
                if ((FilterTabsView.this.animatingIndicator || FilterTabsView.this.manualScrollingToPosition != -1) && ((i9 = this.currentTab.f1960id) == i || i9 == i2)) {
                    int color3 = Theme.getColor(i5, FilterTabsView.this.resourcesProvider);
                    int color4 = Theme.getColor(i6, FilterTabsView.this.resourcesProvider);
                    FilterTabsView filterTabsView3 = FilterTabsView.this;
                    filterTabsView3.textPaint.setColor(ColorUtils.blendARGB(ColorUtils.blendARGB(color3, color4, filterTabsView3.animationValue), ColorUtils.blendARGB(color, color2, FilterTabsView.this.animationValue), FilterTabsView.this.animatingIndicatorProgress));
                } else {
                    FilterTabsView filterTabsView4 = FilterTabsView.this;
                    filterTabsView4.textPaint.setColor(ColorUtils.blendARGB(color, color2, filterTabsView4.animationValue));
                }
            }
            FilterTabsView.this.emojiColorFilter = new PorterDuffColorFilter(FilterTabsView.this.textPaint.getColor(), PorterDuff.Mode.SRC_IN);
            int i17 = this.animateFromTabCount;
            boolean z6 = i17 == 0 && this.animateTabCounter;
            boolean z7 = i17 > 0 && this.currentTab.counter == 0 && this.animateTabCounter;
            boolean z8 = i17 > 0 && this.currentTab.counter > 0 && this.animateTabCounter;
            int i18 = this.currentTab.counter;
            if (i18 > 0 || z7) {
                str = z7 ? String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i17)) : String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i18));
                float fCeil = (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(str));
                iMax = ((int) Math.max(AndroidUtilities.m1124dp(7.333f), fCeil)) + AndroidUtilities.m1124dp(10.0f);
                f4 = fCeil;
            } else {
                str = null;
                iMax = 0;
                f4 = f3;
            }
            if (z5 && (FilterTabsView.this.isEditing || FilterTabsView.this.editingStartAnimationProgress != f3)) {
                iMax = (int) (iMax + ((AndroidUtilities.m1124dp(17.333f) - iMax) * FilterTabsView.this.editingStartAnimationProgress));
            }
            if (iMax == 0 || z7) {
                f5 = f3;
            } else {
                f5 = str != null ? f2 : FilterTabsView.this.editingStartAnimationProgress;
            }
            this.tabCounterVisible = f5;
            if (ExteraConfig.tabIcons != 2) {
                Tab tab = this.currentTab;
                int i19 = tab.iconWidth + tab.titleWidth;
                if (iMax == 0 || z7) {
                    iM1124dp4 = 0;
                } else {
                    iM1124dp4 = AndroidUtilities.m1124dp((str != null ? f2 : FilterTabsView.this.editingStartAnimationProgress) * (-2.0f)) + iMax;
                }
                this.tabWidth = i19 + iM1124dp4;
            } else {
                int i20 = this.currentTab.iconWidth;
                if (iMax == 0 || z7) {
                    iM1124dp = 0;
                } else {
                    iM1124dp = AndroidUtilities.m1124dp((str != null ? f2 : FilterTabsView.this.editingStartAnimationProgress) * (-2.0f)) + iMax;
                }
                this.tabWidth = i20 + iM1124dp;
            }
            Tab tab2 = this.currentTab;
            float measuredWidth = ((getMeasuredWidth() - this.tabWidth) / 2.0f) + tab2.iconWidth;
            if (this.animateTextX) {
                float f10 = this.changeProgress;
                measuredWidth = (measuredWidth * f10) + (this.animateFromTextX * (f2 - f10));
            }
            float f11 = measuredWidth;
            if (!TextUtils.equals(tab2.title, this.currentText)) {
                this.currentText = this.currentTab.title;
                StaticLayout staticLayout = new StaticLayout(this.currentText, FilterTabsView.this.textPaint, AndroidUtilities.m1124dp(f), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.textLayout = staticLayout;
                this.textLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.textLayoutEmojis, staticLayout);
                this.textHeight = this.textLayout.getHeight();
                this.textOffsetX = (int) (-this.textLayout.getLineLeft(0));
            }
            if (this.animateTextChange) {
                f7 = this.titleXOffset * (this.animateTextChangeOut ? this.changeProgress : f2 - this.changeProgress);
                if (this.titleAnimateStableLayout != null) {
                    canvas2.save();
                    canvas2.translate(this.textOffsetX + f11 + f7, ((getMeasuredHeight() - this.textHeight) / 2.0f) + f2);
                    this.titleAnimateStableLayout.draw(canvas2);
                    z = z4;
                    i12 = i2;
                    z2 = z5;
                    str2 = str;
                    i11 = i7;
                    i10 = i;
                    z3 = z6;
                    i13 = iMax;
                    f6 = f11;
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.titleAnimateStableLayout, this.titleAnimateStableLayoutEmojis, 0.0f, null, computeVerticalScrollOffset() - AndroidUtilities.m1124dp(6.0f), computeVerticalScrollOffset() + computeVerticalScrollExtent(), 0.0f, 1.0f, FilterTabsView.this.emojiColorFilter);
                    canvas2.restore();
                } else {
                    i10 = i;
                    i11 = i7;
                    z = z4;
                    z2 = z5;
                    f6 = f11;
                    z3 = z6;
                    str2 = str;
                    i12 = i2;
                    i13 = iMax;
                }
                if (this.titleAnimateInLayout != null) {
                    canvas2.save();
                    int alpha = FilterTabsView.this.textPaint.getAlpha();
                    FilterTabsView.this.textPaint.setAlpha((int) (alpha * (this.animateTextChangeOut ? f2 - this.changeProgress : this.changeProgress)));
                    canvas2.translate(f6 + this.textOffsetX + f7, ((getMeasuredHeight() - this.textHeight) / 2.0f) + f2);
                    this.titleAnimateInLayout.draw(canvas2);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.titleAnimateInLayout, this.titleAnimateInLayoutEmojis, 0.0f, null, computeVerticalScrollOffset() - AndroidUtilities.m1124dp(6.0f), computeVerticalScrollOffset() + computeVerticalScrollExtent(), 0.0f, this.animateTextChangeOut ? f2 - this.changeProgress : this.changeProgress, FilterTabsView.this.emojiColorFilter);
                    canvas2.restore();
                    FilterTabsView.this.textPaint.setAlpha(alpha);
                }
                if (this.titleAnimateOutLayout != null) {
                    canvas2.save();
                    int alpha2 = FilterTabsView.this.textPaint.getAlpha();
                    FilterTabsView.this.textPaint.setAlpha((int) (alpha2 * (this.animateTextChangeOut ? this.changeProgress : f2 - this.changeProgress)));
                    canvas2.translate(f6 + this.textOffsetX + f7, ((getMeasuredHeight() - this.textHeight) / 2.0f) + f2);
                    this.titleAnimateOutLayout.draw(canvas2);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.titleAnimateOutLayout, this.titleAnimateOutLayoutEmojis, 0.0f, null, computeVerticalScrollOffset() - AndroidUtilities.m1124dp(6.0f), computeVerticalScrollOffset() + computeVerticalScrollExtent(), 0.0f, this.animateTextChangeOut ? this.changeProgress : f2 - this.changeProgress, FilterTabsView.this.emojiColorFilter);
                    canvas2.restore();
                    FilterTabsView.this.textPaint.setAlpha(alpha2);
                }
            } else {
                i10 = i;
                i11 = i7;
                z = z4;
                z2 = z5;
                f6 = f11;
                z3 = z6;
                str2 = str;
                i12 = i2;
                i13 = iMax;
                if (this.textLayout != null) {
                    canvas2.save();
                    canvas2.translate(f6 + this.textOffsetX, ((getMeasuredHeight() - this.textHeight) / 2.0f) + f2);
                    this.textLayout.draw(canvas2);
                    AnimatedEmojiSpan.drawAnimatedEmojis(canvas2, this.textLayout, this.textLayoutEmojis, 0.0f, null, computeVerticalScrollOffset() - AndroidUtilities.m1124dp(6.0f), computeVerticalScrollOffset() + computeVerticalScrollExtent(), 0.0f, 1.0f, FilterTabsView.this.emojiColorFilter);
                    canvas2.restore();
                }
                f7 = f3;
            }
            float currentIconAlpha = getCurrentIconAlpha();
            if (currentIconAlpha > f3) {
                int iconWidth = FolderIcons.getIconWidth();
                if (!TextUtils.equals(this.currentTab.emoticon, this.currentEmoticon)) {
                    this.currentEmoticon = this.currentTab.emoticon;
                    Rect rect = new Rect(0, 0, iconWidth, iconWidth);
                    Drawable drawableMutate = getResources().getDrawable(FolderIcons.getTabIcon(this.currentTab.emoticon)).mutate();
                    this.icon = drawableMutate;
                    drawableMutate.setBounds(rect);
                }
                int color5 = FilterTabsView.this.textPaint.getColor();
                int measuredWidth2 = (int) ((getMeasuredWidth() - this.tabWidth) / 2.0f);
                if (this.animateIconX) {
                    float f12 = this.changeProgress;
                    measuredWidth2 = (int) ((measuredWidth2 * f12) + (this.animateFromIconX * (f2 - f12)));
                }
                int measuredHeight = (int) ((getMeasuredHeight() - iconWidth) / 2.0f);
                if (this.animateIconChange) {
                    if (this.iconAnimateOutDrawable != null) {
                        canvas2.save();
                        canvas2.translate(measuredWidth2, measuredHeight);
                        this.iconAnimateOutDrawable.setColorFilter(createColorFilterWithAlpha(color5, (f2 - this.changeProgress) * currentIconAlpha));
                        this.iconAnimateOutDrawable.draw(canvas2);
                        canvas2.restore();
                    }
                    if (this.iconAnimateInDrawable != null) {
                        canvas2.save();
                        canvas2.translate(measuredWidth2, measuredHeight);
                        this.iconAnimateInDrawable.setColorFilter(createColorFilterWithAlpha(color5, this.changeProgress * currentIconAlpha));
                        this.iconAnimateInDrawable.draw(canvas2);
                        canvas2.restore();
                    }
                } else {
                    canvas2.save();
                    canvas2.translate(measuredWidth2, measuredHeight);
                    this.icon.setColorFilter(createColorFilterWithAlpha(color5, currentIconAlpha));
                    this.icon.draw(canvas2);
                    canvas2.restore();
                }
                i14 = measuredWidth2;
            } else {
                i14 = 0;
            }
            if (z3 || str2 != null || (z2 && (FilterTabsView.this.isEditing || FilterTabsView.this.editingStartAnimationProgress != f3))) {
                if (FilterTabsView.this.aBackgroundColorKey < 0) {
                    FilterTabsView.this.textCounterPaint.setColor(Theme.getColor(FilterTabsView.this.backgroundColorKey, FilterTabsView.this.resourcesProvider));
                } else {
                    FilterTabsView.this.textCounterPaint.setColor(ColorUtils.blendARGB(Theme.getColor(FilterTabsView.this.backgroundColorKey, FilterTabsView.this.resourcesProvider), Theme.getColor(FilterTabsView.this.aBackgroundColorKey, FilterTabsView.this.resourcesProvider), FilterTabsView.this.animationValue));
                }
                if (Theme.hasThemeKey(i11) && Theme.hasThemeKey(i8)) {
                    int color6 = Theme.getColor(i11, FilterTabsView.this.resourcesProvider);
                    if ((FilterTabsView.this.animatingIndicator || FilterTabsView.this.manualScrollingToPosition != -1) && ((i15 = this.currentTab.f1960id) == i10 || i15 == i12)) {
                        FilterTabsView.this.counterPaint.setColor(ColorUtils.blendARGB(Theme.getColor(i8, FilterTabsView.this.resourcesProvider), color6, FilterTabsView.this.animatingIndicatorProgress));
                    } else {
                        FilterTabsView.this.counterPaint.setColor(color6);
                    }
                } else {
                    FilterTabsView.this.counterPaint.setColor(FilterTabsView.this.textPaint.getColor());
                }
                int i21 = this.currentTab.titleWidth;
                float f13 = i21;
                boolean z9 = this.animateTextChange;
                if (z9) {
                    float f14 = this.animateFromTitleWidth;
                    float f15 = this.changeProgress;
                    f13 = (f14 * (f2 - f15)) + (i21 * f15);
                }
                if (z9 && this.titleAnimateOutLayout == null) {
                    f8 = (f6 - this.titleXOffset) + f7 + f13;
                    iM1124dp2 = AndroidUtilities.m1124dp(5.0f);
                } else {
                    f8 = f6 + f13;
                    iM1124dp2 = AndroidUtilities.m1124dp(5.0f);
                }
                float f16 = f8 + iM1124dp2;
                int measuredHeight2 = (getMeasuredHeight() - AndroidUtilities.m1124dp(17.333f)) / 2;
                if (z2 && ((FilterTabsView.this.isEditing || FilterTabsView.this.editingStartAnimationProgress != f3) && str2 == null)) {
                    FilterTabsView.this.counterPaint.setAlpha((int) (FilterTabsView.this.editingStartAnimationProgress * 255.0f));
                } else {
                    FilterTabsView.this.counterPaint.setAlpha(255);
                }
                if (z8) {
                    float f17 = this.animateFromCountWidth;
                    float f18 = i13;
                    if (f17 != f18) {
                        float f19 = this.changeProgress;
                        f9 = (f17 * (f2 - f19)) + (f18 * f19);
                    } else {
                        f9 = i13;
                    }
                    if (z8) {
                        float f20 = this.animateFromCounterWidth;
                        float f21 = this.changeProgress;
                        f4 = (f20 * (f2 - f21)) + (f4 * f21);
                    }
                    float f22 = measuredHeight2;
                    this.rect.set(f16, f22, f9 + f16, AndroidUtilities.m1124dp(17.333f) + measuredHeight2);
                    if (z3 || z7) {
                        canvas2.save();
                        float f23 = this.changeProgress;
                        if (!z3) {
                            f23 = f2 - f23;
                        }
                        canvas2.scale(f23, f23, this.rect.centerX(), this.rect.centerY());
                    }
                    RectF rectF = this.rect;
                    float f24 = AndroidUtilities.density;
                    canvas2.drawRoundRect(rectF, f24 * 11.5f, f24 * 11.5f, FilterTabsView.this.counterPaint);
                    if (z8) {
                        if (this.inCounter != null) {
                            iM1124dp3 = AndroidUtilities.m1124dp(17.333f);
                            lineBottom = this.inCounter.getLineBottom(0);
                            lineTop = this.inCounter.getLineTop(0);
                        } else if (this.outCounter != null) {
                            iM1124dp3 = AndroidUtilities.m1124dp(17.333f);
                            lineBottom = this.outCounter.getLineBottom(0);
                            lineTop = this.outCounter.getLineTop(0);
                        } else {
                            if (this.stableCounter != null) {
                                iM1124dp3 = AndroidUtilities.m1124dp(17.333f);
                                lineBottom = this.stableCounter.getLineBottom(0);
                                lineTop = this.stableCounter.getLineTop(0);
                            }
                            float fM1124dp = f22 - AndroidUtilities.m1124dp(0.5f);
                            float f25 = !z2 ? f2 - FilterTabsView.this.editingStartAnimationProgress : f2;
                            if (this.inCounter != null) {
                                canvas2.save();
                                FilterTabsView.this.textCounterPaint.setAlpha((int) (f25 * 255.0f * this.changeProgress));
                                RectF rectF2 = this.rect;
                                canvas2.translate(rectF2.left + ((rectF2.width() - f4) / 2.0f), ((f2 - this.changeProgress) * AndroidUtilities.m1124dp(15.0f)) + fM1124dp);
                                this.inCounter.draw(canvas2);
                                canvas2.restore();
                            }
                            if (this.outCounter != null) {
                                canvas2.save();
                                FilterTabsView.this.textCounterPaint.setAlpha((int) (f25 * 255.0f * (f2 - this.changeProgress)));
                                RectF rectF3 = this.rect;
                                canvas2.translate(rectF3.left + ((rectF3.width() - f4) / 2.0f), (this.changeProgress * (-AndroidUtilities.m1124dp(15.0f))) + fM1124dp);
                                this.outCounter.draw(canvas2);
                                canvas2.restore();
                            }
                            if (this.stableCounter != null) {
                                canvas2.save();
                                FilterTabsView.this.textCounterPaint.setAlpha((int) (f25 * 255.0f));
                                RectF rectF4 = this.rect;
                                canvas2.translate(rectF4.left + ((rectF4.width() - f4) / 2.0f), fM1124dp);
                                this.stableCounter.draw(canvas2);
                                canvas2.restore();
                            }
                            FilterTabsView.this.textCounterPaint.setAlpha(255);
                        }
                        f22 += (iM1124dp3 - (lineBottom - lineTop)) / 2.0f;
                        float fM1124dp2 = f22 - AndroidUtilities.m1124dp(0.5f);
                        if (!z2) {
                        }
                        if (this.inCounter != null) {
                        }
                        if (this.outCounter != null) {
                        }
                        if (this.stableCounter != null) {
                        }
                        FilterTabsView.this.textCounterPaint.setAlpha(255);
                    } else if (str2 != null) {
                        if (z2) {
                            FilterTabsView.this.textCounterPaint.setAlpha((int) ((f2 - FilterTabsView.this.editingStartAnimationProgress) * 255.0f));
                        }
                        RectF rectF5 = this.rect;
                        canvas2.drawText(str2, rectF5.left + ((rectF5.width() - f4) / 2.0f), measuredHeight2 + AndroidUtilities.m1124dp(12.5f), FilterTabsView.this.textCounterPaint);
                    }
                    if (z3 || z7) {
                        canvas2.restore();
                    }
                    if (z2 && (FilterTabsView.this.isEditing || FilterTabsView.this.editingStartAnimationProgress != f3)) {
                        FilterTabsView.this.deletePaint.setColor(FilterTabsView.this.textCounterPaint.getColor());
                        FilterTabsView.this.deletePaint.setAlpha((int) (FilterTabsView.this.editingStartAnimationProgress * 255.0f));
                        float fM1124dp3 = AndroidUtilities.m1124dp(3.0f);
                        canvas2.drawLine(this.rect.centerX() - fM1124dp3, this.rect.centerY() - fM1124dp3, this.rect.centerX() + fM1124dp3, this.rect.centerY() + fM1124dp3, FilterTabsView.this.deletePaint);
                        canvas2 = canvas;
                        canvas2.drawLine(this.rect.centerX() - fM1124dp3, this.rect.centerY() + fM1124dp3, this.rect.centerX() + fM1124dp3, this.rect.centerY() - fM1124dp3, FilterTabsView.this.deletePaint);
                    }
                }
            }
            float f26 = f4;
            if (z && FilterTabsView.this.editingAnimationProgress != f3) {
                canvas2.restore();
            }
            this.lastEmoticon = this.currentEmoticon;
            this.lastTextX = f6;
            this.lastIconX = i14;
            Tab tab3 = this.currentTab;
            this.lastTabCount = tab3.counter;
            this.lastTitleLayout = this.textLayout;
            this.lastTitle = this.currentText;
            this.lastTitleWidth = tab3.titleWidth;
            this.lastCountWidth = i13;
            this.lastCounterWidth = f26;
            this.lastIconWidth = tab3.iconWidth;
            this.lastTabWidth = this.tabWidth;
            this.lastWidth = getMeasuredWidth();
            if (this.currentTab.isLocked || this.progressToLocked != f3) {
                if (FilterTabsView.this.lockDrawable == null) {
                    FilterTabsView.this.lockDrawable = ContextCompat.getDrawable(getContext(), C2888R.drawable.other_lockedfolders);
                }
                boolean z10 = this.currentTab.isLocked;
                if (z10) {
                    float f27 = this.progressToLocked;
                    if (f27 != f2) {
                        this.progressToLocked = f27 + 0.10666667f;
                    } else if (!z10) {
                        this.progressToLocked -= 0.10666667f;
                    }
                }
                this.progressToLocked = Utilities.clamp(this.progressToLocked, f2, f3);
                int color7 = Theme.getColor(FilterTabsView.this.unactiveTextColorKey, FilterTabsView.this.resourcesProvider);
                if (FilterTabsView.this.aUnactiveTextColorKey >= 0) {
                    color7 = ColorUtils.blendARGB(color7, Theme.getColor(FilterTabsView.this.aUnactiveTextColorKey, FilterTabsView.this.resourcesProvider), FilterTabsView.this.animationValue);
                }
                if (FilterTabsView.this.lockDrawableColor != color7) {
                    FilterTabsView.this.lockDrawableColor = color7;
                    FilterTabsView.this.lockDrawable.setColorFilter(new PorterDuffColorFilter(color7, PorterDuff.Mode.MULTIPLY));
                }
                int measuredWidth3 = (int) (((getMeasuredWidth() - FilterTabsView.this.lockDrawable.getIntrinsicWidth()) / 2.0f) + this.locIconXOffset);
                int measuredHeight3 = getMeasuredHeight() - AndroidUtilities.m1124dp(12.0f);
                FilterTabsView.this.lockDrawable.setBounds(measuredWidth3, measuredHeight3, FilterTabsView.this.lockDrawable.getIntrinsicWidth() + measuredWidth3, FilterTabsView.this.lockDrawable.getIntrinsicHeight() + measuredHeight3);
                if (this.progressToLocked != 1.0f) {
                    canvas2.save();
                    float f28 = this.progressToLocked;
                    canvas2.scale(f28, f28, FilterTabsView.this.lockDrawable.getBounds().centerX(), FilterTabsView.this.lockDrawable.getBounds().centerY());
                    FilterTabsView.this.lockDrawable.draw(canvas2);
                    canvas2.restore();
                    return;
                }
                FilterTabsView.this.lockDrawable.draw(canvas2);
            }
        }

        private float getCurrentIconAlpha() {
            if (!this.animateIconWidth) {
                return this.currentTab.iconWidth > 0 ? 1.0f : 0.0f;
            }
            int i = this.currentTab.iconWidth;
            if (i > 0 && this.animateFromIconWidth == 0) {
                return this.changeProgress;
            }
            if (i != 0 || this.animateFromIconWidth <= 0) {
                return 1.0f;
            }
            return 1.0f - this.changeProgress;
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            this.attached = true;
            super.onAttachedToWindow();
            this.textLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.textLayoutEmojis, this.textLayout);
            this.titleAnimateInLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateInLayoutEmojis, this.titleAnimateInLayout);
            this.titleAnimateOutLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateOutLayoutEmojis, this.titleAnimateOutLayout);
            this.titleAnimateStableLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateStableLayoutEmojis, this.titleAnimateStableLayout);
        }

        public boolean animateChange() {
            boolean z;
            int iM1124dp;
            CharSequence charSequence;
            CharSequence charSequence2;
            boolean z2;
            int i = this.currentTab.counter;
            int i2 = this.lastTabCount;
            if (i != i2) {
                this.animateTabCounter = true;
                this.animateFromTabCount = i2;
                this.animateFromCountWidth = this.lastCountWidth;
                this.animateFromCounterWidth = this.lastCounterWidth;
                if (i2 > 0 && i > 0) {
                    String strValueOf = String.valueOf(i2);
                    String strValueOf2 = String.valueOf(this.currentTab.counter);
                    if (strValueOf.length() == strValueOf2.length()) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strValueOf);
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(strValueOf2);
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(strValueOf2);
                        for (int i3 = 0; i3 < strValueOf.length(); i3++) {
                            if (strValueOf.charAt(i3) == strValueOf2.charAt(i3)) {
                                int i4 = i3 + 1;
                                spannableStringBuilder.setSpan(new EmptyStubSpan(), i3, i4, 0);
                                spannableStringBuilder2.setSpan(new EmptyStubSpan(), i3, i4, 0);
                            } else {
                                spannableStringBuilder3.setSpan(new EmptyStubSpan(), i3, i3 + 1, 0);
                            }
                        }
                        int iCeil = (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(strValueOf));
                        TextPaint textPaint = FilterTabsView.this.textCounterPaint;
                        Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                        this.outCounter = new StaticLayout(spannableStringBuilder, textPaint, iCeil, alignment, 1.0f, 0.0f, false);
                        this.stableCounter = new StaticLayout(spannableStringBuilder3, FilterTabsView.this.textCounterPaint, iCeil, alignment, 1.0f, 0.0f, false);
                        this.inCounter = new StaticLayout(spannableStringBuilder2, FilterTabsView.this.textCounterPaint, iCeil, alignment, 1.0f, 0.0f, false);
                    } else {
                        int iCeil2 = (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(strValueOf));
                        TextPaint textPaint2 = FilterTabsView.this.textCounterPaint;
                        Layout.Alignment alignment2 = Layout.Alignment.ALIGN_CENTER;
                        this.outCounter = new StaticLayout(strValueOf, textPaint2, iCeil2, alignment2, 1.0f, 0.0f, false);
                        this.inCounter = new StaticLayout(strValueOf2, FilterTabsView.this.textCounterPaint, (int) Math.ceil(Theme.dialogs_countTextPaint.measureText(strValueOf2)), alignment2, 1.0f, 0.0f, false);
                    }
                }
                z = true;
            } else {
                z = false;
            }
            int iMax = this.currentTab.counter > 0 ? Math.max(AndroidUtilities.m1124dp(7.333f), (int) Math.ceil(FilterTabsView.this.textCounterPaint.measureText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(r2))))) + AndroidUtilities.m1124dp(10.0f) : 0;
            Tab tab = this.currentTab;
            int i5 = tab.iconWidth;
            int i6 = this.lastIconWidth;
            if (i5 != i6) {
                this.animateIconWidth = true;
                this.animateFromIconWidth = i6;
                z = true;
            }
            if (ExteraConfig.tabIcons != 2) {
                iM1124dp = tab.titleWidth + i5 + (iMax != 0 ? iMax + AndroidUtilities.m1124dp(6.0f) : 0);
            } else {
                iM1124dp = i5 + (iMax != 0 ? iMax + AndroidUtilities.m1124dp(6.0f) : 0);
            }
            float measuredWidth = ((getMeasuredWidth() - iM1124dp) / 2) + i5;
            float f = this.lastTextX;
            if (measuredWidth != f) {
                this.animateTextX = true;
                this.animateFromTextX = f;
                z = true;
            }
            CharSequence charSequence3 = this.lastTitle;
            if (charSequence3 != null && !this.currentTab.title.equals(charSequence3)) {
                if (this.lastTitle.length() > this.currentTab.title.length()) {
                    charSequence = this.lastTitle;
                    charSequence2 = this.currentTab.title;
                    z2 = true;
                } else {
                    charSequence = this.currentTab.title;
                    charSequence2 = this.lastTitle;
                    z2 = false;
                }
                int iCharSequenceIndexOf = AndroidUtilities.charSequenceIndexOf(charSequence, charSequence2);
                if (iCharSequenceIndexOf >= 0) {
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(charSequence, FilterTabsView.this.textPaint.getFontMetricsInt(), false);
                    SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(charSequenceReplaceEmoji);
                    SpannableStringBuilder spannableStringBuilder5 = new SpannableStringBuilder(charSequenceReplaceEmoji);
                    if (iCharSequenceIndexOf != 0) {
                        spannableStringBuilder5.setSpan(new EmptyStubSpan(), 0, iCharSequenceIndexOf, 0);
                    }
                    if (charSequence2.length() + iCharSequenceIndexOf != charSequence.length()) {
                        spannableStringBuilder5.setSpan(new EmptyStubSpan(), charSequence2.length() + iCharSequenceIndexOf, charSequence.length(), 0);
                    }
                    spannableStringBuilder4.setSpan(new EmptyStubSpan(), iCharSequenceIndexOf, charSequence2.length() + iCharSequenceIndexOf, 0);
                    TextPaint textPaint3 = FilterTabsView.this.textPaint;
                    int iM1124dp2 = AndroidUtilities.m1124dp(400.0f);
                    Layout.Alignment alignment3 = Layout.Alignment.ALIGN_NORMAL;
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder4, textPaint3, iM1124dp2, alignment3, 1.0f, 0.0f, false);
                    this.titleAnimateInLayout = staticLayout;
                    if (this.attached) {
                        this.titleAnimateInLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateInLayoutEmojis, staticLayout);
                    }
                    StaticLayout staticLayout2 = new StaticLayout(spannableStringBuilder5, FilterTabsView.this.textPaint, AndroidUtilities.m1124dp(400.0f), alignment3, 1.0f, 0.0f, false);
                    this.titleAnimateStableLayout = staticLayout2;
                    if (this.attached) {
                        this.titleAnimateStableLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateStableLayoutEmojis, staticLayout2);
                    }
                    this.animateTextChange = true;
                    this.animateTextChangeOut = z2;
                    this.titleXOffset = iCharSequenceIndexOf != 0 ? -this.titleAnimateStableLayout.getPrimaryHorizontal(iCharSequenceIndexOf) : 0.0f;
                    this.animateFromTitleWidth = this.lastTitleWidth;
                    this.titleAnimateOutLayout = null;
                    AnimatedEmojiSpan.release(this, this.titleAnimateOutLayoutEmojis);
                } else {
                    CharSequence charSequence4 = this.currentTab.title;
                    TextPaint textPaint4 = FilterTabsView.this.textPaint;
                    int iM1124dp3 = AndroidUtilities.m1124dp(400.0f);
                    Layout.Alignment alignment4 = Layout.Alignment.ALIGN_NORMAL;
                    StaticLayout staticLayout3 = new StaticLayout(charSequence4, textPaint4, iM1124dp3, alignment4, 1.0f, 0.0f, false);
                    this.titleAnimateInLayout = staticLayout3;
                    if (this.attached) {
                        this.titleAnimateInLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateInLayoutEmojis, staticLayout3);
                    }
                    StaticLayout staticLayout4 = new StaticLayout(this.lastTitle, FilterTabsView.this.textPaint, AndroidUtilities.m1124dp(400.0f), alignment4, 1.0f, 0.0f, false);
                    this.titleAnimateOutLayout = staticLayout4;
                    if (this.attached) {
                        this.titleAnimateOutLayoutEmojis = AnimatedEmojiSpan.update(this.currentTab.noanimate ? 26 : 0, this, this.titleAnimateOutLayoutEmojis, staticLayout4);
                    }
                    this.titleAnimateStableLayout = null;
                    AnimatedEmojiSpan.release(this, this.titleAnimateStableLayoutEmojis);
                    this.animateTextChange = true;
                    this.titleXOffset = 0.0f;
                    this.animateFromTitleWidth = this.lastTitleWidth;
                }
                z = true;
            }
            if (ExteraConfig.tabIcons != 1) {
                float measuredWidth2 = (int) ((getMeasuredWidth() - iM1124dp) / 2.0f);
                float f2 = this.lastIconX;
                if (measuredWidth2 != f2) {
                    this.animateIconX = true;
                    this.animateFromIconX = f2;
                    z = true;
                }
                String str = this.lastEmoticon;
                if (str != null && !this.currentTab.emoticon.equals(str)) {
                    int iconWidth = FolderIcons.getIconWidth();
                    Rect rect = new Rect(0, 0, iconWidth, iconWidth);
                    this.iconAnimateOutDrawable = getResources().getDrawable(FolderIcons.getTabIcon(this.lastEmoticon)).mutate();
                    this.iconAnimateInDrawable = getResources().getDrawable(FolderIcons.getTabIcon(this.currentTab.emoticon)).mutate();
                    this.iconAnimateOutDrawable.setBounds(rect);
                    this.iconAnimateInDrawable.setBounds(rect);
                    this.iconAnimateOutDrawable.setTint(FilterTabsView.this.textPaint.getColor());
                    this.iconAnimateInDrawable.setTint(FilterTabsView.this.textPaint.getColor());
                    this.animateIconChange = true;
                    z = true;
                }
            }
            if (iM1124dp == this.lastTabWidth && getMeasuredWidth() == this.lastWidth) {
                return z;
            }
            this.animateTabWidth = true;
            this.animateFromTabWidth = this.lastTabWidth;
            this.animateFromWidth = this.lastWidth;
            return true;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setSelected((this.currentTab == null || FilterTabsView.this.selectedTabId == -1 || this.currentTab.f1960id != FilterTabsView.this.selectedTabId) ? false : true);
            accessibilityNodeInfo.addAction(16);
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString(C2888R.string.AccDescrOpenMenu2)));
            if (this.currentTab != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.currentTab.title);
                Tab tab = this.currentTab;
                int i = tab != null ? tab.counter : 0;
                if (i > 0) {
                    sb.append("\n");
                    sb.append(LocaleController.formatPluralString("AccDescrUnreadCount", i, new Object[0]));
                }
                accessibilityNodeInfo.setContentDescription(sb);
            }
        }

        public void clearTransitionParams() {
            this.animateChange = false;
            this.animateIconWidth = false;
            this.animateTabCounter = false;
            this.animateCounterChange = false;
            this.animateTextChange = false;
            this.animateTextX = false;
            this.animateIconX = false;
            this.animateIconChange = false;
            this.animateTabWidth = false;
            this.changeAnimator = null;
            invalidate();
        }

        public void shakeLockIcon(final float f, final int i) {
            if (i == 6) {
                this.locIconXOffset = 0.0f;
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, AndroidUtilities.m1124dp(f));
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FilterTabsView$TabView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$shakeLockIcon$0(valueAnimator);
                }
            });
            animatorSet.playTogether(valueAnimatorOfFloat);
            animatorSet.setDuration(50L);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.FilterTabsView.TabView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabView tabView = TabView.this;
                    int i2 = i;
                    tabView.shakeLockIcon(i2 == 5 ? 0.0f : -f, i2 + 1);
                    TabView.this.locIconXOffset = 0.0f;
                    TabView.this.invalidate();
                }
            });
            animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shakeLockIcon$0(ValueAnimator valueAnimator) {
            this.locIconXOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }
    }

    public void setStaticAllChats(boolean z) {
        this.isStaticAllChats = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FilterTabsView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.textCounterPaint = textPaint2;
        TextPaint textPaint3 = new TextPaint(1);
        this.deletePaint = textPaint3;
        this.counterPaint = new Paint(1);
        this.emojiColorFilter = new PorterDuffColorFilter(0, PorterDuff.Mode.SRC_IN);
        this.tabs = new ArrayList();
        this.selectedTabId = -1;
        this.manualScrollingToPosition = -1;
        this.manualScrollingToId = -1;
        this.scrollingToChild = -1;
        this.tabLineColorKey = Theme.key_actionBarTabLine;
        this.activeTextColorKey = Theme.key_actionBarTabActiveText;
        this.unactiveTextColorKey = Theme.key_actionBarTabUnactiveText;
        this.selectorColorKey = Theme.key_actionBarTabSelector;
        this.backgroundColorKey = Theme.key_actionBarDefault;
        this.aTabLineColorKey = -1;
        this.aActiveTextColorKey = -1;
        this.aUnactiveTextColorKey = -1;
        this.aBackgroundColorKey = -1;
        this.interpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.positionToId = new SparseIntArray(5);
        this.positionToStableId = new SparseIntArray(5);
        this.idToPosition = new SparseIntArray(5);
        this.positionToWidth = new SparseIntArray(5);
        this.positionToCount = new SparseIntArray(5);
        this.positionToX = new SparseIntArray(5);
        this.animationRunnable = new Runnable() { // from class: org.telegram.ui.Components.FilterTabsView.1
            @Override // java.lang.Runnable
            public void run() {
                if (FilterTabsView.this.animatingIndicator) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - FilterTabsView.this.lastAnimationTime;
                    if (jElapsedRealtime > 17) {
                        jElapsedRealtime = 17;
                    }
                    FilterTabsView.this.animationTime += jElapsedRealtime / 320.0f;
                    FilterTabsView filterTabsView = FilterTabsView.this;
                    filterTabsView.setAnimationIdicatorProgress(filterTabsView.interpolator.getInterpolation(FilterTabsView.this.animationTime));
                    if (FilterTabsView.this.animationTime > 1.0f) {
                        FilterTabsView.this.animationTime = 1.0f;
                    }
                    if (FilterTabsView.this.animationTime < 1.0f) {
                        AndroidUtilities.runOnUIThread(FilterTabsView.this.animationRunnable);
                        return;
                    }
                    FilterTabsView.this.animatingIndicator = false;
                    FilterTabsView.this.setEnabled(true);
                    if (FilterTabsView.this.delegate != null) {
                        FilterTabsView.this.delegate.onPageScrolled(1.0f);
                    }
                }
            }
        };
        this.COLORS = new AnimationProperties.FloatProperty("animationValue") { // from class: org.telegram.ui.Components.FilterTabsView.2
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(FilterTabsView filterTabsView, float f) {
                FilterTabsView.this.animationValue = f;
                FilterTabsView.this.selectorDrawable.setColor(ColorUtils.blendARGB(Theme.getColor(FilterTabsView.this.tabLineColorKey, FilterTabsView.this.resourcesProvider), Theme.getColor(FilterTabsView.this.aTabLineColorKey, FilterTabsView.this.resourcesProvider), f));
                FilterTabsView.this.listView.invalidateViews();
                FilterTabsView.this.listView.invalidate();
                filterTabsView.invalidate();
            }

            @Override // android.util.Property
            public Float get(FilterTabsView filterTabsView) {
                return Float.valueOf(FilterTabsView.this.animationValue);
            }
        };
        this.clipPath = new Path();
        this.oldAnimatedTab = -1;
        this.resourcesProvider = resourcesProvider;
        textPaint2.setTextSize(AndroidUtilities.dpf2(11.0f));
        textPaint2.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.dpf2(14.0f));
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint3.setStyle(Paint.Style.STROKE);
        textPaint3.setStrokeCap(Paint.Cap.ROUND);
        textPaint3.setStrokeWidth(AndroidUtilities.m1124dp(1.5f));
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, null);
        this.selectorDrawable = gradientDrawable;
        float fDpf2 = AndroidUtilities.dpf2(14.0f);
        gradientDrawable.setCornerRadii(new float[]{fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2, fDpf2});
        gradientDrawable.setColor(Theme.getColor(this.tabLineColorKey, resourcesProvider));
        setHorizontalScrollBarEnabled(false);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.FilterTabsView.3
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                FilterTabsView.this.invalidate();
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(View view) {
                return FilterTabsView.this.isEnabled() && FilterTabsView.this.delegate.canPerformActions();
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView
            protected boolean canHighlightChildAt(View view, float f, float f2) {
                if (FilterTabsView.this.isEditing) {
                    TabView tabView = (TabView) view;
                    float fM1124dp = AndroidUtilities.m1124dp(6.0f);
                    if (tabView.rect.left - fM1124dp < f && tabView.rect.right + fM1124dp > f) {
                        return false;
                    }
                }
                return super.canHighlightChildAt(view, f, f2);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setOverScrollMode(2);
        recyclerListView.setClipChildren(false);
        C43854 c43854 = new C43854();
        this.itemAnimator = c43854;
        c43854.setDelayAnimations(false);
        recyclerListView.setItemAnimator(this.itemAnimator);
        recyclerListView.setSelectorType(9);
        recyclerListView.setSelectorRadius(6);
        recyclerListView.setSelectorDrawableColor(Theme.getColor(this.selectorColorKey, resourcesProvider));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, 0 == true ? 1 : 0) { // from class: org.telegram.ui.Components.FilterTabsView.5
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: org.telegram.ui.Components.FilterTabsView.5.1
                    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                    protected void onTargetFound(View view, RecyclerView.State state2, RecyclerView.SmoothScroller.Action action) {
                        int iCalculateDxToMakeVisible = calculateDxToMakeVisible(view, getHorizontalSnapPreference());
                        if (iCalculateDxToMakeVisible > 0 || (iCalculateDxToMakeVisible == 0 && view.getLeft() - AndroidUtilities.m1124dp(21.0f) < 0)) {
                            iCalculateDxToMakeVisible += AndroidUtilities.m1124dp(60.0f);
                        } else if (iCalculateDxToMakeVisible < 0 || (iCalculateDxToMakeVisible == 0 && view.getRight() + AndroidUtilities.m1124dp(21.0f) > FilterTabsView.this.getMeasuredWidth())) {
                            iCalculateDxToMakeVisible -= AndroidUtilities.m1124dp(60.0f);
                        }
                        int iCalculateDyToMakeVisible = calculateDyToMakeVisible(view, getVerticalSnapPreference());
                        int iMax = Math.max(180, calculateTimeForDeceleration((int) Math.sqrt((iCalculateDxToMakeVisible * iCalculateDxToMakeVisible) + (iCalculateDyToMakeVisible * iCalculateDyToMakeVisible))));
                        if (iMax > 0) {
                            action.update(-iCalculateDxToMakeVisible, -iCalculateDyToMakeVisible, iMax, this.mDecelerateInterpolator);
                        }
                    }
                };
                linearSmoothScroller.setTargetPosition(i);
                startSmoothScroll(linearSmoothScroller);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
                if (FilterTabsView.this.delegate.isTabMenuVisible()) {
                    i = 0;
                }
                return super.scrollHorizontallyBy(i, recycler, state);
            }
        };
        this.layoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        int iMax = Math.max(0, AndroidUtilities.m1124dp(23.5f) - (FolderIcons.getPaddingTab() / 2));
        this.listViewPaddingH = iMax;
        recyclerListView.setPadding(iMax, 0, iMax, 0);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setDrawSelectorBehind(true);
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        listAdapter.setHasStableIds(true);
        recyclerListView.setAdapter(listAdapter);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                this.f$0.lambda$new$0(view, i, f, f2);
            }
        });
        recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view, int i) {
                return this.f$0.lambda$new$1(view, i);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.FilterTabsView.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                FilterTabsView.this.listView.invalidate();
                FilterTabsView.this.invalidate();
            }
        });
        recyclerListView.setAdaptiveOverScroll();
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1.0f));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.FilterTabsView$4 */
    class C43854 extends DefaultItemAnimator {
        C43854() {
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void runPendingAnimations() {
            boolean zIsEmpty = this.mPendingRemovals.isEmpty();
            boolean zIsEmpty2 = this.mPendingMoves.isEmpty();
            boolean zIsEmpty3 = this.mPendingChanges.isEmpty();
            boolean zIsEmpty4 = this.mPendingAdditions.isEmpty();
            if (!zIsEmpty || !zIsEmpty2 || !zIsEmpty4 || !zIsEmpty3) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.1f);
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FilterTabsView$4$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$runPendingAnimations$0(valueAnimator);
                    }
                });
                valueAnimatorOfFloat.setDuration(getMoveDuration());
                valueAnimatorOfFloat.start();
            }
            super.runPendingAnimations();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$runPendingAnimations$0(ValueAnimator valueAnimator) {
            FilterTabsView.this.listView.invalidate();
            FilterTabsView.this.invalidate();
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator
        public boolean animateMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, int i, int i2, int i3, int i4) {
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                int translationX = i + ((int) view.getTranslationX());
                int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
                resetAnimation(viewHolder);
                int i5 = i3 - translationX;
                int i6 = i4 - translationY;
                if (i5 != 0) {
                    view.setTranslationX(-i5);
                }
                if (i6 != 0) {
                    view.setTranslationY(-i6);
                }
                TabView tabView = (TabView) viewHolder.itemView;
                boolean zAnimateChange = tabView.animateChange();
                if (zAnimateChange) {
                    tabView.changeProgress = 0.0f;
                    tabView.animateChange = true;
                    FilterTabsView.this.listView.invalidate();
                    FilterTabsView.this.invalidate();
                }
                if (i5 == 0 && i6 == 0 && !zAnimateChange) {
                    dispatchMoveFinished(viewHolder);
                    return false;
                }
                this.mPendingMoves.add(new DefaultItemAnimator.MoveInfo(viewHolder, translationX, translationY, i3, i4));
                return true;
            }
            return super.animateMove(viewHolder, itemHolderInfo, i, i2, i3, i4);
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        protected void animateMoveImpl(RecyclerView.ViewHolder viewHolder, DefaultItemAnimator.MoveInfo moveInfo) {
            super.animateMoveImpl(viewHolder, moveInfo);
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                final TabView tabView = (TabView) view;
                if (tabView.animateChange) {
                    ValueAnimator valueAnimator = tabView.changeAnimator;
                    if (valueAnimator != null) {
                        valueAnimator.removeAllListeners();
                        tabView.changeAnimator.removeAllUpdateListeners();
                        tabView.changeAnimator.cancel();
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.FilterTabsView$4$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            FilterTabsView.C43854.m10294$r8$lambda$DghHiTLqtaEBdiK1Uy8XexT6xo(tabView, valueAnimator2);
                        }
                    });
                    valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.FilterTabsView.4.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            tabView.clearTransitionParams();
                        }
                    });
                    tabView.changeAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setDuration(getMoveDuration());
                    valueAnimatorOfFloat.start();
                }
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$DghHiTLqtaEB-diK1Uy8XexT6xo, reason: not valid java name */
        public static /* synthetic */ void m10294$r8$lambda$DghHiTLqtaEBdiK1Uy8XexT6xo(TabView tabView, ValueAnimator valueAnimator) {
            tabView.changeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            tabView.invalidate();
        }

        @Override // androidx.recyclerview.widget.SimpleItemAnimator
        public void onMoveFinished(RecyclerView.ViewHolder viewHolder) {
            super.onMoveFinished(viewHolder);
            viewHolder.itemView.setTranslationX(0.0f);
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                ((TabView) view).clearTransitionParams();
            }
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void endAnimation(RecyclerView.ViewHolder viewHolder) {
            super.endAnimation(viewHolder);
            viewHolder.itemView.setTranslationX(0.0f);
            View view = viewHolder.itemView;
            if (view instanceof TabView) {
                ((TabView) view).clearTransitionParams();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, float f, float f2) {
        FilterTabsViewDelegate filterTabsViewDelegate;
        if (this.delegate.canPerformActions()) {
            TabView tabView = (TabView) view;
            if (this.isEditing) {
                if (i != 0 || ExteraConfig.hideAllChats) {
                    float fM1124dp = AndroidUtilities.m1124dp(6.0f);
                    if (tabView.rect.left - fM1124dp >= f || tabView.rect.right + fM1124dp <= f) {
                        return;
                    }
                    this.delegate.onDeletePressed(tabView.currentTab.f1960id);
                    return;
                }
                return;
            }
            if (i == this.currentPosition && (filterTabsViewDelegate = this.delegate) != null) {
                filterTabsViewDelegate.onSamePageSelected();
            } else {
                scrollToTab(tabView.currentTab, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$1(View view, int i) {
        if (this.delegate.canPerformActions() && !this.isEditing) {
            if (this.delegate.didSelectTab((TabView) view, i == this.currentPosition)) {
                this.listView.hideSelector(true);
                return true;
            }
        }
        return false;
    }

    public void setDelegate(FilterTabsViewDelegate filterTabsViewDelegate) {
        this.delegate = filterTabsViewDelegate;
    }

    public boolean isAnimatingIndicator() {
        return this.animatingIndicator;
    }

    public void stopAnimatingIndicator() {
        this.animatingIndicator = false;
    }

    public void setBlurredBackground(BlurredBackgroundDrawable blurredBackgroundDrawable) {
        this.blurredBackgroundDrawable = blurredBackgroundDrawable;
        setBackground(blurredBackgroundDrawable);
    }

    public void scrollToTab(Tab tab, int i) {
        int i2 = this.currentPosition;
        if (i2 == i && this.selectedTabId == tab.f1960id) {
            return;
        }
        if (tab.isLocked) {
            FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
            if (filterTabsViewDelegate != null) {
                filterTabsViewDelegate.onPageSelected(tab, false);
                return;
            }
            return;
        }
        boolean z = i2 < i;
        this.scrollingToChild = -1;
        this.previousPosition = i2;
        this.previousId = this.selectedTabId;
        this.currentPosition = i;
        this.selectedTabId = tab.f1960id;
        if (this.animatingIndicator) {
            AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
            this.animatingIndicator = false;
        }
        this.animationTime = 0.0f;
        this.animatingIndicatorProgress = 0.0f;
        this.animatingIndicator = true;
        setEnabled(false);
        AndroidUtilities.runOnUIThread(this.animationRunnable, 16L);
        FilterTabsViewDelegate filterTabsViewDelegate2 = this.delegate;
        if (filterTabsViewDelegate2 != null) {
            filterTabsViewDelegate2.onPageSelected(tab, z);
            this.delegate.onTabSelected(tab, z, true);
            this.oldAnimatedTab = this.currentPosition;
        }
        scrollToChild(i, true);
    }

    public void selectFirstTab() {
        if (this.tabs.isEmpty()) {
            return;
        }
        scrollToTab((Tab) this.tabs.get(0), 0);
    }

    public boolean isFirstTab() {
        return this.currentPosition <= 0;
    }

    public void selectLastTab() {
        if (this.tabs.isEmpty()) {
            return;
        }
        scrollToTab((Tab) this.tabs.get(r0.size() - 1), this.tabs.size() - 1);
    }

    public void setAnimationIdicatorProgress(float f) {
        this.animatingIndicatorProgress = f;
        this.listView.invalidateViews();
        this.listView.invalidate();
        invalidate();
        FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
        if (filterTabsViewDelegate != null) {
            filterTabsViewDelegate.onPageScrolled(f);
        }
    }

    public Drawable getSelectorDrawable() {
        return this.selectorDrawable;
    }

    public RecyclerListView getTabsContainer() {
        return this.listView;
    }

    public int getNextPageId(boolean z) {
        return this.positionToId.get(this.currentPosition + (z ? 1 : -1), -1);
    }

    public void removeTabs() {
        this.tabs.clear();
        this.positionToId.clear();
        this.positionToStableId.clear();
        this.idToPosition.clear();
        this.positionToWidth.clear();
        this.positionToCount.clear();
        this.positionToX.clear();
        this.allTabsWidth = 0;
        this.currentPosition = 0;
        this.selectedTabId = -1;
        this.previousPosition = 0;
        this.previousId = -1;
        this.scrollingToChild = -1;
    }

    public void resetTabId() {
        this.selectedTabId = -1;
    }

    public CharSequence text(String str, ArrayList arrayList) {
        return MessageObject.replaceAnimatedEmoji(Emoji.replaceEmoji(new SpannableStringBuilder(str), this.textPaint.getFontMetricsInt(), false), arrayList, this.textPaint.getFontMetricsInt());
    }

    public void addTab(int i, int i2, String str, String str2, ArrayList arrayList, boolean z, boolean z2, boolean z3) {
        int size = this.tabs.size();
        if (size == 0 && this.selectedTabId == -1) {
            this.selectedTabId = i;
        }
        this.positionToId.put(size, i);
        this.positionToStableId.put(size, i2);
        this.idToPosition.put(i, size);
        int i3 = this.selectedTabId;
        if (i3 != -1 && i3 == i) {
            this.currentPosition = size;
        }
        Tab tab = new Tab(i, text(str, arrayList), str2, z);
        tab.isDefault = z2;
        tab.isLocked = z3;
        this.allTabsWidth += tab.getWidth(true) + FolderIcons.getPaddingTab();
        this.tabs.add(tab);
    }

    public int getTabsCount() {
        return this.tabs.size();
    }

    public Tab getTab(int i) {
        if (i < 0 || i >= getTabsCount()) {
            return null;
        }
        return (Tab) this.tabs.get(i);
    }

    public void finishAddingTabs(boolean z) {
        this.listView.setItemAnimator(z ? this.itemAnimator : null);
        this.adapter.notifyDataSetChanged();
        this.delegate.onTabSelected((Tab) this.tabs.get(this.currentPosition), false, false);
        this.oldAnimatedTab = this.currentPosition;
    }

    public void setColors(int i, int i2, int i3, int i4, int i5) {
        this.tabLineColorKey = i;
        this.backgroundColorKey = i5;
        this.activeTextColorKey = i2;
        this.unactiveTextColorKey = i3;
        this.selectorDrawable.setColor(Theme.getColor(i, this.resourcesProvider));
        this.listView.setSelectorDrawableColor(Theme.getColor(i4, this.resourcesProvider));
        this.listView.invalidateViews();
        this.listView.invalidate();
        invalidate();
    }

    public void animateColorsTo(int i, int i2, int i3, int i4, int i5) {
        AnimatorSet animatorSet = this.colorChangeAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.aTabLineColorKey = i;
        this.aActiveTextColorKey = i2;
        this.aUnactiveTextColorKey = i3;
        this.aBackgroundColorKey = i5;
        this.selectorColorKey = i4;
        this.listView.setSelectorDrawableColor(Theme.getColor(i4, this.resourcesProvider));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.colorChangeAnimator = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this, (Property<FilterTabsView, Float>) this.COLORS, 0.0f, 1.0f));
        this.colorChangeAnimator.setDuration(320L);
        this.colorChangeAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.FilterTabsView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FilterTabsView filterTabsView = FilterTabsView.this;
                filterTabsView.tabLineColorKey = filterTabsView.aTabLineColorKey;
                FilterTabsView filterTabsView2 = FilterTabsView.this;
                filterTabsView2.backgroundColorKey = filterTabsView2.aBackgroundColorKey;
                FilterTabsView filterTabsView3 = FilterTabsView.this;
                filterTabsView3.activeTextColorKey = filterTabsView3.aActiveTextColorKey;
                FilterTabsView filterTabsView4 = FilterTabsView.this;
                filterTabsView4.unactiveTextColorKey = filterTabsView4.aUnactiveTextColorKey;
                FilterTabsView.this.aTabLineColorKey = -1;
                FilterTabsView.this.aActiveTextColorKey = -1;
                FilterTabsView.this.aUnactiveTextColorKey = -1;
                FilterTabsView.this.aBackgroundColorKey = -1;
            }
        });
        this.colorChangeAnimator.start();
    }

    public int getCurrentTabId() {
        return this.selectedTabId;
    }

    public int getFirstTabId() {
        return this.positionToId.get(0, 0);
    }

    public int getLastTabId() {
        return this.positionToId.get(getTabsCount() - 1, 0);
    }

    public int getSelectorColorKey() {
        return this.selectorColorKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTabsWidths() {
        this.positionToX.clear();
        this.positionToWidth.clear();
        this.positionToCount.clear();
        int paddingTab = this.listViewPaddingH;
        int size = this.tabs.size();
        for (int i = 0; i < size; i++) {
            int width = ((Tab) this.tabs.get(i)).getWidth(false);
            this.positionToWidth.put(i, width);
            this.positionToCount.put(i, ((Tab) this.tabs.get(i)).counter);
            this.positionToX.put(i, (this.additionalTabWidth / 2) + paddingTab);
            paddingTab += width + FolderIcons.getPaddingTab() + this.additionalTabWidth;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00a0  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (view == this.listView) {
            drawSelector(canvas);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jMin = Math.min(17L, jElapsedRealtime - this.lastEditingAnimationTime);
        this.lastEditingAnimationTime = jElapsedRealtime;
        boolean z = this.isEditing;
        boolean z2 = true;
        if (z || this.editingAnimationProgress != 0.0f) {
            if (this.editingForwardAnimation) {
                float f = this.editingAnimationProgress;
                boolean z3 = f <= 0.0f;
                float f2 = f + (jMin / 420.0f);
                this.editingAnimationProgress = f2;
                if (!z && z3 && f2 >= 0.0f) {
                    this.editingAnimationProgress = 0.0f;
                }
                if (this.editingAnimationProgress >= 1.0f) {
                    this.editingAnimationProgress = 1.0f;
                    this.editingForwardAnimation = false;
                }
            } else {
                float f3 = this.editingAnimationProgress;
                z = f3 >= 0.0f;
                float f4 = f3 - (jMin / 420.0f);
                this.editingAnimationProgress = f4;
                if (!z && z && f4 <= 0.0f) {
                    this.editingAnimationProgress = 0.0f;
                }
                if (this.editingAnimationProgress <= -1.0f) {
                    this.editingAnimationProgress = -1.0f;
                    this.editingForwardAnimation = true;
                }
            }
            z = true;
        }
        if (z) {
            float f5 = this.editingStartAnimationProgress;
            if (f5 < 1.0f) {
                float f6 = f5 + (jMin / 180.0f);
                this.editingStartAnimationProgress = f6;
                if (f6 > 1.0f) {
                    this.editingStartAnimationProgress = 1.0f;
                }
            } else {
                z2 = z;
            }
        } else if (!z) {
            float f7 = this.editingStartAnimationProgress;
            if (f7 > 0.0f) {
                float f8 = f7 - (jMin / 180.0f);
                this.editingStartAnimationProgress = f8;
                if (f8 < 0.0f) {
                    this.editingStartAnimationProgress = 0.0f;
                }
            }
        }
        if (z2) {
            this.listView.invalidateViews();
            this.listView.invalidate();
            invalidate();
        }
        return zDrawChild;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawSelector(Canvas canvas) {
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        int i;
        int i2;
        float fLerp;
        int paddingTab;
        float fLerp2;
        float x;
        float fLerp3;
        float measuredWidth;
        int measuredHeight = getMeasuredHeight();
        this.selectorDrawable.setAlpha((int) (this.listView.getAlpha() * 255.0f));
        if (this.animatingIndicator || this.manualScrollingToPosition != -1) {
            int iFindFirstVisibleItemPosition = this.layoutManager.findFirstVisibleItemPosition();
            if (iFindFirstVisibleItemPosition == -1 || (viewHolderFindViewHolderForAdapterPosition = this.listView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition)) == null) {
                fLerp2 = 0.0f;
                x = 0.0f;
            } else {
                if (this.animatingIndicator) {
                    i = this.previousPosition;
                    i2 = this.currentPosition;
                } else {
                    i = this.currentPosition;
                    i2 = this.manualScrollingToPosition;
                }
                int i3 = this.positionToX.get(i);
                int i4 = this.positionToX.get(i2);
                int i5 = this.positionToWidth.get(i);
                int i6 = this.positionToWidth.get(i2);
                float f = this.positionToCount.get(i) != 0 ? 1.0f : 0.0f;
                float f2 = this.positionToCount.get(i2) != 0 ? 1.0f : 0.0f;
                if (this.additionalTabWidth != 0) {
                    fLerp = AndroidUtilities.lerp(i3, i4, this.animatingIndicatorProgress);
                    paddingTab = FolderIcons.getPaddingTab();
                } else {
                    fLerp = AndroidUtilities.lerp(i3, i4, this.animatingIndicatorProgress) - (this.positionToX.get(iFindFirstVisibleItemPosition) - viewHolderFindViewHolderForAdapterPosition.itemView.getLeft());
                    paddingTab = FolderIcons.getPaddingTab();
                }
                float f3 = fLerp + (paddingTab / 2.0f);
                fLerp2 = AndroidUtilities.lerp(i5, i6, this.animatingIndicatorProgress);
                AndroidUtilities.lerp(f, f2, this.animatingIndicatorProgress);
                x = f3;
            }
        } else {
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.listView.findViewHolderForAdapterPosition(this.currentPosition);
            if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                TabView tabView = (TabView) viewHolderFindViewHolderForAdapterPosition2.itemView;
                if (tabView.animateTabWidth) {
                    fLerp3 = AndroidUtilities.lerp(tabView.animateFromTabWidth, tabView.tabWidth, tabView.changeProgress);
                } else {
                    fLerp3 = tabView.tabWidth;
                }
                fLerp2 = Math.max(AndroidUtilities.m1124dp(16.0f), fLerp3);
                if (tabView.animateTabWidth) {
                    measuredWidth = AndroidUtilities.lerp(tabView.animateFromTabWidth + AndroidUtilities.m1124dp(20.0f), tabView.getMeasuredWidth(), tabView.changeProgress);
                } else {
                    measuredWidth = tabView.getMeasuredWidth();
                }
                x = (int) (tabView.getX() + ((measuredWidth - fLerp2) / 2.0f));
                float unused = tabView.tabCounterVisible;
            }
        }
        if (fLerp2 != 0.0f) {
            canvas.save();
            canvas.translate(this.listView.getTranslationX(), 0.0f);
            canvas.scale(this.listView.getScaleX(), 1.0f, this.listView.getPivotX() + this.listView.getX(), this.listView.getPivotY());
            float f4 = this.additionalTabWidth / 2.0f;
            int iM1124dp = (measuredHeight / 2) - AndroidUtilities.m1124dp(14.0f);
            this.selectorDrawable.setBounds((int) ((x - AndroidUtilities.m1124dp(12.5f)) - f4), iM1124dp, (int) (x + fLerp2 + AndroidUtilities.m1124dp(12.5f) + f4), AndroidUtilities.m1124dp(28.0f) + iM1124dp);
            this.selectorDrawable.setAlpha(31);
            this.selectorDrawable.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.clipPath.rewind();
        this.clipPath.addRoundRect(AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(9.0f), i - AndroidUtilities.m1124dp(9.0f), i2 - AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(16.0f), Path.Direction.CW);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.clipPath);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public void updateColors() {
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.blurredBackgroundDrawable;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.updateColors();
        }
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.tabs.isEmpty()) {
            int size = View.MeasureSpec.getSize(i) - (this.listViewPaddingH * 2);
            Tab tabFindDefaultTab = findDefaultTab();
            if (tabFindDefaultTab != null || ExteraConfig.hideAllChats) {
                if (!ExteraConfig.hideAllChats) {
                    int width = 0;
                    for (int i3 = 0; i3 < this.tabs.size(); i3++) {
                        Tab tab = (Tab) this.tabs.get(i3);
                        if (tab != tabFindDefaultTab) {
                            width += tab.getWidth(true) + FolderIcons.getPaddingTab();
                        }
                    }
                    String string = LocaleController.getString(C2888R.string.FilterAllChats);
                    String string2 = LocaleController.getString(C2888R.string.FilterAllChatsShort);
                    tabFindDefaultTab.setTitle(string, null, false);
                    int width2 = tabFindDefaultTab.getWidth(true) + FolderIcons.getPaddingTab();
                    if (!this.isStaticAllChats && width2 + width > size) {
                        string = string2;
                    }
                    tabFindDefaultTab.setTitle(string, null, false);
                    this.allTabsWidth = width + tabFindDefaultTab.getWidth(true) + FolderIcons.getPaddingTab();
                }
                int i4 = this.allTabsWidth;
                int i5 = this.additionalTabWidth;
                int size2 = i4 < size ? (size - i4) / this.tabs.size() : 0;
                this.additionalTabWidth = size2;
                if (i5 != size2) {
                    this.ignoreLayout = true;
                    RecyclerView.ItemAnimator itemAnimator = this.listView.getItemAnimator();
                    this.listView.setItemAnimator(null);
                    this.adapter.notifyDataSetChanged();
                    this.listView.setItemAnimator(itemAnimator);
                    this.ignoreLayout = false;
                }
                updateTabsWidths();
                this.invalidated = false;
            }
        }
        super.onMeasure(i, i2);
    }

    private Tab findDefaultTab() {
        for (int i = 0; i < this.tabs.size(); i++) {
            if (((Tab) this.tabs.get(i)).isDefault) {
                return (Tab) this.tabs.get(i);
            }
        }
        return null;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    private void scrollToChild(int i, boolean z) {
        if (this.tabs.isEmpty() || this.scrollingToChild == i || i < 0 || i >= this.tabs.size()) {
            return;
        }
        this.scrollingToChild = i;
        if (z) {
            this.listView.smoothScrollToPosition(i);
        } else {
            this.listView.scrollToPosition(i);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        if (this.prevLayoutWidth != i5) {
            this.prevLayoutWidth = i5;
            this.scrollingToChild = -1;
            if (this.animatingIndicator) {
                AndroidUtilities.cancelRunOnUIThread(this.animationRunnable);
                this.animatingIndicator = false;
                setEnabled(true);
                FilterTabsViewDelegate filterTabsViewDelegate = this.delegate;
                if (filterTabsViewDelegate != null) {
                    filterTabsViewDelegate.onPageScrolled(1.0f);
                }
            }
        }
    }

    public void selectTabWithId(int i, float f) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 < 0) {
            return;
        }
        if (f < 0.0f) {
            f = 0.0f;
        } else if (f > 1.0f) {
            f = 1.0f;
        }
        if (f > 0.0f) {
            this.manualScrollingToPosition = i2;
            this.manualScrollingToId = i;
        } else {
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
        }
        this.animatingIndicatorProgress = f;
        this.listView.invalidateViews();
        this.listView.invalidate();
        invalidate();
        scrollToChild(i2, f < 1.0f);
        if ((f >= 0.5f && this.oldAnimatedTab != i2) || (f <= 0.5f && this.oldAnimatedTab != this.currentPosition)) {
            int i3 = this.manualScrollingToPosition;
            int i4 = this.currentPosition;
            if (i3 != i4) {
                if (f < 0.5f) {
                    i2 = i4;
                }
                this.delegate.onTabSelected((Tab) this.tabs.get(i2), this.currentPosition < i2, true);
                this.oldAnimatedTab = i2;
            }
        }
        if (f >= 1.0f) {
            this.manualScrollingToPosition = -1;
            this.manualScrollingToId = -1;
            this.currentPosition = i2;
            this.selectedTabId = i;
        }
    }

    public boolean isEditing() {
        return this.isEditing;
    }

    public void setIsEditing(boolean z) {
        this.isEditing = z;
        this.editingForwardAnimation = true;
        this.listView.invalidateViews();
        this.listView.invalidate();
        this.adapter.notifyDataSetChanged();
        invalidate();
        if (this.isEditing || !this.orderChanged) {
            return;
        }
        MessagesStorage.getInstance(UserConfig.selectedAccount).saveDialogFiltersOrder();
        TLRPC.TL_messages_updateDialogFiltersOrder tL_messages_updateDialogFiltersOrder = new TLRPC.TL_messages_updateDialogFiltersOrder();
        ArrayList<MessagesController.DialogFilter> dialogFilters = MessagesController.getInstance(UserConfig.selectedAccount).getDialogFilters();
        int size = dialogFilters.size();
        for (int i = 0; i < size; i++) {
            MessagesController.DialogFilter dialogFilter = dialogFilters.get(i);
            if (dialogFilter.isDefault()) {
                tL_messages_updateDialogFiltersOrder.order.add(0);
            } else {
                tL_messages_updateDialogFiltersOrder.order.add(Integer.valueOf(dialogFilter.f1601id));
            }
        }
        MessagesController.getInstance(UserConfig.selectedAccount).lockFiltersInternal();
        ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tL_messages_updateDialogFiltersOrder, new RequestDelegate() { // from class: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                FilterTabsView.$r8$lambda$LUlLhaIciS00vlgmp_dSDwB023s(tLObject, tL_error);
            }
        });
        this.orderChanged = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkTabsCounter() {
        int size = this.tabs.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            Tab tab = (Tab) this.tabs.get(i);
            if (tab.counter != this.delegate.getTabCounter(tab.f1960id) && this.delegate.getTabCounter(tab.f1960id) >= 0) {
                if (this.positionToWidth.get(i) != tab.getWidth(true) || this.invalidated) {
                    this.invalidated = true;
                    requestLayout();
                    this.allTabsWidth = 0;
                    for (int i2 = 0; i2 < size; i2++) {
                        this.allTabsWidth += ((Tab) this.tabs.get(i2)).getWidth(true) + FolderIcons.getPaddingTab();
                    }
                    z = true;
                    if (z) {
                        return;
                    }
                    this.listView.setItemAnimator(this.itemAnimator);
                    this.adapter.notifyDataSetChanged();
                    return;
                }
                z = true;
            }
        }
        if (z) {
        }
    }

    public void notifyTabCounterChanged(int i) {
        int i2 = this.idToPosition.get(i, -1);
        if (i2 < 0 || i2 >= this.tabs.size()) {
            return;
        }
        Tab tab = (Tab) this.tabs.get(i2);
        if (tab.counter == this.delegate.getTabCounter(tab.f1960id) || this.delegate.getTabCounter(tab.f1960id) < 0) {
            return;
        }
        this.listView.invalidateViews();
        if (this.positionToWidth.get(i2) != tab.getWidth(true) || this.invalidated) {
            this.invalidated = true;
            requestLayout();
            this.listView.setItemAnimator(this.itemAnimator);
            this.adapter.notifyDataSetChanged();
            this.allTabsWidth = 0;
            int size = this.tabs.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.allTabsWidth += ((Tab) this.tabs.get(i3)).getWidth(true) + FolderIcons.getPaddingTab();
            }
        }
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FilterTabsView.this.tabs.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return FilterTabsView.this.positionToStableId.get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerListView.Holder(FilterTabsView.this.new TabView(this.mContext));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TabView tabView = (TabView) viewHolder.itemView;
            int id = tabView.currentTab != null ? tabView.getId() : -1;
            tabView.setTab((Tab) FilterTabsView.this.tabs.get(i), i);
            if (id != tabView.getId()) {
                tabView.progressToLocked = tabView.currentTab.isLocked ? 1.0f : 0.0f;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00f5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void swapElements(int i, int i2) {
            int i3;
            int i4;
            int size = FilterTabsView.this.tabs.size();
            if (i < 0 || i2 < 0 || i >= size || i2 >= size) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = MessagesController.getInstance(UserConfig.selectedAccount).getDialogFilters();
            if (ExteraConfig.hideAllChats) {
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    if (i6 >= dialogFilters.size()) {
                        break;
                    }
                    if (dialogFilters.get(i6).isDefault()) {
                        i5 = i6;
                        break;
                    }
                    i6++;
                }
                i3 = i >= i5 ? i + 1 : i;
                if (i2 >= i5) {
                    i4 = i2 + 1;
                }
                MessagesController.DialogFilter dialogFilter = dialogFilters.get(i3);
                MessagesController.DialogFilter dialogFilter2 = dialogFilters.get(i4);
                int i7 = dialogFilter.order;
                dialogFilter.order = dialogFilter2.order;
                dialogFilter2.order = i7;
                dialogFilters.set(i3, dialogFilter2);
                dialogFilters.set(i4, dialogFilter);
                Tab tab = (Tab) FilterTabsView.this.tabs.get(i);
                Tab tab2 = (Tab) FilterTabsView.this.tabs.get(i2);
                int i8 = tab.f1960id;
                tab.f1960id = tab2.f1960id;
                tab2.f1960id = i8;
                int i9 = FilterTabsView.this.positionToStableId.get(i);
                FilterTabsView.this.positionToStableId.put(i, FilterTabsView.this.positionToStableId.get(i2));
                FilterTabsView.this.positionToStableId.put(i2, i9);
                FilterTabsView.this.delegate.onPageReorder(tab2.f1960id, tab.f1960id);
                if (FilterTabsView.this.currentPosition != i) {
                    FilterTabsView.this.currentPosition = i2;
                    FilterTabsView.this.selectedTabId = tab.f1960id;
                } else if (FilterTabsView.this.currentPosition == i2) {
                    FilterTabsView.this.currentPosition = i;
                    FilterTabsView.this.selectedTabId = tab2.f1960id;
                }
                if (FilterTabsView.this.previousPosition != i) {
                    FilterTabsView.this.previousPosition = i2;
                    FilterTabsView.this.previousId = tab.f1960id;
                } else if (FilterTabsView.this.previousPosition == i2) {
                    FilterTabsView.this.previousPosition = i;
                    FilterTabsView.this.previousId = tab2.f1960id;
                }
                FilterTabsView.this.tabs.set(i, tab2);
                FilterTabsView.this.tabs.set(i2, tab);
                FilterTabsView.this.updateTabsWidths();
                FilterTabsView.this.orderChanged = true;
                FilterTabsView.this.listView.setItemAnimator(FilterTabsView.this.itemAnimator);
                notifyItemMoved(i, i2);
            }
            i3 = i;
            i4 = i2;
            MessagesController.DialogFilter dialogFilter3 = dialogFilters.get(i3);
            MessagesController.DialogFilter dialogFilter22 = dialogFilters.get(i4);
            int i72 = dialogFilter3.order;
            dialogFilter3.order = dialogFilter22.order;
            dialogFilter22.order = i72;
            dialogFilters.set(i3, dialogFilter22);
            dialogFilters.set(i4, dialogFilter3);
            Tab tab3 = (Tab) FilterTabsView.this.tabs.get(i);
            Tab tab22 = (Tab) FilterTabsView.this.tabs.get(i2);
            int i82 = tab3.f1960id;
            tab3.f1960id = tab22.f1960id;
            tab22.f1960id = i82;
            int i92 = FilterTabsView.this.positionToStableId.get(i);
            FilterTabsView.this.positionToStableId.put(i, FilterTabsView.this.positionToStableId.get(i2));
            FilterTabsView.this.positionToStableId.put(i2, i92);
            FilterTabsView.this.delegate.onPageReorder(tab22.f1960id, tab3.f1960id);
            if (FilterTabsView.this.currentPosition != i) {
            }
            if (FilterTabsView.this.previousPosition != i) {
            }
            FilterTabsView.this.tabs.set(i, tab22);
            FilterTabsView.this.tabs.set(i2, tab3);
            FilterTabsView.this.updateTabsWidths();
            FilterTabsView.this.orderChanged = true;
            FilterTabsView.this.listView.setItemAnimator(FilterTabsView.this.itemAnimator);
            notifyItemMoved(i, i2);
        }

        public void moveElementToStart(int i) {
            int size = FilterTabsView.this.tabs.size();
            if (i < 0 || i >= size) {
                return;
            }
            ArrayList<MessagesController.DialogFilter> dialogFilters = MessagesController.getInstance(UserConfig.selectedAccount).getDialogFilters();
            int i2 = FilterTabsView.this.positionToStableId.get(i);
            int i3 = ((Tab) FilterTabsView.this.tabs.get(i)).f1960id;
            for (int i4 = i - 1; i4 >= 0; i4--) {
                FilterTabsView.this.positionToStableId.put(i4 + 1, FilterTabsView.this.positionToStableId.get(i4));
            }
            MessagesController.DialogFilter dialogFilterRemove = dialogFilters.remove(i);
            dialogFilterRemove.order = 0;
            dialogFilters.add(0, dialogFilterRemove);
            FilterTabsView.this.positionToStableId.put(0, i2);
            FilterTabsView.this.tabs.add(0, (Tab) FilterTabsView.this.tabs.remove(i));
            ((Tab) FilterTabsView.this.tabs.get(0)).f1960id = i3;
            for (int i5 = 0; i5 <= i; i5++) {
                ((Tab) FilterTabsView.this.tabs.get(i5)).f1960id = i5;
                dialogFilters.get(i5).order = i5;
            }
            int i6 = 0;
            while (i6 <= i) {
                if (FilterTabsView.this.currentPosition == i6) {
                    FilterTabsView filterTabsView = FilterTabsView.this;
                    int i7 = i6 == i ? 0 : i6 + 1;
                    filterTabsView.selectedTabId = i7;
                    filterTabsView.currentPosition = i7;
                }
                if (FilterTabsView.this.previousPosition == i6) {
                    FilterTabsView filterTabsView2 = FilterTabsView.this;
                    int i8 = i6 == i ? 0 : i6 + 1;
                    filterTabsView2.previousId = i8;
                    filterTabsView2.previousPosition = i8;
                }
                i6++;
            }
            notifyItemMoved(i, 0);
            FilterTabsView.this.delegate.onPageReorder(((Tab) FilterTabsView.this.tabs.get(i)).f1960id, i3);
            FilterTabsView.this.updateTabsWidths();
            FilterTabsView.this.orderChanged = true;
            FilterTabsView.this.listView.setItemAnimator(FilterTabsView.this.itemAnimator);
        }
    }

    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        private final Runnable resetDefaultPosition = new Runnable() { // from class: org.telegram.ui.Components.FilterTabsView$TouchHelperCallback$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return FilterTabsView.this.isEditing;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            if (!ExteraConfig.hideAllChats && (!FilterTabsView.this.isEditing || (viewHolder.getAdapterPosition() == 0 && ((Tab) FilterTabsView.this.tabs.get(0)).isDefault && !UserConfig.getInstance(UserConfig.selectedAccount).isPremium()))) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(12, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            if (!ExteraConfig.hideAllChats && ((viewHolder.getAdapterPosition() == 0 || viewHolder2.getAdapterPosition() == 0) && !UserConfig.getInstance(UserConfig.selectedAccount).isPremium())) {
                return false;
            }
            FilterTabsView.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            if (UserConfig.getInstance(UserConfig.selectedAccount).isPremium()) {
                return;
            }
            for (int i = 0; i < FilterTabsView.this.tabs.size(); i++) {
                if (((Tab) FilterTabsView.this.tabs.get(i)).isDefault && i != 0) {
                    FilterTabsView.this.adapter.moveElementToStart(i);
                    FilterTabsView.this.listView.scrollToPosition(0);
                    FilterTabsView.this.onDefaultTabMoved();
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                FilterTabsView.this.listView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
                viewHolder.itemView.setBackgroundColor(Theme.getColor(FilterTabsView.this.backgroundColorKey, FilterTabsView.this.resourcesProvider));
            } else {
                AndroidUtilities.cancelRunOnUIThread(this.resetDefaultPosition);
                AndroidUtilities.runOnUIThread(this.resetDefaultPosition, 320L);
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
            viewHolder.itemView.setBackground(null);
        }
    }

    public RecyclerListView getListView() {
        return this.listView;
    }

    public boolean currentTabIsDefault() {
        Tab tabFindDefaultTab = findDefaultTab();
        return tabFindDefaultTab != null && tabFindDefaultTab.f1960id == this.selectedTabId;
    }

    public int getDefaultTabId() {
        Tab tabFindDefaultTab = findDefaultTab();
        if (tabFindDefaultTab == null) {
            return -1;
        }
        return tabFindDefaultTab.f1960id;
    }

    public boolean isEmpty() {
        return this.tabs.isEmpty();
    }

    public boolean isFirstTabSelected() {
        return this.tabs.isEmpty() || this.selectedTabId == ((Tab) this.tabs.get(0)).f1960id;
    }

    public boolean isLocked(int i) {
        for (int i2 = 0; i2 < this.tabs.size(); i2++) {
            if (((Tab) this.tabs.get(i2)).f1960id == i) {
                return ((Tab) this.tabs.get(i2)).isLocked;
            }
        }
        return false;
    }

    public void shakeLock(int i) {
        for (int i2 = 0; i2 < this.listView.getChildCount(); i2++) {
            if (this.listView.getChildAt(i2) instanceof TabView) {
                TabView tabView = (TabView) this.listView.getChildAt(i2);
                if (tabView.currentTab.f1960id == i) {
                    tabView.shakeLockIcon(1.0f, 0);
                    try {
                        tabView.performHapticFeedback(3);
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
            }
        }
    }
}
