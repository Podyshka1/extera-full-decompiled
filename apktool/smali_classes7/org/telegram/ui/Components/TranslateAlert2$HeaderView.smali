.class Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field private arrowView:Landroid/widget/ImageView;

.field private backButton:Landroid/widget/ImageView;

.field private backgroundView:Landroid/view/View;

.field private copyButton:Landroid/widget/ImageView;

.field private fromLanguageTextView:Landroid/widget/TextView;

.field private shadow:Landroid/view/View;

.field private subtitleView:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lorg/telegram/ui/Components/TranslateAlert2;

.field private titleTextView:Landroid/widget/TextView;

.field private toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$BIuJpXoJr-OUN3-p_0nz7BN30Z8(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 1379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$XgboDA28M9o5_4fipbtwRwalFEM(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Lorg/telegram/messenger/TranslateController$Language;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$openLanguagesSelect$3(Lorg/telegram/messenger/TranslateController$Language;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aqt-Y6Ti-Ajb6RGZVQ_DEmtLi3M(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eAj_iH15xFW-16PcZIOkCssDoQ0(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;[Ljava/lang/Runnable;Lorg/telegram/messenger/TranslateController$Language;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$openLanguagesSelect$4([Ljava/lang/Runnable;Lorg/telegram/messenger/TranslateController$Language;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNPJ-9s89vp_gw5u5NzLIOn4-RY(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uXKt6O0zxGHRFd_D1mBaz8scc3Q(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcopyButton(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitleView(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleTextView(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettoLanguageTextView(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1175
    iput-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    .line 1176
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1178
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backgroundView:Landroid/view/View;

    .line 1179
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$700(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1180
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backgroundView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x42300000    # 44.0f

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    .line 1183
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1184
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1185
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$800(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1186
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$900(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1188
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v9, 0x36

    const/high16 v10, 0x42580000    # 54.0f

    const/16 v11, 0x30

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1191
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    const v9, 0x3e19999a    # 0.15f

    const/high16 v10, 0x3fc00000    # 1.5f

    .line 1192
    invoke-static {v3, v9, v10}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1193
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1194
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1195
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1000(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v10

    invoke-direct {v4, v10, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1196
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1100(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1197
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1198
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v10, 0x30

    const/high16 v11, 0x42580000    # 54.0f

    const/16 v12, 0x35

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    .line 1214
    invoke-static {v1, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1200(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1215
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1216
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1217
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTranslatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1219
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    .line 1220
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41b00000    # 22.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x37

    const/high16 v13, 0x41b00000    # 22.0f

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$2;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    .line 1231
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    if-eqz v4, :cond_0

    .line 1232
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1234
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotX(F)V

    .line 1235
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setPivotY(F)V

    .line 1236
    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetfromLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-nez v3, :cond_1

    const-string v3, "und"

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetfromLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1237
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    .line 1238
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 1239
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1300(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1240
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1241
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetfromLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v3, v11, v5, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1245
    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    .line 1246
    sget v5, Lorg/telegram/messenger/R$drawable;->search_arrow:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1247
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1400(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v12

    invoke-direct {v5, v12, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1248
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    .line 1249
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1252
    :cond_2
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 1297
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    .line 1298
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 1300
    :cond_3
    iget-object v12, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v16, 0x15e

    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v13, 0x3e800000    # 0.25f

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1301
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v1, v9}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1800(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1302
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1303
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgettoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1305
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v4, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 1308
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move/from16 v17, v4

    goto :goto_0

    :cond_4
    move/from16 v17, v11

    :goto_0
    const/16 v18, 0x0

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1309
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 1310
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1314
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 1315
    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1316
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/16 v17, 0x0

    const/16 v16, 0x1

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    move v15, v4

    goto :goto_1

    :cond_7
    move v15, v11

    :goto_1
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x10

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1321
    :cond_8
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/high16 v13, 0x41b00000    # 22.0f

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x37

    const/high16 v11, 0x41b00000    # 22.0f

    const/high16 v12, 0x422c0000    # 43.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    .line 1324
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1900(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1325
    iget-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1326
    iget-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float v5, v2, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/high16 v8, 0x42600000    # 56.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1188
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgettextView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2500(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2600(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 1305
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->openLanguagesSelect()V

    return-void
.end method

.method private synthetic lambda$openLanguagesSelect$3(Lorg/telegram/messenger/TranslateController$Language;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1346
    iget-object v0, p1, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetfromLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$openLanguagesSelect$4([Ljava/lang/Runnable;Lorg/telegram/messenger/TranslateController$Language;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x0

    .line 1355
    aget-object p1, p1, p3

    if-eqz p1, :cond_0

    .line 1356
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1359
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgettoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1363
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->-$$Nest$fgetmMainView(Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgettextViewContainer(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 1364
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgettoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fputprevToLanguage(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)V

    .line 1366
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object v1, p2, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fputtoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetloadingTextView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 1368
    iget-object p1, p2, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->setToLanguage(Ljava/lang/String;)V

    .line 1369
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetmainButton(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 1370
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgetheaderView(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p3, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1371
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->translate()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 1428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x429c0000    # 78.0f

    .line 1429
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1427
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openLanguagesSelect()V
    .locals 13

    .line 1330
    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$4;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;)V

    .line 1339
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1340
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2000(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1341
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 1343
    new-array v2, v1, [Ljava/lang/Runnable;

    .line 1345
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/exteragram/messenger/utils/text/TranslatorUtils;->getCurrentTargetLanguages()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1346
    new-instance v4, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-static {v3, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    const/4 v4, 0x0

    move v9, v1

    move v5, v4

    .line 1348
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1349
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lorg/telegram/messenger/TranslateController$Language;

    .line 1351
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v1

    if-ne v5, v8, :cond_0

    move v10, v1

    goto :goto_1

    :cond_0
    move v10, v4

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v8}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2100(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v8, 0x2

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1352
    iget-object v7, v12, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v7}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1353
    iget-object v7, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v7}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$fgettoLanguage(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1354
    new-instance v7, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0, v2, v12}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;[Ljava/lang/Runnable;Lorg/telegram/messenger/TranslateController$Language;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    move v9, v4

    goto :goto_0

    .line 1378
    :cond_1
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v3, v0, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 1379
    new-instance v5, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    aput-object v5, v2, v4

    .line 1380
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v2, 0xdc

    .line 1381
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 1382
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1383
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1384
    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1385
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v2, 0x2

    .line 1386
    new-array v2, v2, [I

    .line 1387
    iget-object v5, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1388
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 1389
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1390
    aget v1, v2, v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    if-lez v5, :cond_2

    sub-int/2addr v1, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    .line 1391
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2200(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;

    move-result-object v0

    aget v2, v2, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    const/16 v4, 0x33

    invoke-virtual {v3, v0, v4, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 6

    .line 1396
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1398
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 1399
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->-$$Nest$mhasEnoughHeight(Lorg/telegram/ui/Components/TranslateAlert2;)Z

    move-result v2

    if-nez v2, :cond_0

    move p1, v1

    .line 1402
    :cond_0
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1404
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1405
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1406
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, -0x3ec00000    # -12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1407
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1

    .line 1408
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v4, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1409
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1412
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/high16 v3, -0x3e500000    # -22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1414
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1415
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1417
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1418
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v3, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1419
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->copyButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2300(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v4

    invoke-static {v3, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1421
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1422
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
