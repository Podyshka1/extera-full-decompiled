package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.EmojiView;
import org.telegram.p029ui.Components.Premium.PremiumLockIconView;
import org.telegram.p029ui.Components.Reactions.HwEmojis;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public abstract class EmojiTabsStrip extends ScrollableHorizontalScrollView {
    private final int accentColor;
    public boolean animateAppear;
    private int animatedEmojiCacheType;
    private ValueAnimator appearAnimation;
    private int appearCount;
    private int currentType;
    private EmojiTabsView emojiTabs;
    boolean first;
    private boolean forceTabsShow;
    private int giftsDrawableId;
    private boolean giftsFirstChange;
    private boolean giftsIsShown;
    public EmojiTabButton giftsTab;
    private boolean includeAnimated;
    private final boolean isGlassDesign;
    private Runnable onSettingsOpenRunnable;
    private int packsIndexStart;
    private float paddingLeftDp;
    private int recentDrawableId;
    private boolean recentFirstChange;
    private boolean recentIsShown;
    public EmojiTabButton recentTab;
    private HashMap removingViews;
    private Theme.ResourcesProvider resourcesProvider;
    private float selectAnimationT;
    private ValueAnimator selectAnimator;
    private float selectT;
    private int selected;
    private int selectedFullIndex;
    private int settingsDrawableId;
    private EmojiTabButton settingsTab;
    private boolean showSelected;
    private AnimatedFloat showSelectedAlpha;
    public EmojiTabButton toggleEmojiStickersTab;
    public boolean updateButtonDrawables;
    private boolean wasDrawn;
    private int wasIndex;
    private static int[] emojiTabsDrawableIds = {C2888R.drawable.msg_emoji_smiles, C2888R.drawable.msg_emoji_cat, C2888R.drawable.msg_emoji_food, C2888R.drawable.msg_emoji_activities, C2888R.drawable.msg_emoji_travel, C2888R.drawable.msg_emoji_objects, C2888R.drawable.msg_emoji_other, C2888R.drawable.msg_emoji_flags};
    private static int[] emojiTabsAnimatedDrawableIds = {C2888R.raw.msg_emoji_smiles, C2888R.raw.msg_emoji_cat, C2888R.raw.msg_emoji_food, C2888R.raw.msg_emoji_activities, C2888R.raw.msg_emoji_travel, C2888R.raw.msg_emoji_objects, C2888R.raw.msg_emoji_other, C2888R.raw.msg_emoji_flags};

    protected boolean allowEmojisForNonPremium() {
        return false;
    }

    protected boolean doIncludeFeatured() {
        return true;
    }

    protected abstract boolean onTabClick(int i);

    protected void onTabCreate(EmojiTabButton emojiTabButton) {
    }

    @Override // org.telegram.p029ui.Components.ScrollableHorizontalScrollView, android.widget.HorizontalScrollView, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // org.telegram.p029ui.Components.ScrollableHorizontalScrollView
    public /* bridge */ /* synthetic */ void scrollTo(int i) {
        super.scrollTo(i);
    }

    @Override // org.telegram.p029ui.Components.ScrollableHorizontalScrollView
    public /* bridge */ /* synthetic */ boolean scrollToVisible(int i, int i2) {
        return super.scrollToVisible(i, i2);
    }

    public EmojiTabsStrip(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2, boolean z3, boolean z4, int i, Runnable runnable) {
        this(context, resourcesProvider, z, z2, z3, z4, i, runnable, Theme.getColor(Theme.key_windowBackgroundWhiteBlueIcon, resourcesProvider), false);
    }

    public EmojiTabsStrip(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2, boolean z3, boolean z4, int i, Runnable runnable, boolean z5) {
        this(context, resourcesProvider, z, z2, z3, z4, i, runnable, Theme.getColor(Theme.key_windowBackgroundWhiteBlueIcon, resourcesProvider), z5);
    }

    public EmojiTabsStrip(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2, boolean z3, boolean z4, int i, Runnable runnable, int i2) {
        this(context, resourcesProvider, z, z2, z3, z4, i, runnable, i2, false);
    }

    public EmojiTabsStrip(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2, boolean z3, final boolean z4, int i, Runnable runnable, int i2, final boolean z5) {
        super(context);
        this.recentDrawableId = C2888R.drawable.msg_emoji_recent;
        this.giftsDrawableId = C2888R.drawable.msg_emoji_gem;
        this.settingsDrawableId = C2888R.drawable.smiles_tab_settings;
        this.forceTabsShow = !UserConfig.getInstance(UserConfig.selectedAccount).isPremium();
        this.showSelected = true;
        this.removingViews = new HashMap();
        this.selectT = 0.0f;
        this.selectAnimationT = 0.0f;
        this.selected = 0;
        this.selectedFullIndex = 0;
        this.wasIndex = 0;
        this.animateAppear = true;
        this.animatedEmojiCacheType = 6;
        this.updateButtonDrawables = true;
        this.recentFirstChange = true;
        this.recentIsShown = true;
        this.giftsFirstChange = true;
        this.giftsIsShown = false;
        this.first = true;
        this.paddingLeftDp = 11.0f;
        this.includeAnimated = z4;
        this.resourcesProvider = resourcesProvider;
        this.onSettingsOpenRunnable = runnable;
        this.currentType = i;
        this.accentColor = i2;
        this.isGlassDesign = z5;
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.EmojiTabsStrip.1
            private final LongSparseArray lastX = new LongSparseArray();
            private final Paint paint = new Paint(1);
            private final RectF from = new RectF();

            /* JADX INFO: renamed from: to */
            private final RectF f1955to = new RectF();
            private final RectF rect = new RectF();
            private final Path path = new Path();

            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z6, int i3, int i4, int i5, int i6) {
                int i7 = (i6 - i4) / 2;
                if (z4) {
                    int paddingLeft = getPaddingLeft();
                    for (int i8 = 0; i8 < getChildCount(); i8++) {
                        View childAt = getChildAt(i8);
                        if (childAt != EmojiTabsStrip.this.settingsTab && !EmojiTabsStrip.this.removingViews.containsKey(childAt) && childAt != null) {
                            childAt.layout(paddingLeft, i7 - (childAt.getMeasuredHeight() / 2), childAt.getMeasuredWidth() + paddingLeft, (childAt.getMeasuredHeight() / 2) + i7);
                            boolean z7 = childAt instanceof EmojiTabButton;
                            Long lM1256id = z7 ? ((EmojiTabButton) childAt).m1256id() : childAt instanceof EmojiTabsView ? Long.valueOf(((EmojiTabsView) childAt).f1957id) : null;
                            if (EmojiTabsStrip.this.animateAppear && z7) {
                                EmojiTabButton emojiTabButton = (EmojiTabButton) childAt;
                                if (emojiTabButton.newly) {
                                    emojiTabButton.newly = false;
                                    childAt.setScaleX(0.0f);
                                    childAt.setScaleY(0.0f);
                                    childAt.setAlpha(0.0f);
                                    childAt.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(HwEmojis.isHwEnabledOrPreparing() ? 0L : 200L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                                }
                            }
                            if (lM1256id != null) {
                                Integer num = (Integer) this.lastX.get(lM1256id.longValue());
                                if (num != null && num.intValue() != paddingLeft && Math.abs(num.intValue() - paddingLeft) < AndroidUtilities.m1124dp(45.0f)) {
                                    childAt.setTranslationX(num.intValue() - paddingLeft);
                                    childAt.animate().translationX(0.0f).setDuration(250L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                                }
                                this.lastX.put(lM1256id.longValue(), Integer.valueOf(paddingLeft));
                            }
                            EmojiTabsStrip emojiTabsStrip = EmojiTabsStrip.this;
                            if (childAt != emojiTabsStrip.recentTab || emojiTabsStrip.recentIsShown) {
                                EmojiTabsStrip emojiTabsStrip2 = EmojiTabsStrip.this;
                                if (childAt != emojiTabsStrip2.giftsTab || emojiTabsStrip2.giftsIsShown) {
                                    paddingLeft += childAt.getMeasuredWidth() + AndroidUtilities.m1124dp(3.0f);
                                }
                            }
                        }
                    }
                    if (EmojiTabsStrip.this.settingsTab != null) {
                        Long l = EmojiTabsStrip.this.settingsTab.f1956id;
                        if (EmojiTabsStrip.this.settingsTab.getMeasuredWidth() + paddingLeft + getPaddingRight() <= EmojiTabsStrip.this.getMeasuredWidth()) {
                            EmojiTabButton emojiTabButton2 = EmojiTabsStrip.this.settingsTab;
                            int i9 = i5 - i3;
                            int paddingRight = (i9 - getPaddingRight()) - EmojiTabsStrip.this.settingsTab.getMeasuredWidth();
                            emojiTabButton2.layout(paddingRight, i7 - (EmojiTabsStrip.this.settingsTab.getMeasuredHeight() / 2), i9 - getPaddingRight(), i7 + (EmojiTabsStrip.this.settingsTab.getMeasuredHeight() / 2));
                            paddingLeft = paddingRight;
                        } else {
                            EmojiTabsStrip.this.settingsTab.layout(paddingLeft, i7 - (EmojiTabsStrip.this.settingsTab.getMeasuredHeight() / 2), EmojiTabsStrip.this.settingsTab.getMeasuredWidth() + paddingLeft, i7 + (EmojiTabsStrip.this.settingsTab.getMeasuredHeight() / 2));
                        }
                        if (l != null) {
                            if (this.lastX.get(l.longValue()) != null && ((Integer) this.lastX.get(l.longValue())).intValue() != paddingLeft) {
                                EmojiTabsStrip.this.settingsTab.setTranslationX(((Integer) this.lastX.get(l.longValue())).intValue() - paddingLeft);
                                EmojiTabsStrip.this.settingsTab.animate().translationX(0.0f).setDuration(350L).start();
                            }
                            this.lastX.put(l.longValue(), Integer.valueOf(paddingLeft));
                            return;
                        }
                        return;
                    }
                    return;
                }
                int childCount = (getChildCount() - (!EmojiTabsStrip.this.recentIsShown ? 1 : 0)) - (!EmojiTabsStrip.this.giftsIsShown ? 1 : 0);
                int paddingLeft2 = (int) (((((i5 - i3) - getPaddingLeft()) - getPaddingRight()) - (AndroidUtilities.m1124dp(30.0f) * childCount)) / Math.max(1, childCount - 1));
                int paddingLeft3 = getPaddingLeft();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt2 = getChildAt((!EmojiTabsStrip.this.recentIsShown ? 1 : 0) + (!EmojiTabsStrip.this.giftsIsShown ? 1 : 0) + i10);
                    if (childAt2 != null) {
                        childAt2.layout(paddingLeft3, i7 - (childAt2.getMeasuredHeight() / 2), childAt2.getMeasuredWidth() + paddingLeft3, (childAt2.getMeasuredHeight() / 2) + i7);
                        paddingLeft3 += childAt2.getMeasuredWidth() + paddingLeft2;
                    }
                }
            }

            @Override // android.widget.LinearLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                EmojiTabButton emojiTabButton;
                EmojiTabButton emojiTabButton2;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(99999999, Integer.MIN_VALUE);
                float fM1124dp = 0.0f;
                int paddingLeft = (getPaddingLeft() + getPaddingRight()) - ((int) ((EmojiTabsStrip.this.recentIsShown || (emojiTabButton2 = EmojiTabsStrip.this.recentTab) == null) ? 0.0f : emojiTabButton2.getAlpha() * AndroidUtilities.m1124dp(33.0f)));
                if (!EmojiTabsStrip.this.giftsIsShown && (emojiTabButton = EmojiTabsStrip.this.giftsTab) != null) {
                    fM1124dp = AndroidUtilities.m1124dp(33.0f) * emojiTabButton.getAlpha();
                }
                int measuredWidth = paddingLeft - ((int) fM1124dp);
                for (int i5 = 0; i5 < getChildCount(); i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt != null) {
                        childAt.measure(iMakeMeasureSpec, i4);
                        measuredWidth += childAt.getMeasuredWidth() + (i5 + 1 < getChildCount() ? AndroidUtilities.m1124dp(3.0f) : 0);
                    }
                }
                if (!z4) {
                    setMeasuredDimension(View.MeasureSpec.getSize(i3), View.MeasureSpec.getSize(i4));
                } else {
                    setMeasuredDimension(Math.max(measuredWidth, View.MeasureSpec.getSize(i3)), View.MeasureSpec.getSize(i4));
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                for (Map.Entry entry : EmojiTabsStrip.this.removingViews.entrySet()) {
                    View view = (View) entry.getKey();
                    if (view != null) {
                        Rect rect = (Rect) entry.getValue();
                        canvas.save();
                        canvas.translate(rect.left, rect.top);
                        canvas.scale(view.getScaleX(), view.getScaleY(), rect.width() / 2.0f, rect.height() / 2.0f);
                        view.draw(canvas);
                        canvas.restore();
                    }
                }
                if (EmojiTabsStrip.this.showSelectedAlpha == null) {
                    EmojiTabsStrip.this.showSelectedAlpha = new AnimatedFloat(this, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
                }
                float f = EmojiTabsStrip.this.showSelectedAlpha.set(EmojiTabsStrip.this.showSelected ? 1.0f : 0.0f);
                int iFloor = (int) Math.floor(EmojiTabsStrip.this.selectT);
                int iCeil = (int) Math.ceil(EmojiTabsStrip.this.selectT);
                getChildBounds(iFloor, this.from);
                getChildBounds(iCeil, this.f1955to);
                AndroidUtilities.lerp(this.from, this.f1955to, EmojiTabsStrip.this.selectT - iFloor, this.rect);
                float fClamp01 = EmojiTabsStrip.this.emojiTabs != null ? 1.0f - Utilities.clamp01(Math.abs(EmojiTabsStrip.this.selectT - ((EmojiTabsStrip.this.giftsTab != null ? 1 : 0) + 1))) : 0.0f;
                float f2 = EmojiTabsStrip.this.selectAnimationT * 4.0f * (1.0f - EmojiTabsStrip.this.selectAnimationT);
                float fWidth = (this.rect.width() / 2.0f) * ((0.3f * f2) + 1.0f);
                float fHeight = (this.rect.height() / 2.0f) * (1.0f - (f2 * 0.05f));
                RectF rectF = this.rect;
                rectF.set(rectF.centerX() - fWidth, this.rect.centerY() - fHeight, this.rect.centerX() + fWidth, this.rect.centerY() + fHeight);
                float fM1124dp = AndroidUtilities.m1124dp(AndroidUtilities.lerp(8.0f, 16.0f, fClamp01));
                this.paint.setColor(EmojiTabsStrip.this.selectorColor());
                if (EmojiTabsStrip.this.forceTabsShow) {
                    this.paint.setAlpha((int) (r7.getAlpha() * f * (1.0f - (fClamp01 * 0.5f))));
                } else {
                    this.paint.setAlpha((int) (r3.getAlpha() * f));
                }
                this.path.rewind();
                Path path = this.path;
                RectF rectF2 = this.rect;
                float fHeight2 = z5 ? rectF2.height() / 2.0f : fM1124dp;
                if (z5) {
                    fM1124dp = this.rect.height() / 2.0f;
                }
                Path.Direction direction = Path.Direction.CW;
                path.addRoundRect(rectF2, fHeight2, fM1124dp, direction);
                canvas.drawPath(this.path, this.paint);
                if (EmojiTabsStrip.this.forceTabsShow && z4) {
                    this.path.rewind();
                    getChildBounds(1, this.rect);
                    this.path.addRoundRect(this.rect, AndroidUtilities.dpf2(16.0f), AndroidUtilities.dpf2(16.0f), direction);
                    this.paint.setColor(EmojiTabsStrip.this.selectorColor());
                    this.paint.setAlpha((int) (r0.getAlpha() * 0.5f));
                    canvas.drawPath(this.path, this.paint);
                }
                if (EmojiTabsStrip.this.emojiTabs != null) {
                    this.path.addCircle(EmojiTabsStrip.this.emojiTabs.getLeft() + AndroidUtilities.m1124dp(15.0f), (EmojiTabsStrip.this.emojiTabs.getTop() + EmojiTabsStrip.this.emojiTabs.getBottom()) / 2.0f, AndroidUtilities.m1124dp(15.0f), direction);
                }
                super.dispatchDraw(canvas);
                EmojiTabsStrip.this.wasDrawn = true;
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                if (view == EmojiTabsStrip.this.emojiTabs) {
                    canvas.save();
                    canvas.clipPath(this.path);
                    boolean zDrawChild = super.drawChild(canvas, view, j);
                    canvas.restore();
                    return zDrawChild;
                }
                return super.drawChild(canvas, view, j);
            }

            private void getChildBounds(int i3, RectF rectF) {
                View childAt = getChildAt(MathUtils.clamp(i3, 0, getChildCount() - 1));
                if (childAt == null) {
                    return;
                }
                rectF.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                rectF.set(rectF.centerX() - ((rectF.width() / 2.0f) * childAt.getScaleX()), rectF.centerY() - ((rectF.height() / 2.0f) * childAt.getScaleY()), rectF.centerX() + ((rectF.width() / 2.0f) * childAt.getScaleX()), rectF.centerY() + ((rectF.height() / 2.0f) * childAt.getScaleY()));
            }
        };
        this.contentView = linearLayout;
        linearLayout.setClipToPadding(false);
        this.contentView.setOrientation(0);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        addView(this.contentView);
        if (i == 4) {
            LinearLayout linearLayout2 = this.contentView;
            EmojiTabButton emojiTabButton = new EmojiTabButton(context, C2888R.drawable.msg_emoji_stickers, false, false);
            this.toggleEmojiStickersTab = emojiTabButton;
            linearLayout2.addView(emojiTabButton);
        }
        if (i == 3) {
            this.recentDrawableId = C2888R.drawable.msg_emoji_smiles;
        }
        if (i == 6) {
            this.recentDrawableId = C2888R.drawable.emoji_love;
        }
        if (z) {
            LinearLayout linearLayout3 = this.contentView;
            EmojiTabButton emojiTabButton2 = new EmojiTabButton(context, this.recentDrawableId, false, false);
            this.recentTab = emojiTabButton2;
            linearLayout3.addView(emojiTabButton2);
            this.recentTab.f1956id = Long.valueOf(-934918565);
        }
        if (z2) {
            LinearLayout linearLayout4 = this.contentView;
            EmojiTabButton emojiTabButton3 = new EmojiTabButton(context, this.giftsDrawableId, false, false);
            this.giftsTab = emojiTabButton3;
            linearLayout4.addView(emojiTabButton3);
            this.giftsTab.setAlpha(0.0f);
            this.giftsTab.f1956id = Long.valueOf(98352451);
        }
        if (z4) {
            if (z3) {
                LinearLayout linearLayout5 = this.contentView;
                EmojiTabsView emojiTabsView = new EmojiTabsView(context);
                this.emojiTabs = emojiTabsView;
                linearLayout5.addView(emojiTabsView);
                this.emojiTabs.f1957id = 3552126;
            }
            this.packsIndexStart = this.contentView.getChildCount();
            if (runnable != null) {
                LinearLayout linearLayout6 = this.contentView;
                EmojiTabButton emojiTabButton4 = new EmojiTabButton(context, this.settingsDrawableId, false, true);
                this.settingsTab = emojiTabButton4;
                linearLayout6.addView(emojiTabButton4);
                this.settingsTab.f1956id = Long.valueOf(1434631203);
                this.settingsTab.setAlpha(0.0f);
            }
            updateClickListeners();
            return;
        }
        int i3 = 0;
        while (true) {
            int[] iArr = emojiTabsDrawableIds;
            if (i3 < iArr.length) {
                this.contentView.addView(new EmojiTabButton(context, iArr[i3], false, i3 == 0));
                i3++;
            } else {
                updateClickListeners();
                return;
            }
        }
    }

    public void showRecentTabStub(boolean z) {
        EmojiTabButton emojiTabButton = this.recentTab;
        if (emojiTabButton == null) {
            return;
        }
        if (z) {
            emojiTabButton.setBackground(new StabDrawable(selectorColor()));
        } else {
            emojiTabButton.setBackground(null);
        }
    }

    public void showSelected(boolean z) {
        this.showSelected = z;
        this.contentView.invalidate();
    }

    public void showRecent(boolean z) {
        if (this.recentIsShown == z) {
            return;
        }
        this.recentIsShown = z;
        if (this.recentFirstChange) {
            this.recentTab.setAlpha(z ? 1.0f : 0.0f);
        } else {
            this.recentTab.animate().alpha(z ? 1.0f : 0.0f).setDuration(200L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        }
        if ((!z && this.selected == 0) || (z && this.selected == 1)) {
            select(0, !this.recentFirstChange);
        }
        this.contentView.requestLayout();
        this.recentFirstChange = false;
    }

    public void showGifts(final boolean z) {
        EmojiTabButton emojiTabButton = this.giftsTab;
        if (emojiTabButton != null) {
            boolean z2 = this.giftsFirstChange;
            if (z2 || this.giftsIsShown != z) {
                this.giftsIsShown = z;
                if (z2) {
                    emojiTabButton.setVisibility(z ? 0 : 8);
                    this.giftsTab.setAlpha(z ? 1.0f : 0.0f);
                } else {
                    emojiTabButton.setVisibility(0);
                    this.giftsTab.animate().alpha(z ? 1.0f : 0.0f).setDuration(200L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.EmojiTabsStrip$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$showGifts$0(z);
                        }
                    }).start();
                }
                this.contentView.requestLayout();
                this.giftsFirstChange = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGifts$0(boolean z) {
        if (z) {
            return;
        }
        this.giftsTab.setVisibility(8);
    }

    public boolean isGiftsVisible() {
        return this.giftsTab != null && this.giftsIsShown;
    }

    private TLRPC.Document getThumbDocument(TLRPC.StickerSet stickerSet, ArrayList arrayList) {
        if (stickerSet == null) {
            return null;
        }
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC.Document document = (TLRPC.Document) arrayList.get(i);
                if (document.f1668id == stickerSet.thumb_document_id) {
                    return document;
                }
            }
        }
        if (arrayList == null || arrayList.size() < 1) {
            return null;
        }
        return (TLRPC.Document) arrayList.get(0);
    }

    private static class StabDrawable extends Drawable {
        private final Paint paint;
        private final RectF rectF;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public StabDrawable(int i) {
            Paint paint = new Paint();
            this.paint = paint;
            this.rectF = new RectF();
            paint.setAlpha(45);
            paint.setColor(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.rectF.set(0.0f, 0.0f, AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(30.0f));
            canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(8.0f), AndroidUtilities.dpf2(8.0f), this.paint);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.paint.setAlpha(i);
        }
    }

    protected boolean isInstalled(EmojiView.EmojiPack emojiPack) {
        return emojiPack.installed;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.view.View, org.telegram.ui.Components.EmojiTabsStrip$EmojiTabButton] */
    /* JADX WARN: Type inference failed for: r0v26, types: [org.telegram.ui.Components.EmojiTabsStrip$EmojiTabButton] */
    /* JADX WARN: Type inference failed for: r0v28, types: [org.telegram.ui.Components.EmojiTabsStrip$EmojiTabButton] */
    /* JADX WARN: Type inference failed for: r0v29, types: [android.view.View, org.telegram.ui.Components.EmojiTabsStrip$EmojiTabButton] */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r13v2, types: [org.telegram.ui.Components.EmojiView$EmojiPack] */
    /* JADX WARN: Type inference failed for: r13v3, types: [org.telegram.ui.Components.EmojiView$EmojiPack] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r18v0, types: [android.view.View, org.telegram.ui.Components.EmojiTabsStrip, org.telegram.ui.Components.ScrollableHorizontalScrollView] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [org.telegram.ui.Components.EmojiView$EmojiPack] */
    /* JADX WARN: Type inference failed for: r2v43, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r2v51, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r2v59 */
    public void updateEmojiPacks(ArrayList arrayList) {
        ?? r13;
        int i;
        Boolean bool;
        if (this.includeAnimated) {
            if (!this.first || MediaDataController.getInstance(UserConfig.selectedAccount).areStickersLoaded(5)) {
                this.first = false;
                if (arrayList == null) {
                    return;
                }
                int childCount = (this.contentView.getChildCount() - this.packsIndexStart) - (this.settingsTab != null ? 1 : 0);
                if (childCount == 0 && arrayList.size() > 0 && this.appearCount != arrayList.size()) {
                    boolean z = this.wasDrawn;
                }
                Boolean bool2 = null;
                if (this.appearAnimation != null && this.appearCount != arrayList.size()) {
                    this.appearAnimation.cancel();
                    this.appearAnimation = null;
                }
                this.appearCount = arrayList.size();
                doIncludeFeatured();
                boolean z2 = UserConfig.getInstance(UserConfig.selectedAccount).isPremium() || allowEmojisForNonPremium();
                ArrayList arrayList2 = new ArrayList();
                int i2 = 0;
                while (i2 < Math.max(arrayList.size(), childCount)) {
                    ?? emojiTabButton = i2 < childCount ? (EmojiTabButton) this.contentView.getChildAt(this.packsIndexStart + i2) : bool2;
                    ?? r2 = i2 < arrayList.size() ? (EmojiView.EmojiPack) arrayList.get(i2) : bool2;
                    if (r2 == 0) {
                        if (emojiTabButton != 0) {
                            this.contentView.removeView(emojiTabButton);
                        }
                    } else if (r2.resId == 0) {
                        boolean z3 = r2.free;
                        Long l = r2.thumbDocumentId;
                        if (l == null) {
                            r13 = r2;
                            i = i2;
                            TLRPC.Document thumbDocument = getThumbDocument(r13.set, r13.documents);
                            if (emojiTabButton == 0) {
                                EmojiTabButton emojiTabButton2 = ((EmojiTabsStrip) this).new EmojiTabButton(getContext(), thumbDocument, z3, false, false);
                                onTabCreate(emojiTabButton2);
                                this.contentView.addView(emojiTabButton2, this.packsIndexStart + i);
                                emojiTabButton = emojiTabButton2;
                            } else {
                                emojiTabButton.setAnimatedEmojiDocument(thumbDocument);
                                emojiTabButton = emojiTabButton;
                            }
                            if (thumbDocument == null) {
                                emojiTabButton.setStickerThumb(r13);
                            }
                        } else if (emojiTabButton == 0) {
                            r13 = r2;
                            i = i2;
                            emojiTabButton = ((EmojiTabsStrip) this).new EmojiTabButton(getContext(), r2.thumbDocumentId.longValue(), z3, false, false);
                            z3 = z3;
                            onTabCreate(emojiTabButton);
                            this.contentView.addView(emojiTabButton, this.packsIndexStart + i);
                        } else {
                            r13 = r2;
                            i = i2;
                            emojiTabButton.setAnimatedEmojiDocumentId(l.longValue());
                        }
                        emojiTabButton.f1956id = r13.forGroup ? Long.valueOf(439488310) : null;
                        emojiTabButton.updateSelect(this.selected == i, false);
                        int i3 = this.currentType;
                        if (i3 == 4) {
                            emojiTabButton.setLock((z2 || z3) ? null : Boolean.TRUE, false);
                        } else {
                            if (i3 == 6 || i3 == 5 || i3 == 7) {
                                bool = null;
                                emojiTabButton.setLock(null, false);
                            } else if (!z2 && !z3) {
                                emojiTabButton.setLock(Boolean.TRUE, false);
                            } else if (!isInstalled(r13)) {
                                emojiTabButton.setLock(Boolean.FALSE, false);
                            } else {
                                bool = null;
                                emojiTabButton.setLock(null, false);
                            }
                            i2 = i + 1;
                            bool2 = bool;
                        }
                        bool = null;
                        i2 = i + 1;
                        bool2 = bool;
                    } else if (emojiTabButton == 0) {
                        EmojiTabButton emojiTabButton3 = new EmojiTabButton(getContext(), r2.resId, false, false);
                        onTabCreate(emojiTabButton3);
                        this.contentView.addView(emojiTabButton3, this.packsIndexStart + i2);
                    } else {
                        emojiTabButton.setDrawable(getResources().getDrawable(r2.resId).mutate());
                        emojiTabButton.updateColor();
                        emojiTabButton.setLock(bool2, false);
                    }
                    i = i2;
                    bool = bool2;
                    i2 = i + 1;
                    bool2 = bool;
                }
                EmojiTabButton emojiTabButton4 = this.settingsTab;
                if (emojiTabButton4 != null) {
                    emojiTabButton4.bringToFront();
                    if (this.settingsTab.getAlpha() < 1.0f) {
                        this.settingsTab.animate().alpha(1.0f).setDuration(HwEmojis.isHwEnabledOrPreparing() ? 0L : 200L).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
                    }
                }
                for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                    ((EmojiTabButton) arrayList2.get(i4)).keepAttached = false;
                    ((EmojiTabButton) arrayList2.get(i4)).updateAttachState();
                }
                updateClickListeners();
            }
        }
    }

    public void updateClickListeners() {
        int i = 0;
        final int i2 = 0;
        while (i < this.contentView.getChildCount()) {
            View childAt = this.contentView.getChildAt(i);
            if (childAt == this.giftsTab && !isGiftsVisible()) {
                i2--;
            } else if (childAt instanceof EmojiTabsView) {
                EmojiTabsView emojiTabsView = (EmojiTabsView) childAt;
                int i3 = 0;
                while (i3 < emojiTabsView.contentView.getChildCount()) {
                    emojiTabsView.contentView.getChildAt(i3).setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$updateClickListeners$1(i2, view);
                        }
                    });
                    i3++;
                    i2++;
                }
                i2--;
            } else if (childAt != null) {
                childAt.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$updateClickListeners$2(i2, view);
                    }
                });
            }
            i++;
            i2++;
        }
        EmojiTabButton emojiTabButton = this.settingsTab;
        if (emojiTabButton != null) {
            emojiTabButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateClickListeners$3(view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateClickListeners$1(int i, View view) {
        onTabClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateClickListeners$2(int i, View view) {
        onTabClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateClickListeners$3(View view) {
        Runnable runnable = this.onSettingsOpenRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setPaddingLeft(float f) {
        this.paddingLeftDp = f;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.contentView.setPadding(AndroidUtilities.m1124dp(this.paddingLeftDp), 0, AndroidUtilities.m1124dp(11.0f), 0);
        super.onMeasure(i, i2);
    }

    public void updateColors() {
        EmojiTabButton emojiTabButton = this.recentTab;
        if (emojiTabButton != null) {
            emojiTabButton.updateColor();
        }
    }

    public void select(int i) {
        select(i, true);
    }

    public void select(int i, boolean z) {
        int i2;
        int i3;
        boolean z2 = z && !this.first;
        EmojiTabButton emojiTabButton = this.toggleEmojiStickersTab;
        if (emojiTabButton != null) {
            i++;
        }
        if (!this.recentIsShown || emojiTabButton != null) {
            i = Math.max(1, i);
        }
        this.selectedFullIndex = i;
        int i4 = this.selected;
        int i5 = 0;
        int i6 = 0;
        while (i5 < this.contentView.getChildCount()) {
            View childAt = this.contentView.getChildAt(i5);
            if (childAt != this.giftsTab || isGiftsVisible()) {
                if (childAt instanceof EmojiTabsView) {
                    EmojiTabsView emojiTabsView = (EmojiTabsView) childAt;
                    int i7 = 0;
                    int i8 = i6;
                    while (i7 < emojiTabsView.contentView.getChildCount()) {
                        View childAt2 = emojiTabsView.contentView.getChildAt(i7);
                        if (childAt2 instanceof EmojiTabButton) {
                            ((EmojiTabButton) childAt2).updateSelect(i == i8, z2);
                        }
                        i7++;
                        i8++;
                    }
                    i2 = i8 - 1;
                } else {
                    if (childAt instanceof EmojiTabButton) {
                        ((EmojiTabButton) childAt).updateSelect(i == i6, z2);
                    }
                    i2 = i6;
                }
                if (i >= i6 && i <= i2) {
                    this.selected = i5;
                }
                i3 = i2;
            } else {
                i3 = i6 - 1;
            }
            i5++;
            i6 = i3 + 1;
        }
        if (i4 != this.selected) {
            ValueAnimator valueAnimator = this.selectAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            final float f = this.selectT;
            final float f2 = this.selected;
            if (z2) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.selectAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$$ExternalSyntheticLambda4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$select$4(f, f2, valueAnimator2);
                    }
                });
                this.selectAnimator.setDuration(350L);
                this.selectAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.selectAnimator.start();
            } else {
                this.selectAnimationT = 1.0f;
                this.selectT = AndroidUtilities.lerp(f, f2, 1.0f);
                this.contentView.invalidate();
            }
            EmojiTabsView emojiTabsView2 = this.emojiTabs;
            if (emojiTabsView2 != null) {
                emojiTabsView2.show(this.selected == 1 || this.forceTabsShow, z2);
            }
            View childAt3 = this.contentView.getChildAt(this.selected);
            if (this.selected >= 2) {
                scrollToVisible(childAt3.getLeft(), childAt3.getRight());
            } else {
                scrollTo(0);
            }
        }
        if (this.wasIndex != i) {
            EmojiTabsView emojiTabsView3 = this.emojiTabs;
            if (emojiTabsView3 != null && this.selected == 1 && i >= 1 && i <= emojiTabsView3.contentView.getChildCount() + 1) {
                int i9 = (i - 1) * 36;
                this.emojiTabs.scrollToVisible(AndroidUtilities.m1124dp(i9 - 6), AndroidUtilities.m1124dp(i9 + 24));
            }
            this.wasIndex = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$select$4(float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.selectAnimationT = fFloatValue;
        this.selectT = AndroidUtilities.lerp(f, f2, fFloatValue);
        this.contentView.invalidate();
    }

    protected ColorFilter getEmojiColorFilter() {
        return Theme.getAnimatedEmojiColorFilter(this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int selectorColor() {
        if (this.isGlassDesign) {
            return getGlassIconColor(0.05f);
        }
        int i = this.currentType;
        if (i == 5 || i == 7) {
            return Theme.multAlpha(this.accentColor, 0.09f);
        }
        return Theme.multAlpha(Theme.getColor(Theme.key_chat_emojiPanelIcon, this.resourcesProvider), 0.18f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getGlassIconColor(float f) {
        return ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_glass_defaultIcon, this.resourcesProvider), (int) (f * 255.0f));
    }

    public void setAnimatedEmojiCacheType(int i) {
        this.animatedEmojiCacheType = i;
    }

    public class EmojiTabButton extends ViewGroup {
        AnimatedEmojiDrawable animatedEmoji;
        TLRPC.Document animatedEmojiDocument;
        Long animatedEmojiDocumentId;
        boolean attached;
        private boolean forceSelector;

        /* JADX INFO: renamed from: id */
        public Long f1956id;
        private BackupImageView imageView;
        private boolean isAnimatedEmoji;
        private boolean isVisible;
        public boolean keepAttached;
        private ValueAnimator lockAnimator;
        private float lockT;
        private PremiumLockIconView lockView;
        private RLottieDrawable lottieDrawable;
        public boolean newly;
        private boolean round;
        private ValueAnimator selectAnimator;
        private float selectT;
        private boolean selected;
        EmojiView.EmojiPack setObject;
        public boolean shown;

        /* JADX INFO: renamed from: id */
        public Long m1256id() {
            TLRPC.StickerSet stickerSet;
            Long l = this.f1956id;
            if (l != null) {
                return l;
            }
            EmojiView.EmojiPack emojiPack = this.setObject;
            if (emojiPack != null && (stickerSet = emojiPack.set) != null) {
                return Long.valueOf(stickerSet.f1696id);
            }
            Long l2 = this.animatedEmojiDocumentId;
            if (l2 != null) {
                return l2;
            }
            TLRPC.Document document = this.animatedEmojiDocument;
            if (document != null) {
                return Long.valueOf(document.f1668id);
            }
            return null;
        }

        public EmojiTabButton(Context context, int i, int i2, boolean z, boolean z2) {
            super(context);
            this.shown = true;
            this.round = z;
            this.forceSelector = z2;
            if (z) {
                setBackground(Theme.createCircleSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 0, 0));
            } else if (z2 && EmojiTabsStrip.this.includeAnimated) {
                setBackground(Theme.createRadSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 8, 8));
            }
            RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, _UrlKt.FRAGMENT_ENCODE_SET + i2, AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f), false, null);
            this.lottieDrawable = rLottieDrawable;
            rLottieDrawable.setBounds(AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(27.0f), AndroidUtilities.m1124dp(27.0f));
            this.lottieDrawable.setMasterParent(this);
            this.lottieDrawable.setAllowDecodeSingleFrame(true);
            this.lottieDrawable.start();
            updateColor();
        }

        public EmojiTabButton(Context context, int i, boolean z, boolean z2) {
            super(context);
            this.shown = true;
            this.round = z;
            this.forceSelector = z2;
            if (z) {
                setBackground(Theme.createCircleSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 0, 0));
            } else if (z2 && EmojiTabsStrip.this.includeAnimated) {
                setBackground(Theme.createRadSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 8, 8));
            }
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.applyAttach = false;
            backupImageView.setImageDrawable(context.getResources().getDrawable(i).mutate());
            updateColor();
            addView(this.imageView);
        }

        public EmojiTabButton(Context context, TLRPC.Document document, boolean z, boolean z2, boolean z3) {
            super(context);
            this.shown = true;
            this.newly = true;
            this.round = z2;
            this.forceSelector = z3;
            if (z2) {
                setBackground(Theme.createCircleSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 0, 0));
            } else if (z3 && EmojiTabsStrip.this.includeAnimated) {
                setBackground(Theme.createRadSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 8, 8));
            }
            BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabButton.1
                @Override // android.view.View
                public void invalidate() {
                    if (HwEmojis.grab(this)) {
                        return;
                    }
                    super.invalidate();
                    EmojiTabButton.this.updateLockImageReceiver();
                }

                @Override // android.view.View
                public void invalidate(int i, int i2, int i3, int i4) {
                    if (HwEmojis.grab(this)) {
                        return;
                    }
                    super.invalidate(i, i2, i3, i4);
                }
            };
            this.imageView = backupImageView;
            backupImageView.applyAttach = false;
            this.animatedEmojiDocument = document;
            this.isAnimatedEmoji = true;
            backupImageView.setColorFilter(EmojiTabsStrip.this.getEmojiColorFilter());
            addView(this.imageView);
            PremiumLockIconView premiumLockIconView = new PremiumLockIconView(context, PremiumLockIconView.TYPE_STICKERS_PREMIUM_LOCKED, EmojiTabsStrip.this.resourcesProvider) { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabButton.2
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
            this.lockView = premiumLockIconView;
            premiumLockIconView.setAlpha(0.0f);
            this.lockView.setScaleX(0.0f);
            this.lockView.setScaleY(0.0f);
            updateLockImageReceiver();
            addView(this.lockView);
            updateColor();
        }

        public EmojiTabButton(Context context, long j, boolean z, boolean z2, boolean z3) {
            super(context);
            this.shown = true;
            this.newly = true;
            this.round = z2;
            this.forceSelector = z3;
            if (z2) {
                setBackground(Theme.createCircleSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 0, 0));
            } else if (z3) {
                setBackground(Theme.createRadSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 8, 8));
            }
            BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabButton.3
                @Override // android.view.View
                public void invalidate() {
                    if (HwEmojis.grab(this)) {
                        return;
                    }
                    super.invalidate();
                    EmojiTabButton.this.updateLockImageReceiver();
                }

                @Override // android.view.View
                public void invalidate(int i, int i2, int i3, int i4) {
                    if (HwEmojis.grab(this)) {
                        return;
                    }
                    super.invalidate(i, i2, i3, i4);
                }
            };
            this.imageView = backupImageView;
            backupImageView.applyAttach = false;
            this.animatedEmojiDocumentId = Long.valueOf(j);
            this.isAnimatedEmoji = true;
            this.imageView.setColorFilter(EmojiTabsStrip.this.getEmojiColorFilter());
            addView(this.imageView);
            PremiumLockIconView premiumLockIconView = new PremiumLockIconView(context, PremiumLockIconView.TYPE_STICKERS_PREMIUM_LOCKED, EmojiTabsStrip.this.resourcesProvider) { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabButton.4
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
            this.lockView = premiumLockIconView;
            premiumLockIconView.setAlpha(0.0f);
            this.lockView.setScaleX(0.0f);
            this.lockView.setScaleY(0.0f);
            updateLockImageReceiver();
            addView(this.lockView);
            updateColor();
        }

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

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            RLottieDrawable rLottieDrawable = this.lottieDrawable;
            if (rLottieDrawable == null || !this.isVisible) {
                return;
            }
            rLottieDrawable.draw(canvas);
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (this.isVisible) {
                return super.drawChild(canvas, view, j);
            }
            return true;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (this.isVisible) {
                super.onDraw(canvas);
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            playAnimation();
            return super.performClick();
        }

        public void setDrawable(Drawable drawable) {
            setAnimatedEmojiDocument(null);
            setStickerThumb(null);
            this.imageView.setImageDrawable(drawable);
        }

        public void setAnimatedEmojiDocument(TLRPC.Document document) {
            TLRPC.Document document2 = this.animatedEmojiDocument;
            if ((document2 != null || this.animatedEmojiDocumentId != null) && document != null) {
                Long l = this.animatedEmojiDocumentId;
                if ((l != null ? l.longValue() : document2.f1668id) == document.f1668id) {
                    return;
                }
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmoji;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this.imageView);
                this.animatedEmoji = null;
            }
            this.imageView.clearImage();
            this.animatedEmojiDocument = document;
            this.animatedEmojiDocumentId = null;
            updateAttachState();
        }

        public void setAnimatedEmojiDocumentId(long j) {
            TLRPC.Document document = this.animatedEmojiDocument;
            if ((document != null || this.animatedEmojiDocumentId != null) && j != 0) {
                Long l = this.animatedEmojiDocumentId;
                if ((l != null ? l.longValue() : document.f1668id) == j) {
                    return;
                }
            }
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmoji;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this.imageView);
                this.animatedEmoji = null;
            }
            this.imageView.clearImage();
            this.animatedEmojiDocument = null;
            this.animatedEmojiDocumentId = j != 0 ? Long.valueOf(j) : null;
            updateAttachState();
        }

        public void setStickerThumb(EmojiView.EmojiPack emojiPack) {
            if (emojiPack != null && emojiPack.set == null) {
                emojiPack = null;
            }
            EmojiView.EmojiPack emojiPack2 = this.setObject;
            if (emojiPack2 == null || emojiPack == null || emojiPack2.set.f1696id != emojiPack.set.f1696id) {
                AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmoji;
                if (animatedEmojiDrawable != null && this.animatedEmojiDocument == null && this.animatedEmojiDocumentId == null) {
                    animatedEmojiDrawable.removeView(this.imageView);
                    this.animatedEmoji = null;
                }
                this.imageView.clearImage();
                this.setObject = emojiPack;
                updateAttachState();
            }
        }

        private void playAnimation() {
            ImageReceiver imageReceiver;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmoji;
            if (animatedEmojiDrawable == null || (imageReceiver = animatedEmojiDrawable.getImageReceiver()) == null) {
                return;
            }
            if (imageReceiver.getAnimation() != null) {
                imageReceiver.getAnimation().seekTo(0L, true);
            }
            imageReceiver.startAnimation();
        }

        private void stopAnimation() {
            ImageReceiver imageReceiver;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmoji;
            if (animatedEmojiDrawable == null || (imageReceiver = animatedEmojiDrawable.getImageReceiver()) == null) {
                return;
            }
            if (imageReceiver.getLottieAnimation() != null) {
                imageReceiver.getLottieAnimation().setCurrentFrame(0);
                imageReceiver.getLottieAnimation().stop();
            } else if (imageReceiver.getAnimation() != null) {
                imageReceiver.getAnimation().stop();
            }
        }

        public void updateVisibilityInbounds(boolean z, boolean z2) {
            RLottieDrawable rLottieDrawable;
            if (!this.isVisible && z && (rLottieDrawable = this.lottieDrawable) != null && !rLottieDrawable.isRunning() && !z2) {
                this.lottieDrawable.setProgress(0.0f);
                this.lottieDrawable.start();
            }
            if (this.isVisible != z) {
                this.isVisible = z;
                if (z) {
                    invalidate();
                    PremiumLockIconView premiumLockIconView = this.lockView;
                    if (premiumLockIconView != null) {
                        premiumLockIconView.invalidate();
                    }
                    initLock();
                    BackupImageView backupImageView = this.imageView;
                    if (backupImageView != null) {
                        backupImageView.invalidate();
                    }
                } else {
                    stopAnimation();
                }
                updateAttachState();
            }
        }

        private void initLock() {
            AnimatedEmojiDrawable animatedEmojiDrawable;
            ImageReceiver imageReceiver;
            if (this.lockView == null || (animatedEmojiDrawable = this.animatedEmoji) == null || (imageReceiver = animatedEmojiDrawable.getImageReceiver()) == null) {
                return;
            }
            this.lockView.setImageReceiver(imageReceiver);
        }

        public void setLock(Boolean bool, boolean z) {
            if (this.lockView == null) {
                return;
            }
            if (bool == null) {
                updateLock(false, z);
                return;
            }
            updateLock(true, z);
            if (bool.booleanValue()) {
                this.lockView.setImageResource(C2888R.drawable.msg_mini_lockedemoji);
                return;
            }
            Drawable drawableMutate = getResources().getDrawable(C2888R.drawable.msg_mini_addemoji).mutate();
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            this.lockView.setImageDrawable(drawableMutate);
        }

        private void updateLock(final boolean z, boolean z2) {
            ValueAnimator valueAnimator = this.lockAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (Math.abs(this.lockT - (z ? 1.0f : 0.0f)) < 0.01f) {
                return;
            }
            if (z2) {
                this.lockView.setVisibility(0);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.lockT, z ? 1.0f : 0.0f);
                this.lockAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$updateLock$0(valueAnimator2);
                    }
                });
                this.lockAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabButton.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (z) {
                            return;
                        }
                        EmojiTabButton.this.lockView.setVisibility(8);
                    }
                });
                this.lockAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.lockAnimator.setDuration(HwEmojis.isHwEnabledOrPreparing() ? 0L : 200L);
                this.lockAnimator.start();
                return;
            }
            float f = z ? 1.0f : 0.0f;
            this.lockT = f;
            this.lockView.setScaleX(f);
            this.lockView.setScaleY(this.lockT);
            this.lockView.setAlpha(this.lockT);
            this.lockView.setVisibility(z ? 0 : 8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateLock$0(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.lockT = fFloatValue;
            this.lockView.setScaleX(fFloatValue);
            this.lockView.setScaleY(this.lockT);
            this.lockView.setAlpha(this.lockT);
        }

        public void updateLockImageReceiver() {
            PremiumLockIconView premiumLockIconView = this.lockView;
            if (premiumLockIconView == null || premiumLockIconView.done() || !(getDrawable() instanceof AnimatedEmojiDrawable)) {
                return;
            }
            if (((AnimatedEmojiDrawable) getDrawable()).canOverrideColor()) {
                this.lockView.setImageReceiver(null);
                this.lockView.setColor(EmojiTabsStrip.this.accentColor);
                return;
            }
            ImageReceiver imageReceiver = ((AnimatedEmojiDrawable) getDrawable()).getImageReceiver();
            if (imageReceiver != null) {
                this.lockView.setImageReceiver(imageReceiver);
                this.lockView.invalidate();
            }
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(30.0f));
            BackupImageView backupImageView = this.imageView;
            if (backupImageView != null) {
                backupImageView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(24.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(24.0f), TLObject.FLAG_30));
            }
            PremiumLockIconView premiumLockIconView = this.lockView;
            if (premiumLockIconView != null) {
                premiumLockIconView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(12.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(12.0f), TLObject.FLAG_30));
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            BackupImageView backupImageView = this.imageView;
            if (backupImageView != null) {
                int i5 = (i3 - i) / 2;
                int i6 = (i4 - i2) / 2;
                backupImageView.layout(i5 - (backupImageView.getMeasuredWidth() / 2), i6 - (this.imageView.getMeasuredHeight() / 2), i5 + (this.imageView.getMeasuredWidth() / 2), i6 + (this.imageView.getMeasuredHeight() / 2));
            }
            PremiumLockIconView premiumLockIconView = this.lockView;
            if (premiumLockIconView != null) {
                int i7 = i3 - i;
                int i8 = i4 - i2;
                premiumLockIconView.layout(i7 - premiumLockIconView.getMeasuredWidth(), i8 - this.lockView.getMeasuredHeight(), i7, i8);
            }
        }

        public Drawable getDrawable() {
            BackupImageView backupImageView = this.imageView;
            if (backupImageView != null) {
                return backupImageView.getImageReceiver().getImageDrawable();
            }
            return null;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
            updateAttachState();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            updateAttachState();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateAttachState() {
            BackupImageView backupImageView = this.imageView;
            if (backupImageView == null) {
                return;
            }
            if (this.attached && this.isVisible) {
                AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmoji;
                if (animatedEmojiDrawable == null && (this.animatedEmojiDocument != null || this.animatedEmojiDocumentId != null)) {
                    backupImageView.clearImage();
                    if (this.animatedEmojiDocument != null) {
                        this.animatedEmoji = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, EmojiTabsStrip.this.animatedEmojiCacheType, this.animatedEmojiDocument);
                    } else {
                        this.animatedEmoji = AnimatedEmojiDrawable.make(UserConfig.selectedAccount, EmojiTabsStrip.this.animatedEmojiCacheType, this.animatedEmojiDocumentId.longValue());
                    }
                    this.animatedEmoji.addView(this.imageView);
                    this.imageView.setImageDrawable(this.animatedEmoji);
                } else {
                    if (animatedEmojiDrawable != null) {
                        animatedEmojiDrawable.removeView(backupImageView);
                        this.animatedEmoji = null;
                    }
                    this.imageView.clearImage();
                    EmojiView.EmojiPack emojiPack = this.setObject;
                    if (emojiPack != null) {
                        this.imageView.setImage(ImageLocation.getForStickerSet(emojiPack.set), "24_24", (String) null, (Drawable) null, this.setObject);
                        if (this.setObject.needLoadSet != null) {
                            MediaDataController.getInstance(UserConfig.selectedAccount).getStickerSet(this.setObject.needLoadSet, false);
                            this.setObject.needLoadSet = null;
                        }
                    }
                }
            } else {
                AnimatedEmojiDrawable animatedEmojiDrawable2 = this.animatedEmoji;
                if (animatedEmojiDrawable2 != null) {
                    animatedEmojiDrawable2.removeView(backupImageView);
                    this.animatedEmoji = null;
                }
                this.imageView.clearImage();
            }
            if (this.attached && this.isVisible) {
                this.imageView.onAttachedToWindow();
            } else {
                this.imageView.onDetachedFromWindow();
            }
            updateLockImageReceiver();
        }

        public void updateSelect(final boolean z, boolean z2) {
            BackupImageView backupImageView = this.imageView;
            if ((backupImageView == null || backupImageView.getImageReceiver().getImageDrawable() != null || EmojiTabsStrip.this.isGlassDesign) && this.selected != z) {
                this.selected = z;
                ValueAnimator valueAnimator = this.selectAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.selectAnimator = null;
                }
                if (!z) {
                    stopAnimation();
                }
                if (z2) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.selectT, z ? 1.0f : 0.0f);
                    this.selectAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$EmojiTabButton$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$updateSelect$1(valueAnimator2);
                        }
                    });
                    this.selectAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabButton.6
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            EmojiTabButton emojiTabButton = EmojiTabButton.this;
                            if (EmojiTabsStrip.this.updateButtonDrawables && !emojiTabButton.round && EmojiTabsStrip.this.includeAnimated) {
                                if (z || EmojiTabButton.this.forceSelector) {
                                    if (EmojiTabButton.this.getBackground() == null) {
                                        EmojiTabButton emojiTabButton2 = EmojiTabButton.this;
                                        emojiTabButton2.setBackground(Theme.createRadSelectorDrawable(EmojiTabsStrip.this.selectorColor(), 8, 8));
                                        return;
                                    }
                                    return;
                                }
                                EmojiTabButton.this.setBackground(null);
                            }
                        }
                    });
                    this.selectAnimator.setDuration(HwEmojis.isHwEnabledOrPreparing() ? 0L : 350L);
                    this.selectAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.selectAnimator.start();
                    return;
                }
                this.selectT = z ? 1.0f : 0.0f;
                updateColor();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSelect$1(ValueAnimator valueAnimator) {
            this.selectT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            updateColor();
        }

        public void updateColor() {
            Theme.setSelectorDrawableColor(getBackground(), EmojiTabsStrip.this.selectorColor(), false);
            if (EmojiTabsStrip.this.isGlassDesign) {
                setColor(EmojiTabsStrip.this.getGlassIconColor(AndroidUtilities.lerp(0.4f, 0.8f, this.selectT)));
            } else {
                setColor(ColorUtils.blendARGB(Theme.getColor(Theme.key_chat_emojiPanelIcon, EmojiTabsStrip.this.resourcesProvider), Theme.getColor(Theme.key_chat_emojiPanelIconSelected, EmojiTabsStrip.this.resourcesProvider), this.selectT));
            }
        }

        private void setColor(int i) {
            if (EmojiTabsStrip.this.currentType == 5 || EmojiTabsStrip.this.currentType == 7) {
                i = EmojiTabsStrip.this.accentColor;
            }
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY);
            BackupImageView backupImageView = this.imageView;
            if (backupImageView != null && !this.isAnimatedEmoji) {
                backupImageView.setColorFilter(porterDuffColorFilter);
                this.imageView.invalidate();
            }
            RLottieDrawable rLottieDrawable = this.lottieDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setColorFilter(porterDuffColorFilter);
                invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class EmojiTabsView extends ScrollableHorizontalScrollView {

        /* JADX INFO: renamed from: id */
        public long f1957id;
        private float showT;
        private boolean shown;

        public EmojiTabsView(Context context) {
            super(context);
            this.shown = EmojiTabsStrip.this.forceTabsShow;
            this.showT = EmojiTabsStrip.this.forceTabsShow ? 1.0f : 0.0f;
            setSmoothScrollingEnabled(true);
            setHorizontalScrollBarEnabled(false);
            setVerticalScrollBarEnabled(false);
            setNestedScrollingEnabled(true);
            LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabsView.1
                @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    int paddingLeft = getPaddingLeft();
                    int i5 = (i4 - i2) / 2;
                    for (int i6 = 0; i6 < getChildCount(); i6++) {
                        View childAt = getChildAt(i6);
                        if (childAt != EmojiTabsStrip.this.settingsTab && childAt != null) {
                            childAt.layout(paddingLeft, i5 - (childAt.getMeasuredHeight() / 2), childAt.getMeasuredWidth() + paddingLeft, (childAt.getMeasuredHeight() / 2) + i5);
                            paddingLeft += childAt.getMeasuredWidth() + AndroidUtilities.m1124dp(2.0f);
                        }
                    }
                }

                @Override // android.widget.LinearLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(Math.max(View.MeasureSpec.getSize(i), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(EmojiTabsView.this.contentView.getChildCount() * 32), TLObject.FLAG_30)), i2);
                }
            };
            this.contentView = linearLayout;
            linearLayout.setOrientation(0);
            addView(this.contentView, new FrameLayout.LayoutParams(-2, -1));
            for (int i = 0; i < EmojiTabsStrip.emojiTabsDrawableIds.length; i++) {
                this.contentView.addView(new EmojiTabButton(context, EmojiTabsStrip.emojiTabsDrawableIds[i], EmojiTabsStrip.emojiTabsAnimatedDrawableIds[i], true, false) { // from class: org.telegram.ui.Components.EmojiTabsStrip.EmojiTabsView.2
                    {
                        EmojiTabsStrip emojiTabsStrip = EmojiTabsStrip.this;
                    }

                    @Override // android.view.View
                    public boolean onTouchEvent(MotionEvent motionEvent) {
                        EmojiTabsView.this.intercept(motionEvent);
                        return super.onTouchEvent(motionEvent);
                    }
                });
            }
        }

        @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.lerp(AndroidUtilities.m1124dp(30.0f), maxWidth(), this.showT), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(30.0f), TLObject.FLAG_30));
        }

        public int maxWidth() {
            return AndroidUtilities.m1124dp(Math.min(5.7f, this.contentView.getChildCount()) * 32.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void intercept(MotionEvent motionEvent) {
            if (!this.shown || this.scrollingAnimation) {
                return;
            }
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    this.touching = false;
                    return;
                } else if (action != 2) {
                    return;
                }
            }
            this.touching = true;
            if (!this.scrollingAnimation) {
                resetScrollTo();
            }
            EmojiTabsStrip.this.requestDisallowInterceptTouchEvent(true);
        }

        @Override // org.telegram.p029ui.Components.ScrollableHorizontalScrollView, android.widget.HorizontalScrollView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            intercept(motionEvent);
            return super.onTouchEvent(motionEvent);
        }

        public void show(boolean z, boolean z2) {
            if (z == this.shown) {
                return;
            }
            this.shown = z;
            if (!z) {
                scrollTo(0);
            }
            ValueAnimator valueAnimator = this.showAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (z2) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.showT, z ? 1.0f : 0.0f);
                this.showAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.EmojiTabsStrip$EmojiTabsView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$show$0(valueAnimator2);
                    }
                });
                this.showAnimator.setDuration(475L);
                this.showAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.showAnimator.start();
                return;
            }
            this.showT = z ? 1.0f : 0.0f;
            invalidate();
            requestLayout();
            updateButtonsVisibility();
            EmojiTabsStrip.this.contentView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$show$0(ValueAnimator valueAnimator) {
            this.showT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
            requestLayout();
            updateButtonsVisibility();
            EmojiTabsStrip.this.contentView.invalidate();
        }
    }
}
