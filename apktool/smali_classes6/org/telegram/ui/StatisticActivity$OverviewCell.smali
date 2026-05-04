.class public Lorg/telegram/ui/StatisticActivity$OverviewCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverviewCell"
.end annotation


# instance fields
.field primary:[Landroid/widget/TextView;

.field secondary:[Landroid/widget/TextView;

.field title:[Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mupdateColors(Lorg/telegram/ui/StatisticActivity$OverviewCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    .line 3120
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12

    .line 3124
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v0, p2, 0x2

    .line 3125
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    .line 3126
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    .line 3127
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 3128
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 3129
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    move v1, v3

    :goto_0
    if-ge v1, p2, :cond_1

    .line 3131
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3132
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v4, v3

    :goto_1
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 3135
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3136
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3138
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3139
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3140
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v4

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v7, v8

    .line 3141
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v7, v8

    .line 3142
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v7, v8

    .line 3144
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3145
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v7, v0, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3146
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v7, v0, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3147
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 3148
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    invoke-virtual {v7, v0, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3150
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v7, v9, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3152
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3153
    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3155
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3156
    iget-object v6, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    .line 3157
    invoke-static {v8, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v10, 0x0

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3159
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private updateColors()V
    .locals 4

    const/4 v0, 0x0

    .line 3279
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3280
    aget-object v1, v1, v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3281
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3283
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3285
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 3287
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3270
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3271
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object p2, p2, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3272
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object p2, p2, p1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3273
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object p1, p2, p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3275
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method public setData(Lorg/telegram/ui/StatisticActivity$OverviewChannelData;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 3165
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 3222
    :pswitch_0
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3223
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStorySecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3224
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryUp:Z

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_1

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3225
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3226
    iget-boolean v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerStoryVisible:Z

    if-eqz v2, :cond_7

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 3213
    :pswitch_1
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3214
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostSecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3215
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostUp:Z

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_3

    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3216
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3217
    iget-boolean v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->reactionsPerPostVisible:Z

    if-eqz v2, :cond_7

    goto :goto_2

    .line 3204
    :pswitch_2
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3205
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStorySecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3206
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryUp:Z

    if-eqz v3, :cond_2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_4

    :cond_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3207
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3208
    iget-boolean v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPerStoryVisible:Z

    if-eqz v2, :cond_7

    goto :goto_2

    .line 3197
    :pswitch_3
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3198
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesSecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3199
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesUp:Z

    if-eqz v3, :cond_3

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_5

    :cond_3
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3200
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->sharesTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3188
    :pswitch_4
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3189
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStorySecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3190
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryUp:Z

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_6

    :cond_4
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3191
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3192
    iget-boolean v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPerStoryVisible:Z

    if-eqz v2, :cond_7

    goto/16 :goto_2

    .line 3181
    :pswitch_5
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3182
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsSecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3183
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsUp:Z

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_7

    :cond_5
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3184
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->viewsTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3175
    :pswitch_6
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3176
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3177
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->notificationsTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 3168
    :pswitch_7
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersPrimary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3169
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersSecondary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3170
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-boolean v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersUp:Z

    if-eqz v3, :cond_6

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_8

    :cond_6
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3171
    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChannelData;->followersTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3232
    :cond_8
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    array-length p1, p1

    const/16 v0, 0x8

    if-ge v1, p1, :cond_9

    .line 3233
    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    move p1, p2

    .line 3235
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_b

    .line 3236
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3237
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_a

    .line 3238
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 3241
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lorg/telegram/ui/StatisticActivity$OverviewChatData;)V
    .locals 6

    .line 3245
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3246
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesPrimary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3247
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    iget-object v4, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3248
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersPrimary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3250
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3251
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersUp:Z

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3253
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3254
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesUp:Z

    if-eqz v5, :cond_1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_1

    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3256
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3257
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersUp:Z

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_2

    :cond_2
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3258
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersSecondary:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3259
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->secondary:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-boolean v5, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersUp:Z

    if-eqz v5, :cond_3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText2:I

    goto :goto_3

    :cond_3
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3261
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->membersTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3262
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->messagesTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3263
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->viewingMembersTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3264
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$OverviewChatData;->postingMembersTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3266
    invoke-direct {p0}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method
