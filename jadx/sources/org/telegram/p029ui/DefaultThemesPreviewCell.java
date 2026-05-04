package org.telegram.p029ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.EmojiThemes;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Components.ChatThemeBottomSheet;
import org.telegram.p029ui.Components.FlickerLoadingView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ThemeSmallPreviewView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultThemesPreviewCell extends LinearLayout implements Theme.Colorable {
    private final ChatThemeBottomSheet.Adapter adapter;
    int currentType;
    RLottieDrawable darkThemeDrawable;
    TextCell dayNightCell;
    private LinearLayoutManager layoutManager;
    private ValueAnimator navBarAnimator;
    private int navBarColor;
    BaseFragment parentFragment;
    private final FlickerLoadingView progressView;
    private final RecyclerListView recyclerView;
    private int selectedPosition;
    int themeIndex;
    private Boolean wasPortrait;

    public DefaultThemesPreviewCell(Context context, final BaseFragment baseFragment, int i) {
        LinearLayoutManager linearLayoutManager;
        super(context);
        this.layoutManager = null;
        this.selectedPosition = -1;
        this.wasPortrait = null;
        this.currentType = i;
        this.parentFragment = baseFragment;
        setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f));
        int currentAccount = baseFragment.getCurrentAccount();
        int i2 = this.currentType;
        ChatThemeBottomSheet.Adapter adapter = new ChatThemeBottomSheet.Adapter(currentAccount, null, (i2 == 0 || i2 == -1) ? 0 : 1);
        this.adapter = adapter;
        RecyclerListView recyclerListView = new RecyclerListView(getContext()) { // from class: org.telegram.ui.DefaultThemesPreviewCell.1
            @Override // org.telegram.p029ui.Components.RecyclerListView
            public Integer getSelectorColor(int i3) {
                return 0;
            }
        };
        this.recyclerView = recyclerListView;
        recyclerListView.setAdapter(adapter);
        recyclerListView.setSelectorDrawableColor(0);
        recyclerListView.setClipChildren(false);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setHasFixedSize(true);
        recyclerListView.setItemAnimator(null);
        recyclerListView.setNestedScrollingEnabled(false);
        updateLayoutManager();
        recyclerListView.setFocusable(false);
        recyclerListView.setPadding(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f), 0);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.DefaultThemesPreviewCell$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$new$0(baseFragment, view, i3);
            }
        });
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(getContext(), null);
        this.progressView = flickerLoadingView;
        flickerLoadingView.setViewType(14);
        flickerLoadingView.setVisibility(0);
        int i3 = this.currentType;
        if (i3 == 0 || i3 == -1) {
            frameLayout.addView(flickerLoadingView, LayoutHelper.createFrame(-1, 104.0f, 8388611, 0.0f, 8.0f, 0.0f, 8.0f));
            frameLayout.addView(recyclerListView, LayoutHelper.createFrame(-1, 104.0f, 8388611, 0.0f, 8.0f, 0.0f, 8.0f));
        } else {
            frameLayout.addView(flickerLoadingView, LayoutHelper.createFrame(-1, 104.0f, 8388611, 0.0f, 8.0f, 0.0f, 8.0f));
            frameLayout.addView(recyclerListView, LayoutHelper.createFrame(-1, -2.0f, 8388611, 0.0f, 8.0f, 0.0f, 8.0f));
        }
        recyclerListView.setEmptyView(flickerLoadingView);
        recyclerListView.setAnimateEmptyView(true, 0);
        if (this.currentType == 0) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.sun_outline, _UrlKt.FRAGMENT_ENCODE_SET + C2888R.raw.sun_outline, AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), true, null);
            this.darkThemeDrawable = rLottieDrawable;
            rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
            this.darkThemeDrawable.beginApplyLayerColors();
            this.darkThemeDrawable.commitApplyLayerColors();
            TextCell textCell = new TextCell(context);
            this.dayNightCell = textCell;
            textCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
            TextCell textCell2 = this.dayNightCell;
            textCell2.imageLeft = 21;
            addView(textCell2, LayoutHelper.createFrame(-1, -2.0f));
            this.dayNightCell.setOnClickListener(new ViewOnClickListenerC55002(context, baseFragment));
            this.darkThemeDrawable.setPlayInDirectionOfCustomEndFrame(true);
            if (!Theme.isCurrentThemeDay()) {
                RLottieDrawable rLottieDrawable2 = this.darkThemeDrawable;
                rLottieDrawable2.setCurrentFrame(rLottieDrawable2.getFramesCount() - 1);
                this.dayNightCell.setTextAndIcon((CharSequence) LocaleController.getString(C2888R.string.SettingsSwitchToDayMode), (Drawable) this.darkThemeDrawable, true);
            } else {
                this.dayNightCell.setTextAndIcon((CharSequence) LocaleController.getString(C2888R.string.SettingsSwitchToNightMode), (Drawable) this.darkThemeDrawable, true);
            }
        }
        if (!MediaDataController.getInstance(baseFragment.getCurrentAccount()).defaultEmojiThemes.isEmpty()) {
            ArrayList arrayList = new ArrayList(MediaDataController.getInstance(baseFragment.getCurrentAccount()).defaultEmojiThemes);
            if (this.currentType == 0) {
                EmojiThemes emojiThemesCreatePreviewCustom = EmojiThemes.createPreviewCustom(baseFragment.getCurrentAccount());
                emojiThemesCreatePreviewCustom.loadPreviewColors(baseFragment.getCurrentAccount());
                ChatThemeBottomSheet.ChatThemeItem chatThemeItem = new ChatThemeBottomSheet.ChatThemeItem(emojiThemesCreatePreviewCustom);
                chatThemeItem.themeIndex = Theme.isCurrentThemeDay() ? 0 : 2;
                arrayList.add(chatThemeItem);
            }
            adapter.setItems(arrayList);
        }
        updateDayNightMode();
        updateSelectedPosition();
        updateColors();
        int i4 = this.selectedPosition;
        if (i4 < 0 || (linearLayoutManager = this.layoutManager) == null) {
            return;
        }
        linearLayoutManager.scrollToPositionWithOffset(i4, AndroidUtilities.m1124dp(16.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(BaseFragment baseFragment, View view, int i) {
        ChatThemeBottomSheet.ChatThemeItem chatThemeItem = (ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i);
        Theme.ThemeInfo themeInfo = chatThemeItem.chatTheme.getThemeInfo(this.themeIndex);
        int accentId = (chatThemeItem.chatTheme.getEmoticonOrSlug().equals("🏠") || chatThemeItem.chatTheme.getEmoticonOrSlug().equals("🎨")) ? chatThemeItem.chatTheme.getAccentId(this.themeIndex) : -1;
        if (themeInfo == null) {
            TLRPC.TL_theme tlTheme = chatThemeItem.chatTheme.getTlTheme(this.themeIndex);
            Theme.ThemeInfo theme = Theme.getTheme(Theme.getBaseThemeKey((TLRPC.ThemeSettings) tlTheme.settings.get(chatThemeItem.chatTheme.getSettingsIndex(this.themeIndex))));
            if (theme != null) {
                Theme.ThemeAccent themeAccentCreateNewAccent = (Theme.ThemeAccent) theme.accentsByThemeId.get(tlTheme.f1808id);
                if (themeAccentCreateNewAccent == null) {
                    themeAccentCreateNewAccent = theme.createNewAccent(tlTheme, baseFragment.getCurrentAccount());
                }
                accentId = themeAccentCreateNewAccent.f1877id;
                theme.setCurrentAccentId(accentId);
            }
            themeInfo = theme;
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo, Boolean.FALSE, null, Integer.valueOf(accentId));
        this.selectedPosition = i;
        int i2 = 0;
        while (i2 < this.adapter.items.size()) {
            ((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i2)).isSelected = i2 == this.selectedPosition;
            i2++;
        }
        this.adapter.setSelectedItem(this.selectedPosition);
        for (int i3 = 0; i3 < this.recyclerView.getChildCount(); i3++) {
            ThemeSmallPreviewView themeSmallPreviewView = (ThemeSmallPreviewView) this.recyclerView.getChildAt(i3);
            if (themeSmallPreviewView != view) {
                themeSmallPreviewView.cancelAnimation();
            }
        }
        ((ThemeSmallPreviewView) view).playEmojiAnimation();
        if (themeInfo != null) {
            SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
            editorEdit.putString((this.currentType == 1 || themeInfo.isDark()) ? "lastDarkTheme" : "lastDayTheme", themeInfo.getKey());
            editorEdit.apply();
        }
        Theme.turnOffAutoNight(baseFragment);
    }

    /* JADX INFO: renamed from: org.telegram.ui.DefaultThemesPreviewCell$2 */
    class ViewOnClickListenerC55002 implements View.OnClickListener {
        final /* synthetic */ Context val$context;
        final /* synthetic */ BaseFragment val$parentFragment;

        ViewOnClickListenerC55002(Context context, BaseFragment baseFragment) {
            this.val$context = context;
            this.val$parentFragment = baseFragment;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onClick(View view) {
            boolean zIsCurrentThemeDark;
            Theme.ThemeInfo theme;
            if (DialogsActivity.switchingTheme) {
                return;
            }
            final int color = Theme.getColor(Theme.key_windowBackgroundGray);
            DialogsActivity.switchingTheme = true;
            SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0);
            String str = "Blue";
            String string = sharedPreferences.getString("lastDayTheme", "Blue");
            if (Theme.getTheme(string) == null || Theme.getTheme(string).isDark()) {
                string = "Blue";
            }
            String str2 = "Dark Blue";
            String string2 = sharedPreferences.getString("lastDarkTheme", "Dark Blue");
            if (Theme.getTheme(string2) == null || !Theme.getTheme(string2).isDark()) {
                string2 = "Dark Blue";
            }
            Theme.ThemeInfo activeTheme = Theme.getActiveTheme();
            if (string.equals(string2)) {
                if (activeTheme.isDark() || string.equals("Dark Blue") || string.equals("Night")) {
                    str2 = string2;
                }
                zIsCurrentThemeDark = Theme.isCurrentThemeDark();
                final boolean z = !zIsCurrentThemeDark;
                if (zIsCurrentThemeDark) {
                    theme = Theme.getTheme(str2);
                } else {
                    theme = Theme.getTheme(str);
                }
                Theme.ThemeInfo themeInfo = theme;
                RLottieDrawable rLottieDrawable = DefaultThemesPreviewCell.this.darkThemeDrawable;
                rLottieDrawable.setCustomEndFrame(zIsCurrentThemeDark ? rLottieDrawable.getFramesCount() - 1 : 0);
                DefaultThemesPreviewCell.this.dayNightCell.getImageView().playAnimation();
                int[] iArr = new int[2];
                DefaultThemesPreviewCell.this.dayNightCell.getImageView().getLocationInWindow(iArr);
                iArr[0] = iArr[0] + (DefaultThemesPreviewCell.this.dayNightCell.getImageView().getMeasuredWidth() / 2);
                iArr[1] = iArr[1] + (DefaultThemesPreviewCell.this.dayNightCell.getImageView().getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(3.0f);
                final Context context = this.val$context;
                final BaseFragment baseFragment = this.val$parentFragment;
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo, Boolean.FALSE, iArr, -1, Boolean.valueOf(z), DefaultThemesPreviewCell.this.dayNightCell.getImageView(), DefaultThemesPreviewCell.this.dayNightCell, new Runnable() { // from class: org.telegram.ui.DefaultThemesPreviewCell$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$0(context, color, z, baseFragment);
                    }
                });
            }
            str2 = string2;
            str = string;
            zIsCurrentThemeDark = Theme.isCurrentThemeDark();
            final boolean z2 = !zIsCurrentThemeDark;
            if (zIsCurrentThemeDark) {
            }
            Theme.ThemeInfo themeInfo2 = theme;
            RLottieDrawable rLottieDrawable2 = DefaultThemesPreviewCell.this.darkThemeDrawable;
            rLottieDrawable2.setCustomEndFrame(zIsCurrentThemeDark ? rLottieDrawable2.getFramesCount() - 1 : 0);
            DefaultThemesPreviewCell.this.dayNightCell.getImageView().playAnimation();
            int[] iArr2 = new int[2];
            DefaultThemesPreviewCell.this.dayNightCell.getImageView().getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] + (DefaultThemesPreviewCell.this.dayNightCell.getImageView().getMeasuredWidth() / 2);
            iArr2[1] = iArr2[1] + (DefaultThemesPreviewCell.this.dayNightCell.getImageView().getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(3.0f);
            final Context context2 = this.val$context;
            final BaseFragment baseFragment2 = this.val$parentFragment;
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo2, Boolean.FALSE, iArr2, -1, Boolean.valueOf(z2), DefaultThemesPreviewCell.this.dayNightCell.getImageView(), DefaultThemesPreviewCell.this.dayNightCell, new Runnable() { // from class: org.telegram.ui.DefaultThemesPreviewCell$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onClick$0(context2, color, z2, baseFragment2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(Context context, int i, boolean z, BaseFragment baseFragment) {
            DefaultThemesPreviewCell.this.updateDayNightMode();
            DefaultThemesPreviewCell.this.updateSelectedPosition();
            if (Theme.isCurrentThemeDay()) {
                DefaultThemesPreviewCell.this.dayNightCell.textView.setText(LocaleController.getString(C2888R.string.SettingsSwitchToNightMode));
            } else {
                DefaultThemesPreviewCell.this.dayNightCell.textView.setText(LocaleController.getString(C2888R.string.SettingsSwitchToDayMode));
            }
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4), PorterDuff.Mode.SRC_IN);
            DefaultThemesPreviewCell.this.darkThemeDrawable.setColorFilter(porterDuffColorFilter);
            DefaultThemesPreviewCell.this.dayNightCell.getImageView().setColorFilter(porterDuffColorFilter);
            DefaultThemesPreviewCell.this.dayNightCell.getImageView().setImageDrawable(DefaultThemesPreviewCell.this.darkThemeDrawable);
            DefaultThemesPreviewCell.this.dayNightCell.getImageView().setVisibility(0);
            final int color = Theme.getColor(Theme.key_windowBackgroundGray);
            final Activity activity = context instanceof Activity ? (Activity) context : null;
            if ((activity != null ? activity.getWindow() : null) != null) {
                if (DefaultThemesPreviewCell.this.navBarAnimator != null && DefaultThemesPreviewCell.this.navBarAnimator.isRunning()) {
                    DefaultThemesPreviewCell.this.navBarAnimator.cancel();
                }
                if (DefaultThemesPreviewCell.this.navBarAnimator != null && DefaultThemesPreviewCell.this.navBarAnimator.isRunning()) {
                    i = DefaultThemesPreviewCell.this.navBarColor;
                }
                final int i2 = i;
                DefaultThemesPreviewCell.this.navBarAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
                final float f = z ? 50.0f : 200.0f;
                final float f2 = 350.0f;
                final float f3 = 150.0f;
                DefaultThemesPreviewCell.this.navBarAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.DefaultThemesPreviewCell.2.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        DefaultThemesPreviewCell.this.navBarColor = ColorUtils.blendARGB(i2, color, Math.max(0.0f, Math.min(1.0f, ((((Float) valueAnimator.getAnimatedValue()).floatValue() * f2) - f) / f3)));
                        AndroidUtilities.setNavigationBarColor(activity, DefaultThemesPreviewCell.this.navBarColor, false);
                        AndroidUtilities.setLightNavigationBar(activity, AndroidUtilities.computePerceivedBrightness(DefaultThemesPreviewCell.this.navBarColor) >= 0.721f);
                    }
                });
                DefaultThemesPreviewCell.this.navBarAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.DefaultThemesPreviewCell.2.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AndroidUtilities.setNavigationBarColor(activity, color, false);
                        AndroidUtilities.setLightNavigationBar(activity, AndroidUtilities.computePerceivedBrightness(color) >= 0.721f);
                    }
                });
                DefaultThemesPreviewCell.this.navBarAnimator.setDuration(350L);
                DefaultThemesPreviewCell.this.navBarAnimator.start();
            }
            Theme.turnOffAutoNight(baseFragment);
        }
    }

    public void updateLayoutManager() {
        Point point = AndroidUtilities.displaySize;
        boolean z = point.y > point.x;
        Boolean bool = this.wasPortrait;
        if (bool == null || bool.booleanValue() != z) {
            int i = this.currentType;
            if (i == 0 || i == -1) {
                if (this.layoutManager == null) {
                    RecyclerListView recyclerListView = this.recyclerView;
                    LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
                    this.layoutManager = linearLayoutManager;
                    recyclerListView.setLayoutManager(linearLayoutManager);
                }
            } else {
                int i2 = z ? 3 : 9;
                LinearLayoutManager linearLayoutManager2 = this.layoutManager;
                if (linearLayoutManager2 instanceof GridLayoutManager) {
                    ((GridLayoutManager) linearLayoutManager2).setSpanCount(i2);
                } else {
                    this.recyclerView.setHasFixedSize(false);
                    GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), i2);
                    gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.DefaultThemesPreviewCell.3
                        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                        public int getSpanSize(int i3) {
                            return 1;
                        }
                    });
                    RecyclerListView recyclerListView2 = this.recyclerView;
                    this.layoutManager = gridLayoutManager;
                    recyclerListView2.setLayoutManager(gridLayoutManager);
                }
            }
            this.wasPortrait = Boolean.valueOf(z);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        updateLayoutManager();
        super.onMeasure(i, i2);
    }

    public void updateDayNightMode() {
        int i;
        int i2;
        int i3 = this.currentType;
        if (i3 == 0 || i3 == -1) {
            this.themeIndex = Theme.isCurrentThemeDay() ? 0 : 2;
        } else if (Theme.getActiveTheme().getKey().equals("Blue")) {
            this.themeIndex = 0;
        } else if (Theme.getActiveTheme().getKey().equals("Day")) {
            this.themeIndex = 1;
        } else if (Theme.getActiveTheme().getKey().equals("Night")) {
            this.themeIndex = 2;
        } else if (Theme.getActiveTheme().getKey().equals("Dark Blue")) {
            this.themeIndex = 3;
        } else {
            if (Theme.isCurrentThemeDay() && ((i2 = this.themeIndex) == 2 || i2 == 3)) {
                this.themeIndex = 0;
            }
            if (!Theme.isCurrentThemeDay() && ((i = this.themeIndex) == 0 || i == 1)) {
                this.themeIndex = 2;
            }
        }
        if (this.adapter.items != null) {
            for (int i4 = 0; i4 < this.adapter.items.size(); i4++) {
                ((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i4)).themeIndex = this.themeIndex;
            }
            ChatThemeBottomSheet.Adapter adapter = this.adapter;
            adapter.notifyItemRangeChanged(0, adapter.items.size());
        }
        updateSelectedPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelectedPosition() {
        if (this.adapter.items == null) {
            return;
        }
        this.selectedPosition = -1;
        int i = 0;
        while (true) {
            if (i >= this.adapter.items.size()) {
                break;
            }
            TLRPC.TL_theme tlTheme = ((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i)).chatTheme.getTlTheme(this.themeIndex);
            Theme.ThemeInfo themeInfo = ((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i)).chatTheme.getThemeInfo(this.themeIndex);
            if (tlTheme != null) {
                if (!Theme.getActiveTheme().name.equals(Theme.getBaseThemeKey((TLRPC.ThemeSettings) tlTheme.settings.get(((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i)).chatTheme.getSettingsIndex(this.themeIndex))))) {
                    continue;
                } else {
                    if (Theme.getActiveTheme().accentsByThemeId == null) {
                        this.selectedPosition = i;
                        break;
                    }
                    Theme.ThemeAccent themeAccent = (Theme.ThemeAccent) Theme.getActiveTheme().accentsByThemeId.get(tlTheme.f1808id);
                    if (themeAccent != null && themeAccent.f1877id == Theme.getActiveTheme().currentAccentId) {
                        this.selectedPosition = i;
                        break;
                    }
                }
                i++;
            } else {
                if (themeInfo != null) {
                    if (Theme.getActiveTheme().name.equals(themeInfo.getKey()) && ((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i)).chatTheme.getAccentId(this.themeIndex) == Theme.getActiveTheme().currentAccentId) {
                        this.selectedPosition = i;
                        break;
                    }
                } else {
                    continue;
                }
                i++;
            }
        }
        if (this.selectedPosition == -1 && this.currentType != 3) {
            this.selectedPosition = this.adapter.items.size() - 1;
        }
        int i2 = 0;
        while (i2 < this.adapter.items.size()) {
            ((ChatThemeBottomSheet.ChatThemeItem) this.adapter.items.get(i2)).isSelected = i2 == this.selectedPosition;
            i2++;
        }
        this.adapter.setSelectedItem(this.selectedPosition);
    }

    @Override // org.telegram.ui.ActionBar.Theme.Colorable
    public void updateColors() {
        int i = this.currentType;
        if (i == 0 || i == -1) {
            RLottieDrawable rLottieDrawable = this.darkThemeDrawable;
            if (rLottieDrawable != null && !DialogsActivity.switchingTheme) {
                rLottieDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4), PorterDuff.Mode.SRC_IN));
            }
            TextCell textCell = this.dayNightCell;
            if (textCell != null) {
                Theme.setSelectorDrawableColor(textCell.getBackground(), Theme.getColor(Theme.key_listSelector), true);
                this.dayNightCell.setColors(-1, Theme.key_windowBackgroundWhiteBlueText4);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        updateColors();
    }
}
