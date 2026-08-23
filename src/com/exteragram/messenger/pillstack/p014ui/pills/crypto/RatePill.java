package com.exteragram.messenger.pillstack.p014ui.pills.crypto;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.p014ui.PillStackPreferencesActivity;
import com.exteragram.messenger.pillstack.p014ui.pills.BasePill;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils.ColoredBackground;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils.ExchangeRates;
import com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils.PillStackCurrencies;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LoadingDrawable;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
public abstract class RatePill extends BasePill implements NotificationCenter.NotificationCenterDelegate {
    private final ColoredBackground background;
    private final String baseCurrency;
    private final RateCache cache;
    private final int iconResId;
    private final ImageView iconView;
    private final LinearLayout layout;
    private boolean requestInFlight;
    private final int scale;
    private final AnimatedTextView textView;

    public static final class RateCache {
        private final AtomicReference cachedPrice = new AtomicReference();
        private final AtomicReference cachedCurrency = new AtomicReference();
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public long getRefreshInterval() {
        return 300000L;
    }

    protected abstract String getTargetSelection();

    protected abstract void setTargetSelection(String str);

    protected RatePill(Context context, Theme.ResourcesProvider resourcesProvider, RateCache rateCache, String str, int i, int i2, ColoredBackground coloredBackground) {
        super(context, resourcesProvider);
        this.cache = rateCache;
        this.baseCurrency = str;
        this.scale = i;
        this.iconResId = i2;
        this.background = coloredBackground;
        LinearLayout linearLayout = new LinearLayout(context);
        this.layout = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setMinimumWidth(AndroidUtilities.m1124dp(48.0f));
        linearLayout.setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
        addView(linearLayout, LayoutHelper.createFrame(-2, 28, (LocaleController.isRTL ? 3 : 5) | 16));
        ImageView imageView = new ImageView(context);
        this.iconView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        linearLayout.addView(imageView, LayoutHelper.createLinear(16, 16, 16, 0, 0, 4, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.textView = animatedTextView;
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(13.0f));
        animatedTextView.setIncludeFontPadding(false);
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.adaptWidth = true;
        linearLayout.addView(animatedTextView, LayoutHelper.createLinear(-2, -2, 16));
        setLoadingTargetView(linearLayout);
        updateColors();
        ScaleStateListAnimator.apply(linearLayout);
        String str2 = (String) rateCache.cachedPrice.get();
        if (str2 != null) {
            setData(str2, false);
        }
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public void onPillClicked() {
        if (this.iconView.getVisibility() == 0 && this.textView.getText() != null && TextUtils.equals(this.textView.getText(), LocaleController.getString(C2888R.string.Retry))) {
            onUpdateData(true);
        } else {
            onPillLongClicked();
        }
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (PillStackConfig.checkAndClearPendingUpdate(getPillId()) || this.cache.cachedPrice.get() == null || isRefreshDue()) {
            onUpdateData(true);
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pillStackSettingsChanged);
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pillStackSettingsChanged);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.pillStackSettingsChanged && PillStackConfig.shouldUpdatePill(objArr, getPillId()) && getTargetSelection().equals("AUTO")) {
            PillStackConfig.checkAndClearPendingUpdate(getPillId());
            onUpdateData(true);
        }
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public boolean onPillLongClicked() {
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return false;
        }
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(safeLastFragment, (View) this, true);
        final ItemOptions itemOptionsAddGap = itemOptionsMakeOptions.makeSwipeback(true).add(C2888R.drawable.ic_ab_back, LocaleController.getString(C2888R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptionsMakeOptions)).addGap();
        final String targetSelection = getTargetSelection();
        for (final String str : getTargetCurrencies()) {
            itemOptionsAddGap.addChecked(str.equalsIgnoreCase(targetSelection), PillStackCurrencies.getTargetCurrencyLabel(str), new Runnable() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPillLongClicked$0(itemOptionsMakeOptions, str, targetSelection);
                }
            });
        }
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(itemOptionsMakeOptions.getContext(), false, false, this.resourcesProvider);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.CryptoPillTargetCurrency), C2888R.drawable.msg_language);
        actionBarMenuSubItem.setSubtext(PillStackCurrencies.getTargetCurrencySubtext(getTargetSelection()));
        actionBarMenuSubItem.setItemHeight(56);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                itemOptionsMakeOptions.openSwipeback(itemOptionsAddGap);
            }
        });
        itemOptionsMakeOptions.add(actionBarMenuSubItem).addGap().add(C2888R.drawable.msg_retry, LocaleController.getString(C2888R.string.Refresh), new Runnable() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onPillLongClicked$2();
            }
        }).add(C2888R.drawable.msg_settings, LocaleController.getString(C2888R.string.Settings), new Runnable() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                safeLastFragment.presentFragment(new PillStackPreferencesActivity());
            }
        }).setSwipebackGravity(!LocaleController.isRTL, false).forceBelowScrim(true).setDrawScrim(false).setGravity(LocaleController.isRTL ? 3 : 5).setDimAlpha(0).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPillLongClicked$0(ItemOptions itemOptions, String str, String str2) {
        itemOptions.dismiss();
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        setTargetSelection(str);
        onUpdateData(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPillLongClicked$2() {
        onUpdateData(true);
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public void onUpdateData(boolean z) {
        final String strResolveTargetCurrency = ExchangeRates.resolveTargetCurrency(UserConfig.selectedAccount, getTargetSelection());
        String str = (String) this.cache.cachedPrice.get();
        if (!TextUtils.equals(strResolveTargetCurrency, (CharSequence) this.cache.cachedCurrency.get())) {
            str = null;
        }
        if (!z && str != null && !isRefreshDue()) {
            setData(str, false);
            return;
        }
        if (this.requestInFlight) {
            return;
        }
        this.requestInFlight = true;
        if (z) {
            animateSizeChange();
        }
        startLoading();
        if (str == null && this.cache.cachedPrice.get() == null) {
            this.iconView.setVisibility(8);
            this.textView.setVisibility(8);
        } else {
            this.iconView.setImageResource(this.iconResId);
            this.iconView.setVisibility(0);
            this.textView.setVisibility(0);
        }
        if (z) {
            ExchangeRates.clearCache();
        }
        ExchangeRates.fetch(new Utilities.Callback() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onUpdateData$4(strResolveTargetCurrency, (ExchangeRates.State) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateData$4(String str, ExchangeRates.State state) {
        this.requestInFlight = false;
        if (state == null) {
            String str2 = (String) this.cache.cachedPrice.get();
            if (str2 != null) {
                setData(str2, true);
                return;
            } else {
                setErrorState(true);
                return;
            }
        }
        BigDecimal rate = state.getRate(this.baseCurrency, str);
        if (rate == null) {
            String str3 = (String) this.cache.cachedPrice.get();
            if (str3 != null) {
                setData(str3, true);
                return;
            } else {
                setErrorState(true);
                return;
            }
        }
        String price = formatPrice(rate, str);
        this.cache.cachedPrice.set(price);
        this.cache.cachedCurrency.set(str);
        setData(price, true);
        markDataUpdated();
    }

    protected String formatPrice(BigDecimal bigDecimal, String str) {
        String fiatPrice = PillStackCurrencies.formatFiatPrice(bigDecimal, str);
        if (fiatPrice != null) {
            return fiatPrice;
        }
        return bigDecimal.setScale(this.scale, RoundingMode.HALF_UP).toPlainString() + " " + str;
    }

    protected String[] getTargetCurrencies() {
        return PillStackCurrencies.TARGET_CURRENCIES;
    }

    private void setErrorState(boolean z) {
        stopLoading();
        if (z) {
            animateSizeChange();
        }
        this.iconView.setImageResource(C2888R.drawable.msg_retry);
        this.iconView.setVisibility(0);
        this.textView.setText(LocaleController.getString(C2888R.string.Retry), z);
        this.textView.setVisibility(0);
    }

    private void setData(String str, boolean z) {
        stopLoading();
        if (z) {
            animateSizeChange();
        }
        this.iconView.setImageResource(this.iconResId);
        this.iconView.setVisibility(0);
        this.textView.setText(str, z);
        this.textView.setVisibility(0);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.loading) {
            z = false;
        }
        super.setPressed(z);
        this.layout.setPressed(z);
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    public void updateColors() {
        this.layout.setBackground(this.background);
        this.textView.setTextColor(-1);
        this.iconView.setColorFilter(-1);
        updateLoadingColors();
    }

    @Override // com.exteragram.messenger.pillstack.p014ui.pills.BasePill
    protected void updateLoadingColors() {
        LoadingDrawable loadingDrawable = this.loadingDrawable;
        if (loadingDrawable != null) {
            loadingDrawable.setColors(Theme.multAlpha(-1, 0.1f), Theme.multAlpha(-1, 0.3f));
        }
    }
}
