.class public Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProxyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextDetailProxyCell"
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkDrawable:Landroid/graphics/drawable/Drawable;

.field private checkImageView:Landroid/widget/ImageView;

.field private color:I

.field private currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

.field private isSelected:Z

.field private isSelectionEnabled:Z

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ProxyListActivity;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$_qlH7D9k7n1ML5pit5bO2nkrAYg(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->lambda$setSelectionEnabled$1(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcZbxwIEXIflVduoXspbIt5_jxI(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcheckBox(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/ui/Components/CheckBox2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckImageView(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentInfo(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ProxyListActivity;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 133
    iput-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    .line 134
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    .line 137
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 139
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 140
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 141
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 142
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 144
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    or-int/lit8 v11, v8, 0x30

    const/16 v8, 0x38

    const/16 v9, 0x15

    if-eqz v5, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    move v10, v9

    :goto_2
    int-to-float v12, v10

    if-eqz v5, :cond_3

    move v5, v9

    goto :goto_3

    :cond_3
    move v5, v8

    :goto_3
    int-to-float v14, v5

    const/4 v15, 0x0

    move v5, v9

    const/4 v9, -0x2

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41500000    # 13.0f

    .line 147
    invoke-virtual {v1, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_4

    :cond_4
    move v9, v6

    :goto_4
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 150
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 151
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 152
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 155
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move v9, v6

    :goto_5
    or-int/lit8 v12, v9, 0x30

    if-eqz v4, :cond_6

    move v9, v8

    goto :goto_6

    :cond_6
    move v9, v5

    :goto_6
    int-to-float v13, v9

    if-eqz v4, :cond_7

    move v8, v5

    :cond_7
    int-to-float v15, v8

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v14, 0x420c0000    # 35.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    .line 158
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 160
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_8

    move v4, v6

    goto :goto_7

    :cond_8
    move v4, v7

    :goto_7
    or-int/lit8 v10, v4, 0x30

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v14, 0x0

    const/16 v8, 0x30

    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v1, Lorg/telegram/ui/Components/CheckBox2;

    invoke-direct {v1, v2, v5}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 166
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 167
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 168
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v1, v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    move v6, v7

    :cond_9
    or-int/lit8 v9, v6, 0x10

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v13, 0x0

    const/16 v7, 0x18

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    new-instance v0, Lorg/telegram/ui/ProxySettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ProxySettingsActivity;-><init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$setSelectionEnabled$1(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 250
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 251
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 253
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 254
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 255
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42000000    # 32.0f

    if-eqz v0, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float p2, p3, p1

    add-float/2addr p2, p1

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 260
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    mul-float p3, p2, p1

    add-float/2addr p3, p1

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 324
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->updateStatus()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 330
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->proxy_check:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 306
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 308
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 311
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 314
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemSelected(ZZ)V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelected:Z

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 296
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelected:Z

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 3

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iput-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-void
.end method

.method public setSelectionEnabled(ZZ)V
    .locals 5

    .line 226
    iget-boolean v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelectionEnabled:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 229
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->isSelectionEnabled:Z

    .line 231
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42000000    # 32.0f

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p2, :cond_6

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 234
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 235
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    neg-int v1, v1

    :goto_3
    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 241
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 242
    iget-object p2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_6
    if-eqz p1, :cond_7

    move p2, v3

    goto :goto_6

    :cond_7
    move p2, v4

    :goto_6
    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v4, v3

    :goto_7
    const/4 v1, 0x2

    .line 247
    new-array v1, v1, [F

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v4, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 248
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    new-instance v1, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v3, v0}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;FF)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    new-instance v0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell$1;-><init>(Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateStatus()V
    .locals 11

    .line 186
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Ping"

    const-string v5, ", "

    const-wide/16 v6, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetuseProxySettings(Lorg/telegram/ui/ProxyListActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcurrentConnectionState(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->this$0:Lorg/telegram/ui/ProxyListActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxyListActivity;->-$$Nest$fgetcurrentConnectionState(Lorg/telegram/ui/ProxyListActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Connecting:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 188
    :cond_1
    :goto_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText6:I

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-wide v8, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    cmp-long v1, v8, v6

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$string;->Connected:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->Ping:I

    iget-object v9, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-wide v9, v9, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v2

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Connected:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-boolean v2, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-nez v2, :cond_7

    .line 195
    iput-wide v6, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->availableCheckTime:J

    goto :goto_3

    .line 202
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-boolean v1, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->checking:Z

    if-eqz v1, :cond_4

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Checking:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    goto :goto_3

    .line 205
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->available:Z

    if-eqz v1, :cond_6

    .line 206
    iget-wide v0, v0, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/messenger/R$string;->Available:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->Ping:I

    iget-object v6, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->currentInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-wide v6, v6, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->ping:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    invoke-static {v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 209
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Available:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    goto :goto_3

    .line 213
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Unavailable:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    .line 217
    :cond_7
    :goto_3
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->valueTextView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->checkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 221
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ProxyListActivity$TextDetailProxyCell;->color:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    return-void
.end method
