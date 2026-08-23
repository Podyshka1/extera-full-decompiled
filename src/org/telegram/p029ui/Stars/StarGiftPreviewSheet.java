package org.telegram.p029ui.Stars;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RecordingCanvas;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.function.ToDoubleFunction;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EmojiView$$ExternalSyntheticLambda13;
import org.telegram.p029ui.Components.ExtendedGridLayoutManager;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.p029ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.p029ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.Components.blur3.drawable.color.BlurredBackgroundColorProviderThemed;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.p029ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.p029ui.Components.chat.ViewPositionWatcher;
import org.telegram.p029ui.Components.glass.GlassTabView;
import org.telegram.p029ui.Components.glass.GlassTabsView;
import org.telegram.p029ui.Gifts.GiftSheet;
import org.telegram.p029ui.Stars.StarGiftSheet;
import org.telegram.p029ui.bots.AffiliateProgramFragment;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.util.Comparator;
import p022j$.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class StarGiftPreviewSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    private final ImageView backButton;
    private final ArrayList backdrops;
    private final ArrayList blurredPositions;
    public final Button[] buttons;
    private final LinearLayout buttonsLayout;
    private final boolean crafting;
    private final int currentAccount;
    private final TextView giftNameTextView;
    private final TextView giftStatusTextView;
    private final BlurredBackgroundDrawableViewFactory glassFactory;
    private final BlurredBackgroundSourceColor glassSourceFallback;
    private final BlurredBackgroundSourceRenderNode glassSourceRenderNode;
    private final View gradientTop;
    private boolean gradientVisible;
    private final ImageView headerPlay;
    private final FrameLayout headerView;
    private final DefaultItemAnimator itemAnimator;
    private int lastBottomInset;
    private final ExtendedGridLayoutManager layoutManager;
    private Mode mode;
    private final ArrayList models;
    private final ArrayList patterns;
    private final BagRandomizer rBackdrops;
    private final BagRandomizer rModels;
    private final BagRandomizer rPatterns;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private Attributes selectedAttributes;
    private final ArrayList simpleModels;
    private final PointF tabsPosP;
    private final RectF tabsRectF;
    private final TabsSelectorView tabsSelectorView;
    private final StarGiftSheet.TopView topView;
    private final ViewGroupPartRenderer viewGroupPartRenderer;

    private enum Mode {
        RANDOM,
        SELECTED
    }

    /* JADX INFO: renamed from: $r8$lambda$4FW-GrWE3omtJROED_SUH0J-jw8, reason: not valid java name */
    public static /* synthetic */ void m18205$r8$lambda$4FWGrWE3omtJROED_SUH0Jjw8(View view) {
    }

    public static /* synthetic */ void $r8$lambda$6dDAB4oCjfBKUgjWLOcaEjDuSkE(View view) {
    }

    public static /* synthetic */ void $r8$lambda$KA5_ktOev1iK_ZrKmafS83L4Id0(View view) {
    }

    public static /* synthetic */ void $r8$lambda$KnSj2HOwjZNsG6702N0SOUDyuqk(View view) {
    }

    public static /* synthetic */ void $r8$lambda$XzRzPJ0E1kCKde_hMMjhveM1TV8(View view) {
    }

    public static /* synthetic */ void $r8$lambda$yxN4xk9JINfkJndZctv0O4QuA2I(View view) {
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double getRarityIndex(TL_stars.StarGiftAttribute starGiftAttribute) {
        TL_stars.StarGiftAttributeRarity starGiftAttributeRarity = starGiftAttribute.rarity;
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarity) {
            return ((TL_stars.TL_starGiftAttributeRarity) starGiftAttributeRarity).permille;
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityLegendary) {
            return 0.01d;
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityEpic) {
            return 0.02d;
        }
        if (starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityRare) {
            return 0.03d;
        }
        return starGiftAttributeRarity instanceof TL_stars.TL_starGiftAttributeRarityUncommon ? 0.04d : 0.0d;
    }

    public StarGiftPreviewSheet(Context context, Theme.ResourcesProvider resourcesProvider, int i, String str, final ArrayList arrayList, boolean z) {
        super(context, null, false, false, false, resourcesProvider);
        this.mode = Mode.RANDOM;
        RectF rectF = new RectF();
        this.tabsRectF = rectF;
        this.tabsPosP = new PointF();
        ArrayList arrayList2 = new ArrayList(1);
        this.blurredPositions = arrayList2;
        arrayList2.add(rectF);
        this.currentAccount = i;
        this.crafting = z;
        RecyclerListView recyclerListView = this.recyclerListView;
        BottomSheet.ContainerView containerView = this.container;
        Objects.requireNonNull(recyclerListView);
        this.viewGroupPartRenderer = new ViewGroupPartRenderer(recyclerListView, containerView, new EmojiView$$ExternalSyntheticLambda13(recyclerListView));
        ArrayList arrayListFindAllInstances = TlUtils.findAllInstances(arrayList, TL_stars.starGiftAttributeBackdrop.class);
        this.backdrops = arrayListFindAllInstances;
        BagRandomizer bagRandomizer = new BagRandomizer(arrayListFindAllInstances);
        this.rBackdrops = bagRandomizer;
        bagRandomizer.setReshuffleIfEnd(false);
        ArrayList arrayListFindAllInstances2 = TlUtils.findAllInstances(arrayList, TL_stars.starGiftAttributePattern.class);
        this.patterns = arrayListFindAllInstances2;
        BagRandomizer bagRandomizer2 = new BagRandomizer(arrayListFindAllInstances2);
        this.rPatterns = bagRandomizer2;
        bagRandomizer2.setReshuffleIfEnd(false);
        this.models = TlUtils.findAllInstances(arrayList, TL_stars.starGiftAttributeModel.class);
        ArrayList arrayList3 = new ArrayList();
        this.simpleModels = arrayList3;
        if (z) {
            int i2 = 0;
            while (i2 < this.models.size()) {
                TL_stars.starGiftAttributeModel stargiftattributemodel = (TL_stars.starGiftAttributeModel) this.models.get(i2);
                if (stargiftattributemodel.rarity instanceof TL_stars.TL_starGiftAttributeRarity) {
                    this.simpleModels.add(stargiftattributemodel);
                    this.models.remove(i2);
                    i2--;
                }
                i2++;
            }
        } else {
            arrayList3.clear();
        }
        List.EL.sort(this.backdrops, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda7
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return StarGiftPreviewSheet.getRarityIndex((TL_stars.starGiftAttributeBackdrop) obj);
            }
        }));
        List.EL.sort(this.patterns, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda8
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return StarGiftPreviewSheet.getRarityIndex((TL_stars.starGiftAttributePattern) obj);
            }
        }));
        List.EL.sort(this.models, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda9
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return StarGiftPreviewSheet.getRarityIndex((TL_stars.starGiftAttributeModel) obj);
            }
        }));
        List.EL.sort(this.simpleModels, Comparator.CC.comparingDouble(new ToDoubleFunction() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda9
            @Override // java.util.function.ToDoubleFunction
            public final double applyAsDouble(Object obj) {
                return StarGiftPreviewSheet.getRarityIndex((TL_stars.starGiftAttributeModel) obj);
            }
        }));
        BagRandomizer bagRandomizer3 = new BagRandomizer(this.models);
        this.rModels = bagRandomizer3;
        bagRandomizer3.setReshuffleIfEnd(false);
        ViewParent parent = this.actionBar.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.actionBar);
        }
        this.ignoreTouchActionBar = false;
        this.headerMoveTop = AndroidUtilities.m1124dp(6.0f);
        this.occupyNavigationBar = true;
        setBackgroundColor(getBackgroundColor());
        fixNavigationBar();
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.glassSourceFallback = blurredBackgroundSourceColor;
        blurredBackgroundSourceColor.setColor(getBackgroundColor());
        if (Build.VERSION.SDK_INT >= 31 && SharedConfig.chatBlurEnabled()) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(blurredBackgroundSourceColor);
            this.glassSourceRenderNode = blurredBackgroundSourceRenderNode;
            blurredBackgroundSourceRenderNode.setOnDrawablesRelativePositionChangeListener(new Runnable() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidateMergedVisibleBlurredPositionsAndSourcesPositions();
                }
            });
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode);
            this.glassFactory = blurredBackgroundDrawableViewFactory;
            blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.glassSourceRenderNode = null;
            this.glassFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
        }
        this.glassFactory.setSourceRootView(new ViewPositionWatcher(this.container), this.container);
        ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context, 3);
        this.layoutManager = extendedGridLayoutManager;
        extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet.1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i3) {
                int i4;
                if (StarGiftPreviewSheet.this.adapter == null || i3 == 0) {
                    return StarGiftPreviewSheet.this.layoutManager.getSpanCount();
                }
                UItem item = StarGiftPreviewSheet.this.adapter.getItem(i3 - 1);
                return (item == null || (i4 = item.spanCount) == -1) ? StarGiftPreviewSheet.this.layoutManager.getSpanCount() : i4;
            }
        });
        this.recyclerListView.setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(74.0f));
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setLayoutManager(extendedGridLayoutManager);
        this.recyclerListView.setSelectorType(9);
        this.recyclerListView.setSelectorDrawableColor(0);
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                super.onScrolled(recyclerView, i3, i4);
                StarGiftPreviewSheet.this.updateTranslationHeader();
                if (Build.VERSION.SDK_INT < 31 || StarGiftPreviewSheet.this.scrollableViewNoiseSuppressor == null) {
                    return;
                }
                StarGiftPreviewSheet.this.scrollableViewNoiseSuppressor.onScrolled(i3, i4);
                StarGiftPreviewSheet.this.invalidateMergedVisibleBlurredPositionsAndSources(1);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet.3
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected float animateByScale(View view) {
                return 0.3f;
            }
        };
        this.itemAnimator = defaultItemAnimator;
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDurations(280L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayIncrement(30L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        FrameLayout frameLayout = new FrameLayout(context);
        this.headerView = frameLayout;
        frameLayout.setClipChildren(false);
        StarGiftSheet.TopView topView = new StarGiftSheet.TopView(context, resourcesProvider, new Runnable() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openCrafting$8();
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarGiftPreviewSheet.$r8$lambda$6dDAB4oCjfBKUgjWLOcaEjDuSkE(view);
            }
        }, null, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarGiftPreviewSheet.$r8$lambda$KnSj2HOwjZNsG6702N0SOUDyuqk(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarGiftPreviewSheet.$r8$lambda$yxN4xk9JINfkJndZctv0O4QuA2I(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarGiftPreviewSheet.$r8$lambda$XzRzPJ0E1kCKde_hMMjhveM1TV8(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarGiftPreviewSheet.m18205$r8$lambda$4FWGrWE3omtJROED_SUH0Jjw8(view);
            }
        }, new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StarGiftPreviewSheet.$r8$lambda$KA5_ktOev1iK_ZrKmafS83L4Id0(view);
            }
        }) { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet.4
            final float[] hsv = new float[3];
            Path path = new Path();

            /* JADX INFO: renamed from: r */
            float[] f2142r = new float[8];

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            public float getRealHeight() {
                return AndroidUtilities.m1124dp(315.0f);
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            public int getFinalHeight() {
                return AndroidUtilities.m1124dp(315.0f);
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            protected void updateButtonsBackgrounds(int i3) {
                super.updateButtonsBackgrounds(i3);
                if (StarGiftPreviewSheet.this.backButton != null && Theme.setSelectorDrawableColor(StarGiftPreviewSheet.this.backButton.getBackground(), i3, false)) {
                    StarGiftPreviewSheet.this.backButton.invalidate();
                }
                if (StarGiftPreviewSheet.this.headerPlay != null && Theme.setSelectorDrawableColor(StarGiftPreviewSheet.this.headerPlay.getBackground(), i3, false)) {
                    StarGiftPreviewSheet.this.headerPlay.invalidate();
                }
                for (Button button : StarGiftPreviewSheet.this.buttons) {
                    if (Theme.setSelectorDrawableColor(button.getBackground(), i3, false)) {
                        button.invalidate();
                    }
                    Color.colorToHSV(ColorUtils.blendARGB(i3, -1, 0.33f), this.hsv);
                    float[] fArr = this.hsv;
                    fArr[1] = Math.min(1.0f, fArr[1] * 1.1f);
                    float[] fArr2 = this.hsv;
                    fArr2[2] = Math.min(1.0f, fArr2[2] * 1.1f);
                    int iHSVToColor = Color.HSVToColor(this.hsv);
                    if (button.percentView.getSizeableBackground() instanceof StarGiftSheet.RoundRectStrokeDrawable) {
                        ((StarGiftSheet.RoundRectStrokeDrawable) button.percentView.getSizeableBackground()).setColor(iHSVToColor);
                        button.percentView.invalidate();
                    } else if (Theme.setSelectorDrawableColor(button.percentView.getSizeableBackground(), iHSVToColor, false)) {
                        button.percentView.invalidate();
                    }
                }
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView
            public void onSwitchPage(StarGiftSheet.PageTransition pageTransition) {
                super.onSwitchPage(pageTransition);
                StarGiftPreviewSheet.this.updateHeaderAttributes(true);
            }

            @Override // android.view.View
            protected void onSizeChanged(int i3, int i4, int i5, int i6) {
                super.onSizeChanged(i3, i4, i5, i6);
                float[] fArr = this.f2142r;
                float fM1124dp = AndroidUtilities.m1124dp(12.0f);
                fArr[3] = fM1124dp;
                fArr[2] = fM1124dp;
                fArr[1] = fM1124dp;
                fArr[0] = fM1124dp;
                this.path.rewind();
                this.path.addRoundRect(0.0f, 0.0f, i3, i4, this.f2142r, Path.Direction.CW);
            }

            @Override // org.telegram.ui.Stars.StarGiftSheet.TopView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.clipPath(this.path);
                super.dispatchDraw(canvas);
                canvas.restore();
            }
        };
        this.topView = topView;
        topView.onSwitchPage(new StarGiftSheet.PageTransition(1, 1, 1.0f));
        topView.setPreviewingAttributes(arrayList);
        topView.hideCloseButton();
        frameLayout.addView(topView, LayoutHelper.createFrame(-1, -1.0f));
        int i3 = this.backgroundPaddingLeft;
        frameLayout.setPadding(i3, 0, i3, 0);
        ImageView imageView = new ImageView(context);
        this.backButton = imageView;
        imageView.setBackground(Theme.createRadSelectorDrawable(0, 285212671, 16, 16));
        imageView.setImageResource(C2888R.drawable.ic_ab_back);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$6(view);
            }
        });
        ScaleStateListAnimator.apply(imageView);
        frameLayout.addView(imageView, LayoutHelper.createFrame(32, 32.0f, 51, 12.0f, 14.0f, 0.0f, 0.0f));
        ImageView imageView2 = new ImageView(context);
        this.headerPlay = imageView2;
        imageView2.setBackground(Theme.createRadSelectorDrawable(0, 285212671, 16, 16));
        imageView2.setImageResource(C2888R.drawable.filled_gift_pause_24);
        imageView2.setScaleType(scaleType);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$7(arrayList, view);
            }
        });
        ScaleStateListAnimator.apply(imageView2);
        frameLayout.addView(imageView2, LayoutHelper.createFrame(32, 32.0f, 53, 0.0f, 14.0f, 12.0f, 0.0f));
        TextView textView = new TextView(context);
        this.giftNameTextView = textView;
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 21.0f);
        textView.setText(str);
        textView.setGravity(17);
        textView.setTextColor(-1);
        frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2.0f, 87, 16.0f, 0.0f, 16.0f, 102.0f));
        TextView textView2 = new TextView(context);
        this.giftStatusTextView = textView2;
        textView2.setTextSize(1, 13.0f);
        textView2.setText(LocaleController.getString(C2888R.string.Gift2PreviewRandomTraits));
        textView2.setGravity(17);
        textView2.setTextColor(-1879048193);
        frameLayout.addView(textView2, LayoutHelper.createFrame(-1, -2.0f, 87, 16.0f, 0.0f, 16.0f, 82.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.buttonsLayout = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setClipChildren(false);
        this.buttons = new Button[3];
        this.tabsSelectorView = new TabsSelectorView(context, resourcesProvider, new Utilities.Callback() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$8((Integer) obj);
            }
        });
        final int i4 = 0;
        while (true) {
            Button[] buttonArr = this.buttons;
            if (i4 < buttonArr.length) {
                buttonArr[i4] = new Button(context);
                if (i4 == 0) {
                    this.buttons[i4].textView.setText(LocaleController.getString(C2888R.string.GiftPreviewModel));
                } else if (i4 == 1) {
                    this.buttons[i4].textView.setText(LocaleController.getString(C2888R.string.GiftPreviewBackdrop));
                } else if (i4 == 2) {
                    this.buttons[i4].textView.setText(LocaleController.getString(C2888R.string.GiftPreviewSymbol));
                }
                ScaleStateListAnimator.apply(this.buttons[i4]);
                this.buttons[i4].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$9(i4, view);
                    }
                });
                this.buttons[i4].setBackground(Theme.createRadSelectorDrawable(0, 285212671, 10, 10));
                LinearLayout linearLayout2 = this.buttonsLayout;
                Button[] buttonArr2 = this.buttons;
                linearLayout2.addView(buttonArr2[i4], LayoutHelper.createLinear(0, 42, 1.0f, 7, 0, 0, i4 != buttonArr2.length - 1 ? 11 : 0, 0));
                i4++;
            } else {
                this.headerView.addView(this.buttonsLayout, LayoutHelper.createFrame(-1, -2.0f, 87, 16.0f, 0.0f, 16.0f, 18.0f));
                this.containerView.addView(this.headerView, LayoutHelper.createFrame(-1, 315, 55));
                int backgroundColor = getBackgroundColor();
                View view = new View(context);
                this.gradientTop = view;
                view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{ColorUtils.setAlphaComponent(backgroundColor, 160), backgroundColor & 16777215}));
                view.setAlpha(0.0f);
                FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, 0, 48);
                layoutParamsCreateFrame.height = AndroidUtilities.statusBarHeight;
                this.containerView.addView(view, layoutParamsCreateFrame);
                this.tabsSelectorView.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
                BlurredBackgroundDrawable blurredBackgroundDrawableCreate = this.glassFactory.create(this.tabsSelectorView);
                blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.m1124dp(4.0f));
                blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.m1124dp(28.0f));
                blurredBackgroundDrawableCreate.setColorProvider(new BlurredBackgroundColorProviderThemed(resourcesProvider, Theme.key_windowBackgroundWhite));
                this.tabsSelectorView.setBackground(blurredBackgroundDrawableCreate);
                this.containerView.addView(this.tabsSelectorView, LayoutHelper.createFrame(268, 64.0f, 81, 0.0f, 0.0f, 0.0f, 5.0f));
                this.selectedAttributes = new Attributes((TL_stars.starGiftAttributeBackdrop) TlUtils.findFirstInstance(arrayList, TL_stars.starGiftAttributeBackdrop.class), (TL_stars.starGiftAttributePattern) TlUtils.findFirstInstance(arrayList, TL_stars.starGiftAttributePattern.class), (TL_stars.starGiftAttributeModel) TlUtils.findFirstInstance(arrayList, TL_stars.starGiftAttributeModel.class));
                this.adapter.update(false);
                updateHeaderAttributes(false);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(ArrayList arrayList, View view) {
        Mode mode = this.mode;
        Mode mode2 = Mode.SELECTED;
        if (mode == mode2) {
            this.topView.setPreviewingAttributes(arrayList);
            setMode(Mode.RANDOM);
        } else if (mode == Mode.RANDOM) {
            Attributes attributes = new Attributes(this.topView.getUpgradeBackdropAttribute(), this.topView.getUpgradePatternAttribute(), this.topView.getUpgradeImageViewAttribute());
            this.selectedAttributes = attributes;
            this.topView.setPreviewAttributes(attributes);
            setMode(mode2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(Integer num) {
        this.itemAnimator.endAnimations();
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(int i, View view) {
        this.tabsSelectorView.selectTab(i);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stars.StarGiftPreviewSheet$5 */
    class C67225 extends UniversalAdapter {
        C67225(RecyclerListView recyclerListView, Context context, int i, int i2, boolean z, Utilities.Callback2 callback2, Theme.ResourcesProvider resourcesProvider) {
            super(recyclerListView, context, i, i2, z, callback2, resourcesProvider);
        }

        @Override // org.telegram.p029ui.Components.UniversalAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            super.onBindViewHolder(viewHolder, i);
            View view = viewHolder.itemView;
            if (view instanceof GiftAttributeCell) {
                GiftAttributeCell giftAttributeCell = (GiftAttributeCell) view;
                final Attributes attributes = giftAttributeCell.attributes;
                giftAttributeCell.setSelected(StarGiftPreviewSheet.this.isSelectedWithCurrentTab(attributes), false);
                giftAttributeCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$5$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onBindViewHolder$0(attributes, view2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(Attributes attributes, View view) {
            if (StarGiftPreviewSheet.this.mode == Mode.RANDOM) {
                StarGiftPreviewSheet starGiftPreviewSheet = StarGiftPreviewSheet.this;
                starGiftPreviewSheet.selectedAttributes = new Attributes(starGiftPreviewSheet.topView.getUpgradeBackdropAttribute(), StarGiftPreviewSheet.this.topView.getUpgradePatternAttribute(), StarGiftPreviewSheet.this.topView.getUpgradeImageViewAttribute());
                StarGiftPreviewSheet.this.setMode(Mode.SELECTED);
            }
            StarGiftPreviewSheet starGiftPreviewSheet2 = StarGiftPreviewSheet.this;
            starGiftPreviewSheet2.selectedAttributes = starGiftPreviewSheet2.newSelectedWithCurrentTab(attributes);
            StarGiftPreviewSheet.this.topView.setPreviewAttributes(StarGiftPreviewSheet.this.selectedAttributes);
            StarGiftPreviewSheet.this.updateSelectedForVisibleViews();
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        C67225 c67225 = new C67225(this.recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = c67225;
        c67225.setApplyBackground(false);
        return this.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTranslationHeader() {
        boolean z;
        float y;
        float y2;
        int measuredHeight;
        boolean z2 = true;
        int childCount = this.recyclerListView.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z = false;
                y = 0.0f;
                break;
            }
            View childAt = this.recyclerListView.getChildAt(childCount);
            int childAdapterPosition = this.recyclerListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0) {
                if (childAdapterPosition == 2) {
                    y2 = childAt.getY();
                    measuredHeight = this.headerView.getMeasuredHeight();
                    break;
                } else if (childAdapterPosition == 1) {
                    y = childAt.getY();
                    break;
                } else if (childAdapterPosition == 0) {
                    y2 = childAt.getY();
                    measuredHeight = this.headerView.getMeasuredHeight();
                    break;
                }
            }
            childCount--;
        }
        y = y2 - measuredHeight;
        z = true;
        float height = this.headerView.getHeight() + y;
        if (z && height >= 0.0f) {
            z2 = false;
        }
        if (this.gradientVisible != z2) {
            this.gradientVisible = z2;
            this.gradientTop.animate().alpha(z2 ? 1.0f : 0.0f).setDuration(200L).start();
        }
        this.headerMoveTop = y <= 0.0f ? 0 : AndroidUtilities.m1124dp(6.0f);
        this.headerView.setVisibility(z ? 0 : 8);
        this.headerView.setTranslationY(y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderAttributes(boolean z) {
        if (this.topView.getUpgradeImageViewAttribute() == null || this.topView.getUpgradeBackdropAttribute() == null || this.topView.getUpgradePatternAttribute() == null) {
            return;
        }
        this.buttons[0].titleView.setText(this.topView.getUpgradeImageViewAttribute().name, z);
        this.buttons[0].percentView.setText(StarGiftSheet.getRarityName(this.topView.getUpgradeImageViewAttribute().rarity, new Integer[1]));
        this.buttons[1].titleView.setText(this.topView.getUpgradeBackdropAttribute().name, z);
        this.buttons[1].percentView.setText(AffiliateProgramFragment.percents(this.topView.getUpgradeBackdropAttribute().getRarityPermille()), z);
        this.buttons[2].titleView.setText(this.topView.getUpgradePatternAttribute().name, z);
        this.buttons[2].percentView.setText(AffiliateProgramFragment.percents(this.topView.getUpgradePatternAttribute().getRarityPermille()), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        if (this.models == null || this.backdrops == null || this.patterns == null) {
            return;
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.m1124dp(315.0f)));
        this.rBackdrops.reset();
        this.rPatterns.reset();
        this.rModels.reset();
        int selectedTab = this.tabsSelectorView.getSelectedTab();
        int i = 0;
        if (selectedTab != 0) {
            if (selectedTab == 1) {
                arrayList.add(UItem.asCenterShadow(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("GiftPreviewCountBackdrops", this.backdrops.size()))));
                ArrayList arrayList2 = this.backdrops;
                int size = arrayList2.size();
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    arrayList.add(GiftAttributeCell.Factory.asAttribute(selectedTab, new Attributes((TL_stars.starGiftAttributeBackdrop) obj, (TL_stars.starGiftAttributePattern) this.rPatterns.next(), (TL_stars.starGiftAttributeModel) this.rModels.next())));
                }
                return;
            }
            if (selectedTab == 2) {
                arrayList.add(UItem.asCenterShadow(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma("GiftPreviewCountSymbols", this.patterns.size()))));
                ArrayList arrayList3 = this.patterns;
                int size2 = arrayList3.size();
                while (i < size2) {
                    Object obj2 = arrayList3.get(i);
                    i++;
                    arrayList.add(GiftAttributeCell.Factory.asAttribute(selectedTab, new Attributes((TL_stars.starGiftAttributeBackdrop) this.rBackdrops.next(), (TL_stars.starGiftAttributePattern) obj2, (TL_stars.starGiftAttributeModel) this.rModels.next())));
                }
                return;
            }
            return;
        }
        boolean z = this.crafting;
        if (z) {
            arrayList.add(UItem.asCenterShadow(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(z ? "GiftPreviewCountModelsCrafting" : "GiftPreviewCountModels", this.models.size()))));
        }
        ArrayList arrayList4 = this.models;
        int size3 = arrayList4.size();
        int i2 = 0;
        while (i2 < size3) {
            Object obj3 = arrayList4.get(i2);
            i2++;
            arrayList.add(GiftAttributeCell.Factory.asAttribute(selectedTab, new Attributes((TL_stars.starGiftAttributeBackdrop) this.rBackdrops.next(), (TL_stars.starGiftAttributePattern) this.rPatterns.next(), (TL_stars.starGiftAttributeModel) obj3)));
        }
        if (this.simpleModels.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asCenterShadow(AndroidUtilities.replaceTags(LocaleController.formatPluralStringComma(this.crafting ? "GiftPreviewCountModelsCrafting2" : "GiftPreviewCountModels", this.models.size()))));
        ArrayList arrayList5 = this.simpleModels;
        int size4 = arrayList5.size();
        while (i < size4) {
            Object obj4 = arrayList5.get(i);
            i++;
            arrayList.add(GiftAttributeCell.Factory.asAttribute(selectedTab, new Attributes((TL_stars.starGiftAttributeBackdrop) this.rBackdrops.next(), (TL_stars.starGiftAttributePattern) this.rPatterns.next(), (TL_stars.starGiftAttributeModel) obj4)));
        }
    }

    public static class Attributes {
        public final TL_stars.starGiftAttributeBackdrop backdrop;
        public final TL_stars.starGiftAttributeModel model;
        public final TL_stars.starGiftAttributePattern pattern;

        public Attributes(TL_stars.starGiftAttributeBackdrop stargiftattributebackdrop, TL_stars.starGiftAttributePattern stargiftattributepattern, TL_stars.starGiftAttributeModel stargiftattributemodel) {
            this.backdrop = stargiftattributebackdrop;
            this.pattern = stargiftattributepattern;
            this.model = stargiftattributemodel;
        }
    }

    public static class GiftAttributeCell extends FrameLayout implements FactorAnimator.Target {
        private Attributes attributes;
        private final GiftSheet.CardBackground cardBackground;
        private final FrameLayout cardBackgroundView;
        private final int currentAccount;
        private final BackupImageView imageView;
        private final BoolAnimator isSelected;
        private TLRPC.Document lastDocument;
        private boolean noPercentageBackground;
        private final TextView percentageView;
        private Integer rarityColor;
        private final Theme.ResourcesProvider resourcesProvider;
        private final TextView textView;

        @Override // me.vkryl.android.animator.FactorAnimator.Target
        public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
            FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
        }

        public GiftAttributeCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.isSelected = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 320L);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            FrameLayout frameLayout = new FrameLayout(context);
            this.cardBackgroundView = frameLayout;
            GiftSheet.CardBackground cardBackground = new GiftSheet.CardBackground(frameLayout, resourcesProvider, true);
            this.cardBackground = cardBackground;
            frameLayout.setBackground(cardBackground);
            cardBackground.selectionStyle = 1;
            addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            backupImageView.getImageReceiver().setAutoRepeat(0);
            addView(backupImageView, LayoutHelper.createFrame(90, 90.0f, 49, 0.0f, 12.0f, 0.0f, 0.0f));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextSize(1, 13.0f);
            textView.setGravity(17);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTextColor(-1);
            addView(textView, LayoutHelper.createFrame(-1, -2.0f, 0, 12.0f, 106.0f, 12.0f, 14.0f));
            TextView textView2 = new TextView(context);
            this.percentageView = textView2;
            textView2.setClickable(false);
            textView2.setTypeface(AndroidUtilities.bold());
            textView2.setTextSize(1, 11.0f);
            textView2.setPadding(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(1.0f));
            textView2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(10.0f), 285212671));
            addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 10.0f, 10.0f, 0.0f));
        }

        public void setSelected(boolean z, boolean z2) {
            this.cardBackground.setSelected(z, z2);
            this.isSelected.setValue(z, z2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSticker(TLRPC.Document document, int i, Object obj) {
            if (document == null) {
                this.imageView.clearImage();
                this.lastDocument = null;
                return;
            }
            if (this.lastDocument == document) {
                return;
            }
            this.lastDocument = document;
            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, AndroidUtilities.m1124dp(100.0f));
            SvgHelper.SvgDrawable svgThumb = DocumentObject.getSvgThumb(document, Theme.key_windowBackgroundGray, 0.3f);
            String str = i + "_" + i;
            this.imageView.setLayoutParams(LayoutHelper.createFrame(i, i, 49, 0.0f, r3 + 12, 0.0f, (90 - i) / 2));
            this.imageView.setImage(ImageLocation.getForDocument(document), str, ImageLocation.getForDocument(closestPhotoSizeWithSize, document), str, svgThumb, obj);
        }

        @Override // me.vkryl.android.animator.FactorAnimator.Target
        public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
            checkPercentageViewBackground();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkPercentageViewBackground() {
            int iBlendARGB;
            this.cardBackground.selectedColor = null;
            if (this.rarityColor != null) {
                iBlendARGB = Theme.blendOver(Theme.getColor(Theme.key_windowBackgroundWhite), Theme.multAlpha(this.rarityColor.intValue(), AndroidUtilities.lerp(0.15f, 1.0f, this.isSelected.getFloatValue())));
                this.cardBackground.selectedColor = this.rarityColor;
                this.cardBackgroundView.invalidate();
                this.percentageView.setTextColor(ColorUtils.blendARGB(this.rarityColor.intValue(), -1, this.isSelected.getFloatValue()));
            } else if (this.noPercentageBackground) {
                int i = Theme.key_windowBackgroundWhite;
                int color = Theme.getColor(i);
                int i2 = Theme.key_windowBackgroundWhiteBlackText;
                int iBlendARGB2 = ColorUtils.blendARGB(ColorUtils.blendARGB(color, Theme.getColor(i2), 0.05f), Theme.getColor(Theme.key_featuredStickers_addButton), this.isSelected.getFloatValue());
                this.percentageView.setTextColor(ColorUtils.blendARGB(ColorUtils.blendARGB(Theme.getColor(i), Theme.getColor(i2), 0.5f), -1, this.isSelected.getFloatValue()));
                iBlendARGB = iBlendARGB2;
            } else {
                iBlendARGB = ColorUtils.blendARGB(ColorUtils.setAlphaComponent(this.attributes.backdrop.center_color, 255), ColorUtils.setAlphaComponent(this.attributes.backdrop.pattern_color, 255), 0.5f);
                this.percentageView.setTextColor(-1);
            }
            if (this.percentageView.getBackground() instanceof ShapeDrawable) {
                ((ShapeDrawable) this.percentageView.getBackground()).getPaint().setColor(iBlendARGB);
                this.percentageView.invalidate();
            } else if (Theme.setSelectorDrawableColor(this.percentageView.getBackground(), iBlendARGB, false)) {
                this.percentageView.invalidate();
            }
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public GiftAttributeCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new GiftAttributeCell(context, i, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                CharSequence rarityName;
                GiftAttributeCell giftAttributeCell = (GiftAttributeCell) view;
                Attributes attributes = (Attributes) uItem.object;
                int i = uItem.intValue;
                Integer[] numArr = new Integer[1];
                giftAttributeCell.noPercentageBackground = i == 0;
                giftAttributeCell.attributes = attributes;
                if (i == 0) {
                    giftAttributeCell.cardBackground.setBackdrop(null);
                    giftAttributeCell.cardBackground.setPattern(null);
                    giftAttributeCell.textView.setText(attributes.model.name);
                    giftAttributeCell.setSticker(attributes.model.document, 90, uItem.object);
                    giftAttributeCell.imageView.setColorFilter(null);
                    giftAttributeCell.cardBackground.selectedColorKey = Theme.key_featuredStickers_addButton;
                    rarityName = StarGiftSheet.getRarityName(attributes.model.rarity, numArr);
                } else if (i == 1) {
                    giftAttributeCell.cardBackground.setBackdrop(attributes.backdrop);
                    giftAttributeCell.cardBackground.setPattern(attributes.pattern);
                    giftAttributeCell.cardBackground.selectedColorKey = Theme.key_windowBackgroundWhite;
                    giftAttributeCell.textView.setText(attributes.backdrop.name);
                    giftAttributeCell.setSticker(attributes.pattern.document, 48, uItem.object);
                    giftAttributeCell.imageView.setColorFilter(new PorterDuffColorFilter(ColorUtils.setAlphaComponent(attributes.backdrop.pattern_color, 64), PorterDuff.Mode.SRC_IN));
                    rarityName = StarGiftSheet.getRarityName(attributes.backdrop.rarity, numArr);
                } else if (i != 2) {
                    rarityName = _UrlKt.FRAGMENT_ENCODE_SET;
                } else {
                    giftAttributeCell.cardBackground.setBackdrop(attributes.backdrop);
                    giftAttributeCell.cardBackground.setPattern(attributes.pattern);
                    giftAttributeCell.cardBackground.selectedColorKey = Theme.key_windowBackgroundWhite;
                    giftAttributeCell.textView.setText(attributes.pattern.name);
                    giftAttributeCell.setSticker(attributes.pattern.document, 64, uItem.object);
                    giftAttributeCell.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                    rarityName = StarGiftSheet.getRarityName(attributes.pattern.rarity, numArr);
                }
                giftAttributeCell.textView.setTextColor(i == 0 ? Theme.getColor(Theme.key_dialogTextBlack, giftAttributeCell.resourcesProvider) : -1);
                giftAttributeCell.percentageView.setText(rarityName);
                giftAttributeCell.rarityColor = numArr[0];
                giftAttributeCell.checkPercentageViewBackground();
            }

            public static UItem asAttribute(int i, Attributes attributes) {
                UItem spanCount = UItem.ofFactory(Factory.class).setSpanCount(1);
                spanCount.intValue = i;
                spanCount.object = attributes;
                return spanCount;
            }
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView createRecyclerView(Context context) {
        return new RecyclerListView(context, this.resourcesProvider) { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet.6
            @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                StarGiftPreviewSheet.this.applyScrolledPosition();
                super.onLayout(z, i, i2, i3, i4);
                StarGiftPreviewSheet.this.invalidateMergedVisibleBlurredPositionsAndSourcesImpl(2);
            }

            @Override // org.telegram.p029ui.Components.RecyclerListView
            protected boolean canHighlightChildAt(View view, float f, float f2) {
                return StarGiftPreviewSheet.this.canHighlightChildAt(view, f, f2);
            }
        };
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    public void onOpenAnimationEnd() {
        super.onOpenAnimationEnd();
        invalidateMergedVisibleBlurredPositionsAndSourcesImpl(2);
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected void mainContainerDispatchDraw(Canvas canvas) {
        BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode;
        super.mainContainerDispatchDraw(canvas);
        int width = this.container.getWidth();
        int height = this.container.getHeight();
        if (Build.VERSION.SDK_INT < 31 || !canvas.isHardwareAccelerated() || this.scrollableViewNoiseSuppressor == null || (blurredBackgroundSourceRenderNode = this.glassSourceRenderNode) == null || blurredBackgroundSourceRenderNode.inRecording() || !this.glassSourceRenderNode.needUpdateDisplayList(width, height)) {
            return;
        }
        RecordingCanvas recordingCanvasBeginRecording = this.glassSourceRenderNode.beginRecording(width, height);
        recordingCanvasBeginRecording.drawColor(getThemedColor(Theme.key_dialogBackgroundGray));
        this.scrollableViewNoiseSuppressor.draw(recordingCanvasBeginRecording, LiteMode.isEnabled(262144) ? -2 : -3);
        this.glassSourceRenderNode.endRecording();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateMergedVisibleBlurredPositionsAndSourcesPositions() {
        invalidateMergedVisibleBlurredPositionsAndSources(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateMergedVisibleBlurredPositionsAndSources(int i) {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        invalidateMergedVisibleBlurredPositionsAndSourcesImpl(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateMergedVisibleBlurredPositionsAndSourcesImpl(int i) {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        if (BitwiseUtils.hasFlag(i, 2)) {
            ViewPositionWatcher.computeCoordinatesInParent(this.tabsSelectorView, this.container, this.tabsPosP);
            RectF rectF = this.tabsRectF;
            PointF pointF = this.tabsPosP;
            float f = pointF.x;
            rectF.left = f;
            rectF.top = pointF.y;
            rectF.right = f + this.tabsSelectorView.getMeasuredWidth();
            RectF rectF2 = this.tabsRectF;
            rectF2.bottom = Math.min(rectF2.top + this.tabsSelectorView.getMeasuredHeight(), this.container.getMeasuredHeight());
            if (this.tabsRectF.isEmpty()) {
                return;
            }
            float f2 = -(LiteMode.isEnabled(262144) ? 0 : AndroidUtilities.m1124dp(48.0f));
            this.tabsRectF.inset(f2, f2);
            this.scrollableViewNoiseSuppressor.setupRenderNodes(this.blurredPositions, 1);
        }
        if (this.scrollableViewNoiseSuppressor.getRenderNodesCount() == 0) {
            return;
        }
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.viewGroupPartRenderer, this.container.getWidth(), this.container.getHeight());
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected void onInsetsChanged() {
        super.onInsetsChanged();
        applyBottomInset();
    }

    private void applyBottomInset() {
        int systemBottomInset = getSystemBottomInset();
        if (this.lastBottomInset != systemBottomInset) {
            this.lastBottomInset = systemBottomInset;
            this.recyclerListView.setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), systemBottomInset + AndroidUtilities.m1124dp(74.0f));
            ((ViewGroup.MarginLayoutParams) this.tabsSelectorView.getLayoutParams()).bottomMargin = this.lastBottomInset + AndroidUtilities.m1124dp(5.0f);
            this.tabsSelectorView.requestLayout();
        }
    }

    private int getBackgroundColor() {
        return ColorUtils.blendARGB(getThemedColor(Theme.key_dialogBackgroundGray), getThemedColor(Theme.key_dialogBackground), 0.1f);
    }

    private static class Button extends FrameLayout {
        public AnimatedTextView percentView;
        public TextView textView;
        public AnimatedTextView titleView;

        public Button(Context context) {
            super(context);
            setClipChildren(false);
            AnimatedTextView animatedTextView = new AnimatedTextView(context, true, false, false);
            this.titleView = animatedTextView;
            animatedTextView.setTypeface(AndroidUtilities.bold());
            this.titleView.setTextSize(AndroidUtilities.m1124dp(13.0f));
            this.titleView.setTextColor(-1);
            this.titleView.setGravity(17);
            addView(this.titleView, LayoutHelper.createFrame(-1, 16.0f, 49, 4.0f, 6.0f, 4.0f, 0.0f));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setTextSize(1, 12.0f);
            this.textView.setTextColor(-1879048193);
            this.textView.setGravity(17);
            addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, 49, 4.0f, 20.0f, 4.0f, 0.0f));
            AnimatedTextView animatedTextView2 = new AnimatedTextView(context);
            this.percentView = animatedTextView2;
            animatedTextView2.setTypeface(AndroidUtilities.bold());
            this.percentView.setTextColor(-1);
            this.percentView.setGravity(5);
            this.percentView.getDrawable().centerY = true;
            this.percentView.setTextSize(AndroidUtilities.m1124dp(11.0f));
            this.percentView.setPadding(AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(1.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(1.0f));
            this.percentView.setSizeableBackground(new StarGiftSheet.RoundRectStrokeDrawable(AndroidUtilities.m1124dp(10.0f), 285212671));
            addView(this.percentView, LayoutHelper.createFrame(-1, 16.0f, 53, 0.0f, -9.0f, -4.0f, 0.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class TabsSelectorView extends GlassTabsView implements FactorAnimator.Target {
        public final FactorAnimator animator;
        public final Utilities.Callback onTabSelectListener;
        private int selectedTab;
        private GlassTabView[] tabs;

        @Override // me.vkryl.android.animator.FactorAnimator.Target
        public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
            FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
        }

        public TabsSelectorView(Context context, Theme.ResourcesProvider resourcesProvider, Utilities.Callback callback) {
            super(context);
            this.animator = new FactorAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 1600L);
            this.onTabSelectListener = callback;
            int i = Theme.key_glass_defaultIcon;
            setLensColor(Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.09411765f), Theme.multAlpha(Theme.getColor(i, resourcesProvider), 0.1254902f));
            this.tabs = new GlassTabView[]{GlassTabView.createMainTab(context, resourcesProvider, GlassTabView.TabAnimation.MODELS, C2888R.string.GiftPreviewModels), GlassTabView.createMainTab(context, resourcesProvider, GlassTabView.TabAnimation.COLORS, C2888R.string.GiftPreviewBackdrops), GlassTabView.createMainTab(context, resourcesProvider, GlassTabView.TabAnimation.SYMBOLS, C2888R.string.GiftPreviewSymbols)};
            final int i2 = 0;
            while (true) {
                GlassTabView[] glassTabViewArr = this.tabs;
                if (i2 < glassTabViewArr.length) {
                    this.linearLayout.addView(glassTabViewArr[i2], LayoutHelper.createLinear(0, -1, 1.0f));
                    this.tabs[i2].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stars.StarGiftPreviewSheet$TabsSelectorView$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$new$0(i2, view);
                        }
                    });
                    i2++;
                } else {
                    glassTabViewArr[0].setSelected(true, false);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, View view) {
            selectTab(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void selectTab(int i) {
            int i2 = this.selectedTab;
            if (i2 != i) {
                this.tabs[i2].setSelected(false, true);
                this.tabs[i].setSelected(true, true);
                this.selectedTab = i;
                this.animator.animateTo(i);
                this.onTabSelectListener.run(Integer.valueOf(i));
            }
        }

        public int getSelectedTab() {
            return this.selectedTab;
        }

        private void updateLens() {
            float factor = this.animator.getFactor();
            setLensBounds(AndroidUtilities.lerp(AndroidUtilities.m1124dp(8.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(8.0f), factor / 3.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.lerp(AndroidUtilities.m1124dp(8.0f), getMeasuredWidth() - AndroidUtilities.m1124dp(8.0f), (factor + 1.0f) / 3.0f), getMeasuredHeight() - AndroidUtilities.m1124dp(8.0f));
            MathUtils.clamp((int) ((1.0f - Math.abs(factor - 1.0f)) * 255.0f), 0, 255);
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            updateLens();
        }

        @Override // me.vkryl.android.animator.FactorAnimator.Target
        public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
            updateLens();
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMode(Mode mode) {
        int i;
        int i2;
        if (this.mode == mode) {
            return;
        }
        this.mode = mode;
        ImageView imageView = this.headerPlay;
        Mode mode2 = Mode.SELECTED;
        if (mode == mode2) {
            i = C2888R.drawable.filled_gift_play_24;
        } else {
            i = C2888R.drawable.filled_gift_pause_24;
        }
        imageView.setImageResource(i);
        TextView textView = this.giftStatusTextView;
        if (mode == mode2) {
            i2 = C2888R.string.Gift2PreviewSelectedTraits;
        } else {
            i2 = C2888R.string.Gift2PreviewRandomTraits;
        }
        textView.setText(LocaleController.getString(i2));
        updateSelectedForVisibleViews();
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet
    protected boolean isTouchOutside(float f, float f2) {
        return this.headerView.getVisibility() == 0 && this.headerView.getY() > f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSelectedWithCurrentTab(Attributes attributes) {
        if (this.mode == Mode.RANDOM) {
            return false;
        }
        int selectedTab = this.tabsSelectorView.getSelectedTab();
        Attributes attributes2 = this.selectedAttributes;
        if (attributes2 != null) {
            if (selectedTab == 1) {
                return attributes.backdrop == attributes2.backdrop;
            }
            if (selectedTab == 2) {
                return attributes.pattern == attributes2.pattern;
            }
            if (selectedTab == 0 && attributes.model == attributes2.model) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Attributes newSelectedWithCurrentTab(Attributes attributes) {
        int selectedTab = this.tabsSelectorView.getSelectedTab();
        Attributes attributes2 = this.selectedAttributes;
        if (attributes2 == null) {
            return null;
        }
        if (selectedTab == 1) {
            return new Attributes(attributes.backdrop, attributes2.pattern, attributes2.model);
        }
        if (selectedTab == 2) {
            return new Attributes(attributes2.backdrop, attributes.pattern, attributes2.model);
        }
        if (selectedTab == 0) {
            return new Attributes(attributes2.backdrop, attributes2.pattern, attributes.model);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedForVisibleViews() {
        int childCount = this.recyclerListView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.recyclerListView.getChildAt(i);
            if (childAt instanceof GiftAttributeCell) {
                GiftAttributeCell giftAttributeCell = (GiftAttributeCell) childAt;
                Attributes attributes = giftAttributeCell.attributes;
                if (attributes != null) {
                    giftAttributeCell.setSelected(isSelectedWithCurrentTab(attributes), true);
                }
            }
        }
    }
}
