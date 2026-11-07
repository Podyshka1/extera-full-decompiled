package com.exteragram.messenger.plugins.ui.components;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.ui.components.AnalysisSummary;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001'B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0014J\u001a\u0010\u001f\u001a\u00020\u001b2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020&H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0019¨\u0006("}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummaryCell;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "content", "Landroid/widget/LinearLayout;", "icon", "Lcom/exteragram/messenger/plugins/ui/components/TintedIcon;", "progressView", "Lorg/telegram/ui/Components/RadialProgressView;", "titleView", "Landroid/widget/TextView;", "subtitleView", "arrowView", "Landroid/widget/ImageView;", "dividerView", "Landroid/view/View;", "chipsLayout", "Lcom/exteragram/messenger/plugins/ui/components/ChipsLayout;", "wasLoading", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Boolean;", "onMeasure", _UrlKt.FRAGMENT_ENCODE_SET, "widthMeasureSpec", _UrlKt.FRAGMENT_ENCODE_SET, "heightMeasureSpec", "set", "summary", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary;", "onClick", "Landroid/view/View$OnClickListener;", "chipView", "chip", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary$Chip;", "Factory", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
public final class AnalysisSummaryCell extends FrameLayout {
    private final ImageView arrowView;
    private final ChipsLayout chipsLayout;
    private final LinearLayout content;
    private final View dividerView;
    private final TintedIcon icon;
    private final RadialProgressView progressView;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView subtitleView;
    private final TextView titleView;
    private Boolean wasLoading;

