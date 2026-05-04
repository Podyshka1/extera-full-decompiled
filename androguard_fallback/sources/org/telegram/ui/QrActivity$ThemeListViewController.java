package org.telegram.ui;
abstract class QrActivity$ThemeListViewController implements org.telegram.messenger.NotificationCenter$NotificationCenterDelegate {
    public final org.telegram.ui.Components.ChatThemeBottomSheet$Adapter adapter;
    private final android.graphics.drawable.Drawable backgroundDrawable;
    private final android.graphics.Paint backgroundPaint;
    private final android.view.View bottomShadow;
    private android.view.View changeDayNightView;
    private android.animation.ValueAnimator changeDayNightViewAnimator;
    private float changeDayNightViewProgress;
    private final org.telegram.ui.Components.RLottieDrawable darkThemeDrawable;
    private final org.telegram.ui.Components.RLottieImageView darkThemeView;
    private boolean forceDark;
    private final org.telegram.ui.ActionBar.BaseFragment fragment;
    protected boolean isLightDarkChangeAnimation;
    private org.telegram.ui.QrActivity$OnItemSelectedListener itemSelectedListener;
    private androidx.recyclerview.widget.LinearLayoutManager layoutManager;
    private boolean prevIsPortrait;
    public int prevSelectedPosition;
    public final org.telegram.ui.Components.FlickerLoadingView progressView;
    private final org.telegram.ui.Components.RecyclerListView recyclerView;
    public final android.widget.FrameLayout rootLayout;
    public final android.widget.TextView scanButton;
    public final android.widget.ImageView scanButtonIcon;
    public final android.widget.LinearLayout scanButtonWrap;
    private final androidx.recyclerview.widget.LinearSmoothScroller scroller;
    public org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem selectedItem;
    public final android.widget.TextView shareButton;
    final synthetic org.telegram.ui.QrActivity this$0;
    public final android.widget.TextView titleView;
    private final android.view.View topShadow;
    private final android.view.Window window;

    public static synthetic void $r8$lambda$RBVExwMYNnNr76FhuKZHnM2Zdz0(org.telegram.ui.QrActivity$ThemeListViewController p0, boolean p1)
    {
        p0.lambda$setupLightDarkTheme$3(p1);
        return;
    }

    public static synthetic void $r8$lambda$Zx9CFwGcON-1sJn-2HF8-D06yYs(org.telegram.ui.QrActivity$ThemeListViewController p0, android.animation.ValueAnimator p1)
    {
        p0.lambda$setupLightDarkTheme$2(p1);
        return;
    }

    public static synthetic void $r8$lambda$cMM7TrcYdg2HB1GpMr_gZADfIUc(org.telegram.ui.QrActivity$ThemeListViewController p0, int p1)
    {
        p0.lambda$onItemClicked$1(p1);
        return;
    }

    public static synthetic void $r8$lambda$e3bpb41lHzY0dMOprklAI5uqL-U(org.telegram.ui.QrActivity$ThemeListViewController p0, android.view.View p1)
    {
        p0.lambda$new$0(p1);
        return;
    }

    static bridge synthetic android.graphics.drawable.Drawable -$$Nest$fgetbackgroundDrawable(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.backgroundDrawable;
    }

    static bridge synthetic android.graphics.Paint -$$Nest$fgetbackgroundPaint(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.backgroundPaint;
    }

    static bridge synthetic android.view.View -$$Nest$fgetbottomShadow(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.bottomShadow;
    }

    static bridge synthetic android.view.View -$$Nest$fgetchangeDayNightView(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.changeDayNightView;
    }

    static bridge synthetic float -$$Nest$fgetchangeDayNightViewProgress(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.changeDayNightViewProgress;
    }

    static bridge synthetic org.telegram.ui.Components.RLottieDrawable -$$Nest$fgetdarkThemeDrawable(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.darkThemeDrawable;
    }

    static bridge synthetic org.telegram.ui.Components.RLottieImageView -$$Nest$fgetdarkThemeView(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.darkThemeView;
    }

    static bridge synthetic org.telegram.ui.ActionBar.BaseFragment -$$Nest$fgetfragment(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.fragment;
    }

    static bridge synthetic boolean -$$Nest$fgetprevIsPortrait(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.prevIsPortrait;
    }

