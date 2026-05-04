.class public Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;
.super Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final layout:Landroid/widget/LinearLayout;

.field private showingWeather:Z

.field private final textView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$1CTX_OyKX_UWS8yWqpD6L19h2lM(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->lambda$onPillLongClicked$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$EpjcOaSGvjehzctNosNGVWFT7IM(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->lambda$onUpdateData$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$QrHj7fIke27WShAPmUPwFh1i0Ns(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->lambda$requestLocationAndUpdate$5(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gq51BIjpNeerpJGnrv9pZF8QkKo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 109
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherSettingsActivity;

    invoke-direct {v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherSettingsActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$lkSwwUy3i43jI6zZhgViaMCCqb0(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->lambda$onUpdateData$4(Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbxBWjRvhVdtMplCMwanqx4EhxY(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->lambda$onUpdateData$2(Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 54
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->layout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 56
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 57
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 58
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v2, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const/16 v2, 0x10

    or-int/2addr v1, v2

    const/4 v3, -0x2

    const/16 v4, 0x1c

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    .line 62
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 63
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, 0x1

    invoke-direct {v1, p1, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p1, 0x41500000    # 13.0f

    .line 66
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 67
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setIncludeFontPadding(Z)V

    .line 69
    iput-boolean v4, v1, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    .line 70
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 71
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->setLoadingTargetView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->updateColors()V

    .line 75
    invoke-static {p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 77
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->getCached()Lorg/telegram/ui/Stories/recorder/Weather$State;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->setData(Lorg/telegram/ui/Stories/recorder/Weather$State;Z)V

    :cond_1
    return-void
.end method

.method private getWeatherIconRes(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "\ud83d\ude36\u200d\ud83c\udf2b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "\ud83c\udf28"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "\ud83c\udf27"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "\ud83c\udf26"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "\ud83c\udf24"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "\ud83c\udf1d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "\ud83c\udf1c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "\ud83c\udf1b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "\ud83c\udf1a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "\ud83c\udf17"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "\ud83c\udf16"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "\ud83c\udf14"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_c
    const-string/jumbo v1, "\ud83c\udf13"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_d
    const-string/jumbo v1, "\u2744"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_e
    const-string/jumbo v1, "\u26c8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_f
    const-string/jumbo v1, "\u26c5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_10
    const-string/jumbo v1, "\u26a1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_11
    const-string/jumbo v1, "\u2601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_12
    const-string/jumbo v1, "\u2600"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v0

    .line 238
    :pswitch_0
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_foggy:I

    return p1

    .line 235
    :pswitch_1
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_rainy:I

    return p1

    .line 239
    :pswitch_2
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_night:I

    return p1

    .line 237
    :pswitch_3
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_snowy:I

    return p1

    .line 233
    :pswitch_4
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_partly_cloudy:I

    return p1

    .line 236
    :pswitch_5
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_thunderstorm:I

    return p1

    .line 234
    :pswitch_6
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_cloudy:I

    return p1

    .line 232
    :pswitch_7
    sget p1, Lorg/telegram/messenger/R$drawable;->weather_sunny:I

    return p1

    :sswitch_data_0
    .sparse-switch
        0x2600 -> :sswitch_12
        0x2601 -> :sswitch_11
        0x26a1 -> :sswitch_10
        0x26c5 -> :sswitch_f
        0x26c8 -> :sswitch_e
        0x2744 -> :sswitch_d
        0x1b0e57 -> :sswitch_c
        0x1b0e58 -> :sswitch_b
        0x1b0e5a -> :sswitch_a
        0x1b0e5b -> :sswitch_9
        0x1b0e5e -> :sswitch_8
        0x1b0e5f -> :sswitch_7
        0x1b0e60 -> :sswitch_6
        0x1b0e61 -> :sswitch_5
        0x1b0e68 -> :sswitch_4
        0x1b0e6a -> :sswitch_3
        0x1b0e6b -> :sswitch_2
        0x1b0e6c -> :sswitch_1
        0x4cc6bf03 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onPillLongClicked$0()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->onUpdateData(Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateData$2(Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->setData(Lorg/telegram/ui/Stories/recorder/Weather$State;Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateData$3()V
    .locals 1

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->setErrorState(Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateData$4(Lorg/telegram/ui/Stories/recorder/Weather$State;)V
    .locals 3

    const-wide/16 v0, 0x12c

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->markDataUpdated()V

    .line 139
    new-instance v2, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;Lorg/telegram/ui/Stories/recorder/Weather$State;)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 141
    :cond_0
    new-instance p1, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$requestLocationAndUpdate$5(Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->onUpdateData(Z)V

    :cond_0
    return-void
.end method

.method private requestLocationAndUpdate()V
    .locals 2

    .line 183
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/Weather;->getUserLocation(ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private setErrorState(Z)V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->stopLoading()V

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->animateSizeChange()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/messenger/R$string;->Retry:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 196
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->showingWeather:Z

    return-void
.end method

.method private setLocationState(IZ)V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->stopLoading()V

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->animateSizeChange()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->filled_location:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 179
    iput-boolean v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->showingWeather:Z

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 164
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    if-ne p1, p2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->getPillId()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p3, p1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->shouldUpdatePill([Ljava/lang/Object;[I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->getPillId()I

    move-result p1

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->checkAndClearPendingUpdate(I)Z

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->onUpdateData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->loading:Z

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->drawableHotspotChanged(FF)V

    .line 255
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    return-void
.end method

.method public getPillId()I
    .locals 1

    .line 90
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->WEATHER:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget v0, v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    const-wide/32 v0, 0x124f80

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onAttachedToWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->getPillId()I

    move-result v0

    invoke-static {v0}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->checkAndClearPendingUpdate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->getCached()Lorg/telegram/ui/Stories/recorder/Weather$State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->isRefreshDue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->onUpdateData(Z)V

    .line 153
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onDetachedFromWindow()V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPillClicked()V
    .locals 1

    .line 95
    sget-boolean v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->useCurrentLocation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->showingWeather:Z

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isLocationPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->requestLocationAndUpdate()V

    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->onPillLongClicked()Z

    return-void
.end method

.method public onPillLongClicked()Z
    .locals 6

    .line 105
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0, p0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v4, Lorg/telegram/messenger/R$string;->Refresh:I

    .line 108
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v4, Lorg/telegram/messenger/R$string;->Settings:I

    .line 109
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onUpdateData(Z)V
    .locals 1

    .line 120
    sget-boolean v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->useCurrentLocation:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isLocationPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget p1, Lorg/telegram/messenger/R$string;->WeatherLocationPermissionGrant:I

    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->showingWeather:Z

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->setLocationState(IZ)V

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget p1, Lorg/telegram/messenger/R$string;->WeatherLocationServicesEnable:I

    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->showingWeather:Z

    invoke-direct {p0, p1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->setLocationState(IZ)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 132
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->clearCache()V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->startLoading()V

    .line 136
    new-instance p1, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;)V

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/Weather;->fetchExtera(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public setData(Lorg/telegram/ui/Stories/recorder/Weather$State;Z)V
    .locals 5

    .line 200
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->stopLoading()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->animateSizeChange()V

    .line 209
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->getWeatherIconRes(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 211
    iget-object v3, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 218
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object p1, v4, v2

    const-string p1, "%s %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 219
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 217
    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 216
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 225
    :goto_0
    iput-boolean v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->showingWeather:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->loading:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 247
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 248
    iget-object v0, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 260
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(IF)I

    move-result v0

    .line 261
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x3db851ec    # 0.09f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->layout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-static {v3, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 264
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/weather/WeatherPill;->iconView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 265
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->updateLoadingColors()V

    return-void
.end method
