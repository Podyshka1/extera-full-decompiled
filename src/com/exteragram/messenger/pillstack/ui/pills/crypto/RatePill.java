package com.exteragram.messenger.pillstack.ui.pills.crypto;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.ui.PillStackPreferencesActivity;
import com.exteragram.messenger.pillstack.ui.pills.BasePill;
import com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ColoredBackground;
import com.exteragram.messenger.pillstack.ui.pills.crypto.utils.PillStackCurrencies;
import com.exteragram.messenger.utils.network.ExchangeRates;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedTextView;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LoadingDrawable;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
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
        private final AtomicReference<String> cachedPrice = new AtomicReference<>();
        private final AtomicReference<String> cachedCurrency = new AtomicReference<>();
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public long getRefreshInterval() {
        return 300000L;
    }

    public abstract String getTargetSelection();

    public abstract void setTargetSelection(String str);

    public RatePill(Context context, Theme.ResourcesProvider resourcesProvider, RateCache rateCache, String str, int i, int i2, ColoredBackground coloredBackground) {
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
        linearLayout.setMinimumWidth(AndroidUtilities.dp(48.0f));
        linearLayout.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f), 0);
        addView(linearLayout, LayoutHelper.createFrame(-2, 28, (LocaleController.isRTL ? 3 : 5) | 16));
        ImageView imageView = new ImageView(context);
        this.iconView = imageView;
        imageView.setScaleType(i2 == C2807R.drawable.mini_gram_14 ? ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.CENTER_INSIDE);
        linearLayout.addView(imageView, LayoutHelper.createLinear(16, 16, 16, 0, 0, 4, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.textView = animatedTextView;
        animatedTextView.setTextSize(AndroidUtilities.dp(13.0f));
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

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public void onPillClicked() {
        if (this.iconView.getVisibility() == 0 && this.textView.getText() != null && TextUtils.equals(this.textView.getText(), LocaleController.getString(C2807R.string.Retry))) {
            onUpdateData(true);
        } else {
            onPillLongClicked();
        }
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pillStackSettingsChanged);
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
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

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public boolean onPillLongClicked() {
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return false;
        }
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(safeLastFragment, (View) this, true);
        final ItemOptions itemOptionsAddGap = itemOptionsMakeOptions.makeSwipeback(true).add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptionsMakeOptions)).addGap();
        final String targetSelection = getTargetSelection();
        String[] targetCurrencies = getTargetCurrencies();
        List listAsList = Arrays.asList(targetCurrencies);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        String[] strArr = {"AUTO", "USD", "EUR"};
        int i = 0;
        while (true) {
            if (i >= 3) {
                break;
            }
            String str = strArr[i];
            if (listAsList.contains(str)) {
                linkedHashSet.add(str);
            }
            i++;
        }
        Utilities.Callback callback = new Utilities.Callback() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onPillLongClicked$1(itemOptionsMakeOptions, targetSelection, itemOptionsAddGap, (String) obj);
            }
        };
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            callback.run((String) it.next());
        }
        itemOptionsAddGap.addGapIf(!linkedHashSet.isEmpty() && linkedHashSet.size() < targetCurrencies.length);
        for (String str2 : targetCurrencies) {
            if (!linkedHashSet.contains(str2)) {
                callback.run(str2);
            }
        }
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(itemOptionsMakeOptions.getContext(), false, false, this.resourcesProvider);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2807R.string.CryptoPillTargetCurrency), C2807R.drawable.msg_language);
        actionBarMenuSubItem.setSubtext(PillStackCurrencies.getTargetCurrencySubtext(getTargetSelection()));
        actionBarMenuSubItem.setItemHeight(56);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                itemOptionsMakeOptions.openSwipeback(itemOptionsAddGap);
            }
        });
        itemOptionsMakeOptions.add(actionBarMenuSubItem).addGap().add(C2807R.drawable.msg_retry, LocaleController.getString(C2807R.string.Refresh), new Runnable() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onPillLongClicked$3();
            }
        }).add(C2807R.drawable.msg_settings, LocaleController.getString(C2807R.string.Settings), new Runnable() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                safeLastFragment.presentFragment(new PillStackPreferencesActivity());
            }
        }).setSwipebackGravity(!LocaleController.isRTL, false).forceBelowScrim(true).setDrawScrim(false).setGravity(LocaleController.isRTL ? 3 : 5).setDimAlpha(0).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPillLongClicked$1(final ItemOptions itemOptions, String str, ItemOptions itemOptions2, final String str2) {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(itemOptions.getContext(), 2, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        if ("AUTO".equalsIgnoreCase(str2)) {
            actionBarMenuSubItem.setText(LocaleController.getString(C2807R.string.QualityAuto));
            actionBarMenuSubItem.setSubtext(PillStackCurrencies.getCurrencyName(PillStackCurrencies.resolveTargetCurrency(UserConfig.selectedAccount, str2)));
        } else {
            actionBarMenuSubItem.setText(str2);
            actionBarMenuSubItem.setSubtext(PillStackCurrencies.getCurrencyName(str2));
        }
        final boolean zEqualsIgnoreCase = str2.equalsIgnoreCase(str);
        actionBarMenuSubItem.subtextView.setPadding(0, 0, AndroidUtilities.dp(zEqualsIgnoreCase ? 42.0f : 0.0f), 0);
        actionBarMenuSubItem.setChecked(zEqualsIgnoreCase);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onPillLongClicked$0(itemOptions, zEqualsIgnoreCase, str2, view);
            }
        });
        itemOptions2.addView(actionBarMenuSubItem, LayoutHelper.createLinear(200, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPillLongClicked$0(ItemOptions itemOptions, boolean z, String str, View view) {
        itemOptions.dismiss();
        if (z) {
            return;
        }
        setTargetSelection(str);
        onUpdateData(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPillLongClicked$3() {
        onUpdateData(true);
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public void onUpdateData(boolean z) {
        final String strResolveTargetCurrency = PillStackCurrencies.resolveTargetCurrency(UserConfig.selectedAccount, getTargetSelection());
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
                this.f$0.lambda$onUpdateData$5(strResolveTargetCurrency, (ExchangeRates.State) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onUpdateData$5(String str, ExchangeRates.State state) {
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

    public String formatPrice(BigDecimal bigDecimal, String str) {
        String fiatPrice = PillStackCurrencies.formatFiatPrice(bigDecimal, str);
        if (fiatPrice != null) {
            return fiatPrice;
        }
        return bigDecimal.setScale(this.scale, RoundingMode.HALF_UP).toPlainString() + " " + str;
    }

    public String[] getTargetCurrencies() {
        return PillStackCurrencies.TARGET_CURRENCIES;
    }

    private void setErrorState(boolean z) {
        stopLoading();
        if (z) {
            animateSizeChange();
        }
        this.iconView.setImageResource(C2807R.drawable.msg_retry);
        this.iconView.setVisibility(0);
        this.textView.setText(LocaleController.getString(C2807R.string.Retry), z);
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

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public void updateColors() {
        this.layout.setBackground(this.background);
        this.textView.setTextColor(-1);
        this.iconView.setColorFilter(-1);
        updateLoadingColors();
    }

    @Override // com.exteragram.messenger.pillstack.ui.pills.BasePill
    public void updateLoadingColors() {
        LoadingDrawable loadingDrawable = this.loadingDrawable;
        if (loadingDrawable != null) {
            loadingDrawable.setColors(Theme.multAlpha(-1, 0.1f), Theme.multAlpha(-1, 0.3f), Theme.multAlpha(-1, 0.2f), Theme.multAlpha(-1, 0.45f));
        }
    }
}