    static bridge synthetic org.telegram.ui.Components.RecyclerListView -$$Nest$fgetrecyclerView(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.recyclerView;
    }

    static bridge synthetic android.view.View -$$Nest$fgettopShadow(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        return p0.topShadow;
    }

    static bridge synthetic void -$$Nest$fputchangeDayNightView(org.telegram.ui.QrActivity$ThemeListViewController p0, android.view.View p1)
    {
        p0.changeDayNightView = p1;
        return;
    }

    static bridge synthetic void -$$Nest$fputchangeDayNightViewAnimator(org.telegram.ui.QrActivity$ThemeListViewController p0, android.animation.ValueAnimator p1)
    {
        p0.changeDayNightViewAnimator = p1;
        return;
    }

    static bridge synthetic void -$$Nest$fputlayoutManager(org.telegram.ui.QrActivity$ThemeListViewController p0, androidx.recyclerview.widget.LinearLayoutManager p1)
    {
        p0.layoutManager = p1;
        return;
    }

    static bridge synthetic void -$$Nest$fputprevIsPortrait(org.telegram.ui.QrActivity$ThemeListViewController p0, boolean p1)
    {
        p0.prevIsPortrait = p1;
        return;
    }

    static bridge synthetic androidx.recyclerview.widget.LinearLayoutManager -$$Nest$mgetLayoutManager(org.telegram.ui.QrActivity$ThemeListViewController p0, boolean p1)
    {
        return p0.getLayoutManager(p1);
    }

    static bridge synthetic void -$$Nest$monAnimationEnd(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        p0.onAnimationEnd();
        return;
    }

    static bridge synthetic void -$$Nest$monAnimationStart(org.telegram.ui.QrActivity$ThemeListViewController p0)
    {
        p0.onAnimationStart();
        return;
    }

    static bridge synthetic void -$$Nest$msetItemsAnimationProgress(org.telegram.ui.QrActivity$ThemeListViewController p0, float p1)
    {
        p0.setItemsAnimationProgress(p1);
        return;
    }