    public AnalysisSummaryCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        LinearLayout linearLayout = new LinearLayout(context);
        this.content = linearLayout;
        TintedIcon tintedIcon = new TintedIcon(context);
        this.icon = tintedIcon;
        RadialProgressView radialProgressView = new RadialProgressView(context, resourcesProvider);
        radialProgressView.setSize(AndroidUtilities.dp(18.0f));
        radialProgressView.setStrokeWidth(2.0f);
        radialProgressView.setStyle(2);
        this.progressView = radialProgressView;
        TextView textView = new TextView(context);
        PluginAnalysisCellsKt.setTextMetrics(textView, 16.0f, 20.0f, AndroidUtilities.bold());
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.titleView = textView;
        TextView textView2 = new TextView(context);
        PluginAnalysisCellsKt.setTextMetrics$default(textView2, 13.0f, 17.0f, null, 4, null);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        this.subtitleView = textView2;
        ImageView imageViewArrowView = PluginAnalysisCellsKt.arrowView(context, resourcesProvider);
        imageViewArrowView.setRotation(LocaleController.isRTL ? 90.0f : -90.0f);
        this.arrowView = imageViewArrowView;
        View view = new View(context);
        this.dividerView = view;
        ChipsLayout chipsLayout = new ChipsLayout(context);
        this.chipsLayout = chipsLayout;
        tintedIcon.getContainer().addView(radialProgressView, LayoutHelper.createFrame(20, 20, 17));
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setMinimumHeight(AndroidUtilities.dp(40.0f));
        linearLayout2.addView(tintedIcon.getContainer(), LayoutHelper.createLinear(40, 40, 48));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(1);
        linearLayout3.addView(textView, LayoutHelper.createLinear(-1, -2));
        linearLayout3.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 4.0f, 0.0f, 0.0f));
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(0, -2, 1.0f, 16, 12, 0, 0, 0));
        linearLayout2.addView(imageViewArrowView, LayoutHelper.createLinear(42, 42, 48, 4, -1, 0, 0));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 1);
        layoutParams.topMargin = AndroidUtilities.dp(12.0f);
        layoutParams.bottomMargin = AndroidUtilities.dp(11.0f);
        Unit unit = Unit.INSTANCE;
        linearLayout.addView(view, layoutParams);
        linearLayout.addView(chipsLayout, LayoutHelper.createLinear(-1, -2));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(widthMeasureSpec), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    public final void set(AnalysisSummary summary, View.OnClickListener onClick) {
        if (summary == null) {
            return;
        }
        this.content.setOnClickListener(onClick);
        this.content.setClickable(onClick != null);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        this.content.setBackground(onClick != null ? Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 2) : null);
        this.arrowView.setVisibility(onClick != null ? 0 : 8);
        boolean z = Intrinsics.areEqual(this.wasLoading, Boolean.TRUE) && !summary.getLoading();
        this.wasLoading = Boolean.valueOf(summary.getLoading());
        final int backgroundColor = this.icon.getBackgroundColor();
        this.icon.bind(summary.getLoading() ? 0 : summary.getIconRes(), summary.getColor());
        final int backgroundColor2 = this.icon.getBackgroundColor();
        if (summary.getLoading()) {
            this.progressView.setProgressColor(summary.getColor());
        }
        if (z && backgroundColor != backgroundColor2) {
            this.icon.setBackgroundColor(backgroundColor);
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.plugins.ui.components.AnalysisSummaryCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.icon.setBackgroundColor(ColorUtils.blendARGB(backgroundColor, backgroundColor2, valueAnimator.getAnimatedFraction()));
                }
            };
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, summary.getLoading(), 0.5f, z);
        AndroidUtilities.updateViewVisibilityAnimated(this.icon.getIcon(), !summary.getLoading(), 0.5f, true, 1.0f, z, animatorUpdateListener);
        this.titleView.setText(PluginAnalysisCellsKt.withBadge(summary.getTitle(), summary.getBadge(), summary.getBadgeColor()));
        this.subtitleView.setText(summary.getSubtitle());
        TextView textView = this.subtitleView;
        CharSequence subtitle = summary.getSubtitle();
        textView.setVisibility((subtitle == null || subtitle.length() == 0) ? 8 : 0);
        this.chipsLayout.removeAllViews();
        Iterator<AnalysisSummary.Chip> it = summary.getChips().iterator();
        while (it.hasNext()) {
            this.chipsLayout.addView(chipView(it.next()));
        }
        boolean zIsEmpty = summary.getChips().isEmpty();
        this.chipsLayout.setVisibility(!zIsEmpty ? 0 : 8);
        this.dividerView.setVisibility(zIsEmpty ? 8 : 0);
        this.dividerView.setBackgroundColor(Theme.getDividerColor(this.resourcesProvider));
    }

    private final TextView chipView(AnalysisSummary.Chip chip) {
        Drawable drawableMutate;
        TextView textView = new TextView(getContext());
        PluginAnalysisCellsKt.setTextMetrics(textView, 13.0f, 17.0f, AndroidUtilities.bold());
        textView.setTextColor(chip.getColor());
        textView.setGravity(16);
        textView.setSingleLine(true);
        textView.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(10.0f), 0);
        textView.setBackground(Theme.createRoundRectDrawable(PluginAnalysisCellsKt.analysisInnerRadius(), Theme.multAlpha(chip.getColor(), 0.15f)));
        textView.setCompoundDrawablePadding(AndroidUtilities.dp(6.0f));
        Drawable drawable = ContextCompat.getDrawable(textView.getContext(), chip.getIconRes());
        if (drawable != null && (drawableMutate = drawable.mutate()) != null) {
            drawableMutate.setColorFilter(new PorterDuffColorFilter(chip.getColor(), PorterDuff.Mode.SRC_IN));
            drawableMutate.setBounds(0, 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            textView.setCompoundDrawablesRelative(drawableMutate, null, null, null);
        }
        textView.setText(chip.getText());
        return textView;
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J4\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J4\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\b\u001a\u0004\u0018\u00010\u0019H\u0016J\u0019\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0096\u0002J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummaryCell$Factory;", "Lorg/telegram/ui/Components/UItem$UItemFactory;", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummaryCell;", "<init>", "()V", "createView", "context", "Landroid/content/Context;", "listView", "Lorg/telegram/ui/Components/RecyclerListView;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "classGuid", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "bindView", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.VIEW, "Landroid/view/View;", PluginsConstants.Settings.ITEM, "Lorg/telegram/ui/Components/UItem;", PluginsConstants.Settings.TYPE_DIVIDER, _UrlKt.FRAGMENT_ENCODE_SET, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "equals", "a", "b", "contentsEquals", "isClickable", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory extends UItem.UItemFactory<AnalysisSummaryCell> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @JvmStatic
        public static final UItem of(int i, AnalysisSummary analysisSummary, View.OnClickListener onClickListener) {
            return INSTANCE.of(i, analysisSummary, onClickListener);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return false;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public AnalysisSummaryCell createView(Context context, RecyclerListView listView, int currentAccount, int classGuid, Theme.ResourcesProvider resourcesProvider) {
            return new AnalysisSummaryCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem item, boolean divider, UniversalAdapter adapter, UniversalRecyclerView listView) {
            AnalysisSummaryCell analysisSummaryCell = view instanceof AnalysisSummaryCell ? (AnalysisSummaryCell) view : null;
            if (analysisSummaryCell != null) {
                Object obj = item.object;
                analysisSummaryCell.set(obj instanceof AnalysisSummary ? (AnalysisSummary) obj : null, item.clickCallback);
            }
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem a2, UItem b2) {
            return a2.id == b2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem a2, UItem b2) {
            if (a2.id == b2.id && a2.object == b2.object) {
                if ((a2.clickCallback == null) == (b2.clickCallback == null)) {
                    return true;
                }
            }
            return false;
        }

        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummaryCell$Factory$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "of", "Lorg/telegram/ui/Components/UItem;", "id", _UrlKt.FRAGMENT_ENCODE_SET, "summary", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary;", "onClick", "Landroid/view/View$OnClickListener;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final UItem of(int id, AnalysisSummary summary, View.OnClickListener onClick) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = id;
                uItemOfFactory.object = summary;
                uItemOfFactory.clickCallback = onClick;
                return uItemOfFactory;
            }
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }
    }
}