    public QrActivity$ThemeListViewController(org.telegram.ui.QrActivity p23, org.telegram.ui.ActionBar.BaseFragment p24, android.view.Window p25)
    {
        android.widget.TextView v7_6;
        this.this$0 = p23;
        org.telegram.ui.QrActivity$ThemeListViewController v0_1 = ;
v0_1.backgroundPaint = new android.graphics.Paint(1);
        v0_1.prevSelectedPosition = -1;
        v0_1.fragment = p24;
        v0_1.window = p25;
        String v3_1 = p24.getParentActivity();
        v0_1.scroller = new org.telegram.ui.QrActivity$ThemeListViewController$1(v0_1, v3_1, p23);
        org.telegram.ui.QrActivity$ThemeListViewController$2 v5_4 = v3_1.getResources().getDrawable(org.telegram.messenger.R$drawable.sheet_shadow_round).mutate();
        v0_1.backgroundDrawable = v5_4;
        android.graphics.PorterDuff$Mode v8 = android.graphics.PorterDuff$Mode.MULTIPLY;
        v5_4.setColorFilter(new android.graphics.PorterDuffColorFilter(p24.getThemedColor(org.telegram.ui.ActionBar.Theme.key_dialogBackground), v8));
        org.telegram.ui.QrActivity$ThemeListViewController$2 v5_6 = new org.telegram.ui.QrActivity$ThemeListViewController$2(v0_1, v3_1, p23, p24);
        v0_1.rootLayout = v5_6;
        int v6_4 = new android.widget.TextView(v3_1);
        v0_1.titleView = v6_4;
        v6_4.setEllipsize(android.text.TextUtils$TruncateAt.MIDDLE);
        v6_4.setLines(1);
        v6_4.setSingleLine(1);
        v6_4.setTextColor(p24.getThemedColor(org.telegram.ui.ActionBar.Theme.key_dialogTextBlack));
        v6_4.setTextSize(1, 1101004800);
        v6_4.setTypeface(org.telegram.messenger.AndroidUtilities.bold());
        v6_4.setPadding(org.telegram.messenger.AndroidUtilities.dp(1101529088), org.telegram.messenger.AndroidUtilities.dp(1086324736), org.telegram.messenger.AndroidUtilities.dp(1101529088), org.telegram.messenger.AndroidUtilities.dp(1090519040));
        v5_6.addView(v6_4, org.telegram.ui.Components.LayoutHelper.createFrame(-1, -1073741824, 8388659, 0, 0, 1115160576, 0));
        int v6_5 = org.telegram.ui.ActionBar.Theme.key_featuredStickers_addButton;
        android.widget.TextView v7_35 = p24.getThemedColor(v6_5);
        int v13_5 = org.telegram.messenger.AndroidUtilities.dp(1105199104);
        android.text.TextUtils$TruncateAt v9_20 = new StringBuilder();
        v9_20.append("");
        v9_20.append(org.telegram.messenger.R$raw.sun_outline);
        android.graphics.PorterDuffColorFilter v10_17 = new org.telegram.ui.Components.RLottieDrawable(org.telegram.messenger.R$raw.sun_outline, v9_20.toString(), v13_5, v13_5, 0, 0);
        v0_1.darkThemeDrawable = v10_17;
        v0_1.forceDark = (org.telegram.ui.ActionBar.Theme.getActiveTheme().isDark() ^ 1);
        v0_1.setForceDark(org.telegram.ui.ActionBar.Theme.getActiveTheme().isDark(), 0);
        v10_17.setPlayInDirectionOfCustomEndFrame(1);
        v10_17.setColorFilter(new android.graphics.PorterDuffColorFilter(v7_35, v8));
        android.widget.TextView v7_1 = new org.telegram.ui.QrActivity$ThemeListViewController$3(v0_1, v3_1, p23);
        v0_1.darkThemeView = v7_1;
        v7_1.setAnimation(v10_17);
        v7_1.setScaleType(android.widget.ImageView$ScaleType.CENTER);
        v7_1.setOnClickListener(new org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda0(v0_1));
        v7_1.setAlpha(0);
        v7_1.setVisibility(4);
        v5_6.addView(v7_1, org.telegram.ui.Components.LayoutHelper.createFrame(44, 1110441984, 8388661, 0, -1073741824, 1088421888, 0));
        android.widget.TextView v7_3 = new org.telegram.ui.Components.FlickerLoadingView(v3_1, p24.getResourceProvider());
        v0_1.progressView = v7_3;
        v7_3.setVisibility(0);
        v5_6.addView(v7_3, org.telegram.ui.Components.LayoutHelper.createFrame(-1, 1120927744, 8388611, 0, 1110441984, 0, 0));
        android.widget.TextView v7_4 = org.telegram.messenger.AndroidUtilities.displaySize;
        if (v7_4.x >= v7_4.y) {
            v7_6 = 0;
        } else {
            v7_6 = 1;
        }
        v0_1.prevIsPortrait = v7_6;
        android.widget.TextView v7_8 = new org.telegram.ui.Components.RecyclerListView(v3_1);
        v0_1.recyclerView = v7_8;
        android.graphics.PorterDuffColorFilter v10_6 = new org.telegram.ui.Components.ChatThemeBottomSheet$Adapter(org.telegram.ui.QrActivity.access$100(p23), org.telegram.ui.QrActivity.-$$Nest$fgetresourcesProvider(p23), 2);
        v0_1.adapter = v10_6;
        v7_8.setAdapter(v10_6);
        v7_8.setClipChildren(0);
        v7_8.setClipToPadding(0);
        v7_8.setItemAnimator(0);
        v7_8.setNestedScrollingEnabled(0);
        int v12_4 = v0_1.getLayoutManager(v0_1.prevIsPortrait);
        v0_1.layoutManager = v12_4;
        v7_8.setLayoutManager(v12_4);
        v7_8.setOnItemClickListener(new org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda1(v0_1));
        v7_8.setOnScrollListener(new org.telegram.ui.QrActivity$ThemeListViewController$4(v0_1, p23));
        v5_6.addView(v7_8);
        android.widget.TextView v7_10 = new android.view.View(v3_1);
        v0_1.topShadow = v7_10;
        v7_10.setAlpha(0);
        v7_10.setBackground(androidx.core.content.ContextCompat.getDrawable(v3_1, org.telegram.messenger.R$drawable.shadowdown));
        v7_10.setRotation(1127481344);
        v5_6.addView(v7_10);
        android.widget.TextView v7_12 = new android.view.View(v3_1);
        v0_1.bottomShadow = v7_12;
        v7_12.setBackground(androidx.core.content.ContextCompat.getDrawable(v3_1, org.telegram.messenger.R$drawable.shadowdown));
        v5_6.addView(v7_12);
        android.widget.TextView v7_14 = new android.widget.TextView(v3_1);
        v0_1.shareButton = v7_14;
        android.text.TextUtils$TruncateAt v9_14 = p24.getThemedColor(v6_5);
        int v12_9 = new float[1];
        v12_9[0] = 1103101952;
        v7_14.setBackground(org.telegram.ui.ActionBar.Theme$AdaptiveRipple.filledRect(v9_14, v12_9));
        android.text.TextUtils$TruncateAt v9_16 = android.text.TextUtils$TruncateAt.END;
        v7_14.setEllipsize(v9_16);
        v7_14.setGravity(17);
        v7_14.setLines(1);
        v7_14.setSingleLine(1);
        v7_14.setText(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.ShareQrCode));
        v7_14.setTextColor(p24.getThemedColor(org.telegram.ui.ActionBar.Theme.key_featuredStickers_buttonText));
        v7_14.setTextSize(1, 1097859072);
        v7_14.setTypeface(org.telegram.messenger.AndroidUtilities.bold());
        v5_6.addView(v7_14);
        if (org.telegram.messenger.UserConfig.getInstance(org.telegram.ui.QrActivity.access$200(p23)).getClientUserId() != org.telegram.ui.QrActivity.-$$Nest$fgetuserId(p23)) {
            v0_1.scanButtonWrap = 0;
            v0_1.scanButtonIcon = 0;
            v0_1.scanButton = 0;
            return;
        } else {
            android.widget.LinearLayout v1_3 = new android.widget.LinearLayout(v3_1);
            v0_1.scanButtonWrap = v1_3;
            android.widget.TextView v7_19 = androidx.core.graphics.ColorUtils.setAlphaComponent(org.telegram.ui.ActionBar.Theme$AdaptiveRipple.calcRippleColor(p24.getThemedColor(v6_5)), 25);
            android.graphics.PorterDuffColorFilter v10_9 = new float[1];
            v10_9[0] = 1103101952;
            v1_3.setBackground(org.telegram.ui.ActionBar.Theme$AdaptiveRipple.createRect(v7_19, v10_9));
            v1_3.setOrientation(0);
            v1_3.setGravity(17);
            android.widget.TextView v7_22 = new android.widget.ImageView(v3_1);
            v0_1.scanButtonIcon = v7_22;
            v7_22.setLayoutParams(org.telegram.ui.Components.LayoutHelper.createLinear(24, 24, 17, 0, 0, 10, 0));
            v7_22.setImageResource(org.telegram.messenger.R$drawable.profile_qr_scan_24);
            v7_22.setColorFilter(new android.graphics.PorterDuffColorFilter(p24.getThemedColor(v6_5), v8));
            v1_3.addView(v7_22);
            android.widget.TextView v7_25 = new android.widget.TextView(v3_1);
            v0_1.scanButton = v7_25;
            v7_25.setEllipsize(v9_16);
            v7_25.setGravity(17);
            v7_25.setLines(1);
            v7_25.setSingleLine(1);
            v7_25.setText(org.telegram.messenger.LocaleController.getString(org.telegram.messenger.R$string.ScanQrCode));
            v7_25.setTextColor(p24.getThemedColor(v6_5));
            v7_25.setTextSize(1, 1097859072);
            v7_25.setTypeface(org.telegram.messenger.AndroidUtilities.bold());
            v1_3.addView(v7_25);
            v5_6.addView(v1_3);
            return;
        }
    }

    private androidx.recyclerview.widget.LinearLayoutManager getLayoutManager(boolean p5)
    {
        if (p5 == null) {
            return new androidx.recyclerview.widget.GridLayoutManager(this.fragment.getParentActivity(), 3, 1, 0);
        } else {
            return new androidx.recyclerview.widget.LinearLayoutManager(this.fragment.getParentActivity(), 0, 0);
        }
    }

    private synthetic void lambda$new$0(android.view.View p1)
    {
        if (this.changeDayNightViewAnimator == null) {
            this.setupLightDarkTheme((this.forceDark ^ 1));
            return;
        } else {
            return;
        }
    }

    private synthetic void lambda$onItemClicked$1(int p4)
    {
        androidx.recyclerview.widget.RecyclerView$LayoutManager v0_1 = this.recyclerView.getLayoutManager();
        if (v0_1 != null) {
            androidx.recyclerview.widget.LinearSmoothScroller v1_0;
            if (!this.prevIsPortrait) {
                v1_0 = p4;
            } else {
                if (p4 <= this.prevSelectedPosition) {
                    v1_0 = Math.max((p4 - 1), 0);
                } else {
                    v1_0 = Math.min((p4 + 1), (this.adapter.items.size() - 1));
                }
            }
            this.scroller.setTargetPosition(v1_0);
            v0_1.startSmoothScroll(this.scroller);
        }
        this.prevSelectedPosition = p4;
        return;
    }

    private synthetic void lambda$setupLightDarkTheme$2(android.animation.ValueAnimator p1)
    {
        this.changeDayNightViewProgress = ((Float) p1.getAnimatedValue()).floatValue();
        this.changeDayNightView.invalidate();
        return;
    }

    private synthetic void lambda$setupLightDarkTheme$3(boolean p5)
    {
        int v0_0 = this.adapter;
        if ((v0_0 != 0) && (v0_0.items != null)) {
            this.setForceDark(p5, 1);
            if (this.selectedItem != null) {
                this.isLightDarkChangeAnimation = 1;
                this.setDarkTheme(p5);
            }
            if (this.adapter.items != null) {
                int v0_3 = 0;
                while (v0_3 < this.adapter.items.size()) {
                    ((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) this.adapter.items.get(v0_3)).themeIndex = p5;
                    ((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) this.adapter.items.get(v0_3)).icon = org.telegram.ui.QrActivity.-$$Nest$mgetEmojiThemeIcon(this.this$0, ((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) this.adapter.items.get(v0_3)).chatTheme, p5);
                    v0_3++;
                }
                org.telegram.ui.QrActivity.-$$Nest$fputtempMotionDrawable(this.this$0, 0);
                this.adapter.notifyDataSetChanged();
            }
        }
        return;
    }

    private void onAnimationEnd()
    {
        this.isLightDarkChangeAnimation = 0;
        return;
    }

    private void onAnimationStart()
    {
        int v0_0 = this.adapter;
        if (v0_0 != 0) {
            int v0_2 = v0_0.items;
            if (v0_2 != 0) {
                int v0_3 = v0_2.iterator();
                while (v0_3.hasNext()) {
                    ((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) v0_3.next()).themeIndex = this.forceDark;
                }
            }
        }
        if (!this.isLightDarkChangeAnimation) {
            this.setItemsAnimationProgress(1065353216);
        }
        return;
    }

    private void setItemsAnimationProgress(float p3)
    {
        int v0 = 0;
        while (v0 < this.adapter.getItemCount()) {
            ((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) this.adapter.items.get(v0)).animationProgress = p3;
            v0++;
        }
        return;
    }

    private void setupLightDarkTheme(boolean p17)
    {
        org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda4 v0_0 = this.changeDayNightViewAnimator;
        if (v0_0 != null) {
            v0_0.cancel();
        }
        org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda4 v0_6 = ((android.widget.FrameLayout) this.fragment.getParentActivity().getWindow().getDecorView());
        android.widget.FrameLayout v13_1 = ((android.widget.FrameLayout) this.window.getDecorView());
        android.graphics.Bitmap v9 = android.graphics.Bitmap.createBitmap(v13_1.getWidth(), v13_1.getHeight(), android.graphics.Bitmap$Config.ARGB_8888);
        android.graphics.Canvas v4_2 = new android.graphics.Canvas(v9);
        this.darkThemeView.setAlpha(0);
        v0_6.draw(v4_2);
        v13_1.draw(v4_2);
        this.darkThemeView.setAlpha(1065353216);
        android.graphics.Paint v8_1 = new android.graphics.Paint(1);
        v8_1.setColor(-16777216);
        v8_1.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff$Mode.CLEAR));
        android.graphics.Paint v10_1 = new android.graphics.Paint(1);
        v10_1.setFilterBitmap(1);
        android.view.ViewGroup$LayoutParams v2_12 = new int[2];
        this.darkThemeView.getLocationInWindow(v2_12);
        float v11 = ((float) v2_12[0]);
        float v12 = ((float) v2_12[1]);
        float v5 = (v11 + (((float) this.darkThemeView.getMeasuredWidth()) / 1073741824));
        float v6 = (v12 + (((float) this.darkThemeView.getMeasuredHeight()) / 1073741824));
        float v7 = (((float) Math.max(v9.getHeight(), v9.getWidth())) * 1063675494);
        v10_1.setShader(new android.graphics.BitmapShader(v9, android.graphics.Shader$TileMode.CLAMP, android.graphics.Shader$TileMode.CLAMP));
        this.changeDayNightView = new org.telegram.ui.QrActivity$ThemeListViewController$5(this, this.fragment.getParentActivity(), p17, v4_2, v5, v6, v7, v8_1, v9, v10_1, v11, v12);
        this.changeDayNightViewProgress = 0;
        org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda4 v0_30 = new float[2];
        v0_30 = {0, 1065353216};
        org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda4 v0_31 = android.animation.ValueAnimator.ofFloat(v0_30);
        this.changeDayNightViewAnimator = v0_31;
        v0_31.addUpdateListener(new org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda3(this));
        this.changeDayNightViewAnimator.addListener(new org.telegram.ui.QrActivity$ThemeListViewController$6(this));
        this.changeDayNightViewAnimator.setDuration(400);
        this.changeDayNightViewAnimator.setInterpolator(org.telegram.ui.Components.Easings.easeInOutQuad);
        this.changeDayNightViewAnimator.start();
        v13_1.addView(this.changeDayNightView, new android.view.ViewGroup$LayoutParams(-1, -1));
        org.telegram.messenger.AndroidUtilities.runOnUIThread(new org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda4(this, p17));
        return;
    }

    public varargs void didReceivedNotification(int p1, int p2, Object[] p3)
    {
        if (p1 == org.telegram.messenger.NotificationCenter.emojiLoaded) {
            this.adapter.notifyDataSetChanged();
        }
        return;
    }

    public java.util.ArrayList getThemeDescriptions()
    {
        int v7_1 = new org.telegram.ui.QrActivity$ThemeListViewController$7(this);
        java.util.ArrayList v9_1 = new java.util.ArrayList();
        int v17_1 = org.telegram.ui.ActionBar.Theme.key_dialogBackground;
        v9_1.add(new org.telegram.ui.ActionBar.ThemeDescription(0, org.telegram.ui.ActionBar.ThemeDescription.FLAG_BACKGROUND, 0, this.backgroundPaint, 0, 0, v17_1));
        int v6_0 = new android.graphics.drawable.Drawable[1];
        int v11_0 = 0;
        v6_0[0] = this.backgroundDrawable;
        v9_1.add(new org.telegram.ui.ActionBar.ThemeDescription(0, org.telegram.ui.ActionBar.ThemeDescription.FLAG_BACKGROUNDFILTER, 0, 0, v6_0, v7_1, v17_1));
        v9_1.add(new org.telegram.ui.ActionBar.ThemeDescription(this.titleView, org.telegram.ui.ActionBar.ThemeDescription.FLAG_TEXTCOLOR, 0, 0, 0, 0, org.telegram.ui.ActionBar.Theme.key_dialogTextBlack));
        org.telegram.ui.ActionBar.ThemeDescription v2_2 = this.recyclerView;
        Class[] v4_1 = new Class[1];
        v4_1[0] = org.telegram.ui.Components.ThemeSmallPreviewView;
        v9_1.add(new org.telegram.ui.ActionBar.ThemeDescription(v2_2, org.telegram.ui.ActionBar.ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, v4_1, 0, 0, 0, org.telegram.ui.ActionBar.Theme.key_dialogBackgroundGray));
        int v1_4 = v9_1.size();
        while (v11_0 < v1_4) {
            org.telegram.ui.ActionBar.ThemeDescription v2_3 = v9_1.get(v11_0);
            v11_0++;
            ((org.telegram.ui.ActionBar.ThemeDescription) v2_3).resourcesProvider = this.fragment.getResourceProvider();
        }
        return v9_1;
    }

    public void onCreate()
    {
        org.telegram.messenger.NotificationCenter v0_3 = org.telegram.messenger.ChatThemeController.getInstance(org.telegram.ui.QrActivity.access$300(this.this$0));
        v0_3.preloadAllWallpaperThumbs(1);
        v0_3.preloadAllWallpaperThumbs(0);
        v0_3.preloadAllWallpaperImages(1);
        v0_3.preloadAllWallpaperImages(0);
        org.telegram.messenger.NotificationCenter.getGlobalInstance().addObserver(this, org.telegram.messenger.NotificationCenter.emojiLoaded);
        return;
    }

    public void onDataLoaded()
    {
        this.darkThemeView.setAlpha(0);
        this.darkThemeView.animate().alpha(1065353216).setDuration(150).start();
        this.darkThemeView.setVisibility(0);
        this.progressView.animate().alpha(0).setListener(new org.telegram.ui.Components.HideViewAfterAnimation(this.progressView)).setDuration(150).start();
        this.recyclerView.setAlpha(0);
        this.recyclerView.animate().alpha(1065353216).setDuration(150).start();
        return;
    }

    public void onDestroy()
    {
        org.telegram.messenger.NotificationCenter.getGlobalInstance().removeObserver(this, org.telegram.messenger.NotificationCenter.emojiLoaded);
        return;
    }

    protected void onItemClicked(android.view.View p6, int p7)
    {
        if ((this.adapter.items.get(p7) != this.selectedItem) && (this.changeDayNightView == null)) {
            org.telegram.ui.ActionBar.EmojiThemes v0_11 = 0;
            this.isLightDarkChangeAnimation = 0;
            this.selectedItem = ((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) this.adapter.items.get(p7));
            this.adapter.setSelectedItem(p7);
            this.rootLayout.postDelayed(new org.telegram.ui.QrActivity$ThemeListViewController$$ExternalSyntheticLambda2(this, p7), 100);
            while (v0_11 < this.recyclerView.getChildCount()) {
                org.telegram.ui.Components.ThemeSmallPreviewView v1_11 = ((org.telegram.ui.Components.ThemeSmallPreviewView) this.recyclerView.getChildAt(v0_11));
                if (v1_11 != p6) {
                    v1_11.cancelAnimation();
                }
                v0_11++;
            }
            if (!((org.telegram.ui.Components.ChatThemeBottomSheet$ChatThemeItem) this.adapter.items.get(p7)).chatTheme.showAsDefaultStub) {
                ((org.telegram.ui.Components.ThemeSmallPreviewView) p6).playEmojiAnimation();
            }
            org.telegram.ui.QrActivity$OnItemSelectedListener v6_2 = this.itemSelectedListener;
            if (v6_2 != null) {
                v6_2.onItemSelected(this.selectedItem.chatTheme, p7);
            }
        }
        return;
    }

    protected void setDarkTheme(boolean p1)
    {
        return;
    }

    public void setForceDark(boolean p3, boolean p4)
    {
        if (this.forceDark != p3) {
            org.telegram.ui.Components.RLottieImageView v3_1;
            this.forceDark = p3;
            if (p3 == null) {
                v3_1 = 0;
            } else {
                v3_1 = (this.darkThemeDrawable.getFramesCount() - 1);
            }
            if (p4 == null) {
                this.darkThemeDrawable.setCustomEndFrame(v3_1);
                this.darkThemeDrawable.setCurrentFrame(v3_1, 0, 1);
                org.telegram.ui.Components.RLottieImageView v3_2 = this.darkThemeView;
                if (v3_2 != null) {
                    v3_2.invalidate();
                }
            } else {
                this.darkThemeDrawable.setCustomEndFrame(v3_1);
                org.telegram.ui.Components.RLottieImageView v3_3 = this.darkThemeView;
                if (v3_3 != null) {
                    v3_3.playAnimation();
                    return;
                }
            }
        }
        return;
    }

    public void setItemSelectedListener(org.telegram.ui.QrActivity$OnItemSelectedListener p1)
    {
        this.itemSelectedListener = p1;
        return;
    }

    public void setSelectedPosition(int p3)
    {
        this.prevSelectedPosition = p3;
        this.adapter.setSelectedItem(p3);
        if ((p3 > 0) && (p3 < (this.adapter.items.size() / 2))) {
            p3--;
        }
        this.layoutManager.scrollToPositionWithOffset(Math.min(p3, (this.adapter.items.size() - 1)), 0);
        return;
    }
}
