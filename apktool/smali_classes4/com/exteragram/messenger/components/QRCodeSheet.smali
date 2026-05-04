.class public Lcom/exteragram/messenger/components/QRCodeSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# instance fields
.field private final TEXT_TYPE_AUTH_TOKEN:I

.field private final TEXT_TYPE_LINK:I

.field private final TEXT_TYPE_PHONE:I

.field private final TEXT_TYPE_TEXT:I

.field private final TEXT_TYPE_WIFI:I

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private wifiAuthType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-0lZX-bxG1wRE-10HOyuUIy8mVI(Lcom/exteragram/messenger/components/QRCodeSheet;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$new$6(ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0ZmsSGcq21YmY3MVv0zggDt1EL8(Lcom/exteragram/messenger/components/QRCodeSheet;Landroid/graphics/Bitmap;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$new$0(Landroid/graphics/Bitmap;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$33o0_blAcXVlqmnT_GtrungUPfY(Lcom/exteragram/messenger/components/QRCodeSheet;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$new$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Pqkc7nOqaUvVlzP8V9elIcmB0c(Lcom/exteragram/messenger/components/QRCodeSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$new$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G16iu-b4U56tddThc8wkV1_QwRM(Lcom/exteragram/messenger/components/QRCodeSheet;ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K01s3iuavcEmQtuBOHRS8Rzix0E(Lcom/exteragram/messenger/components/QRCodeSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/components/QRCodeSheet;->connectToWifi()V

    return-void
.end method

.method public static synthetic $r8$lambda$PYj7O-x65AsduMp2kYCLbd85UBo(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 255
    sget v0, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$TEh0JQBnGYSJ6mpVEeHEBq0i788(Lcom/exteragram/messenger/components/QRCodeSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$showErrorBulletin$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$abc7RozZkIfrf5ggoSHifyOepUE(Lcom/exteragram/messenger/components/QRCodeSheet;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$new$5(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jWw6Mz5sq0VtlM5PUYHQz4qoZww(Lcom/exteragram/messenger/components/QRCodeSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$copyQR$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ya-M6Lvo5WAwm-UkDGOievE79Lc(Lcom/exteragram/messenger/components/QRCodeSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->lambda$showCopyBulletin$9(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 100
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 87
    iput v5, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->TEXT_TYPE_LINK:I

    const/4 v3, 0x1

    .line 88
    iput v3, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->TEXT_TYPE_TEXT:I

    const/4 v4, 0x2

    .line 89
    iput v4, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->TEXT_TYPE_AUTH_TOKEN:I

    const/4 v6, 0x3

    .line 90
    iput v6, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->TEXT_TYPE_PHONE:I

    const/4 v7, 0x4

    .line 91
    iput v7, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->TEXT_TYPE_WIFI:I

    .line 97
    const-string v8, "WPA"

    iput-object v8, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    .line 101
    iput-object v1, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 107
    const-string v8, "tg://login?token="

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    sget v6, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    sget v8, Lorg/telegram/messenger/R$string;->Allow:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object v8, v6

    move v6, v4

    goto/16 :goto_2

    .line 111
    :cond_0
    sget-object v8, Lorg/telegram/messenger/LinkifyPort;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "tel:"

    const-string v10, "share"

    if-nez v8, :cond_3

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    const-string v6, "WIFI:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    invoke-direct {v0, v2}, Lcom/exteragram/messenger/components/QRCodeSheet;->parseWifiInfo(Ljava/lang/String;)V

    .line 121
    sget v6, Lorg/telegram/messenger/R$string;->WifiConnect:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-direct {v0, v10}, Lcom/exteragram/messenger/components/QRCodeSheet;->getTextWithIcon(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    move-object v9, v8

    move-object v8, v6

    move v6, v7

    goto :goto_2

    .line 125
    :cond_2
    const-string v6, "copy"

    invoke-direct {v0, v6}, Lcom/exteragram/messenger/components/QRCodeSheet;->getTextWithIcon(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 126
    invoke-direct {v0, v10}, Lcom/exteragram/messenger/components/QRCodeSheet;->getTextWithIcon(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    move-object v9, v8

    move-object v8, v6

    move v6, v3

    goto :goto_2

    .line 112
    :cond_3
    :goto_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move v6, v5

    .line 113
    :goto_1
    new-instance v8, Landroid/text/SpannableStringBuilder;

    sget v9, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v9, "."

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 114
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 115
    new-instance v11, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_mini_topicarrow:I

    invoke-static {v12, v13}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v8, v11, v12, v9, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 117
    invoke-direct {v0, v10}, Lcom/exteragram/messenger/components/QRCodeSheet;->getTextWithIcon(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 129
    :goto_2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    .line 131
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 133
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    new-instance v13, Lcom/exteragram/messenger/components/QRCodeSheet$1;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v0, v14}, Lcom/exteragram/messenger/components/QRCodeSheet$1;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;Landroid/content/Context;)V

    const/16 v20, 0x12

    const/16 v21, 0x0

    const/16 v15, 0x24

    const/16 v16, 0x4

    const/16 v17, 0x1

    const/16 v18, 0x12

    const/16 v19, 0x2

    .line 150
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v6, v4, :cond_5

    .line 153
    new-instance v13, Lorg/telegram/ui/Components/StickerImageView;

    iget v14, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v13, v10, v14}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    .line 154
    const-string v14, "tg_placeholders_android"

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/StickerImageView;->setStickerPackName(Ljava/lang/String;)V

    const/4 v14, 0x6

    .line 155
    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    .line 156
    invoke-virtual {v13}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 157
    invoke-virtual {v13}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v14

    invoke-virtual {v14, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    const/16 v20, 0x0

    const/16 v21, 0xa

    const/16 v15, 0x90

    const/16 v16, 0x90

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x14

    .line 158
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 160
    :cond_5
    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v14, 0x3cf5c28f    # 0.03f

    const v15, 0x3f99999a    # 1.2f

    .line 161
    invoke-static {v13, v14, v15}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 162
    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    new-instance v14, Lcom/exteragram/messenger/components/QRCodeSheet$2;

    invoke-direct {v14, v0}, Lcom/exteragram/messenger/components/QRCodeSheet$2;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 169
    invoke-virtual {v13, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 171
    invoke-direct {v0, v2}, Lcom/exteragram/messenger/components/QRCodeSheet;->createQR(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 172
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    new-instance v15, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v14, v10}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v21, 0x12

    const/16 v22, 0xa

    const/16 v16, 0xc8

    const/16 v17, 0xc8

    const/16 v18, 0x1

    const/16 v19, 0x12

    const/16 v20, 0x14

    .line 179
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    :goto_3
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v14, 0x3ca3d70a    # 0.02f

    const/high16 v15, 0x3fc00000    # 1.5f

    .line 183
    invoke-static {v13, v14, v15}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 184
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 185
    invoke-virtual {v13, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v14, 0x41000000    # 8.0f

    .line 186
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v16, 0x40800000    # 4.0f

    move/from16 v17, v14

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    move/from16 v18, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move/from16 v19, v5

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v13, v15, v14, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v6, v7, :cond_7

    .line 188
    iget-object v5, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->ssid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 189
    iget-object v5, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->ssid:Ljava/lang/String;

    iget-object v7, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ", Password: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_6
    const-string v7, ""

    :goto_4
    new-array v14, v4, [Ljava/lang/Object;

    aput-object v5, v14, v19

    aput-object v7, v14, v18

    const-string v5, "SSID: {0}{1}"

    invoke-static {v5, v14}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    if-ne v6, v4, :cond_8

    .line 191
    sget v5, Lorg/telegram/messenger/R$string;->AreYouSureToLogin:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_8
    move-object v5, v2

    :goto_5
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    if-nez v6, :cond_9

    .line 194
    invoke-static {v2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->ensureUrlHasHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-eq v6, v4, :cond_b

    .line 198
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_7

    :cond_a
    const v5, 0x3e19999a    # 0.15f

    :goto_7
    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/4 v5, 0x7

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v3, v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    new-instance v3, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const/16 v25, 0x15

    const/16 v26, 0x8

    const/16 v20, -0x2

    const/16 v21, -0x2

    const/16 v22, 0x1

    const/16 v23, 0x15

    const/16 v24, 0x2

    .line 205
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v5, v19

    .line 208
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v24, 0x41800000    # 16.0f

    const/high16 v25, 0x40800000    # 4.0f

    const/16 v20, -0x1

    const/16 v21, 0x30

    const/high16 v22, 0x41800000    # 16.0f

    const/high16 v23, 0x41700000    # 15.0f

    .line 209
    invoke-static/range {v20 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v5, v10, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 212
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v7, 0x0

    .line 213
    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 214
    new-instance v8, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0, v6, v1, v2}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v6, v4, :cond_c

    .line 232
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setNeutral()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    :cond_c
    const/4 v4, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 233
    invoke-static {v7, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v12, 0x3d75c28f    # 0.06f

    .line 236
    invoke-static {v7, v4, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-direct {v5, v10, v12}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 239
    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 240
    invoke-virtual {v5, v9, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    move/from16 v9, v18

    .line 241
    invoke-virtual {v5, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setFilled(Z)V

    .line 242
    new-instance v9, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda4;

    invoke-direct {v9, v0, v6, v2, v1}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-static {v7, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v1, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/components/QRCodeSheet;I)I
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private connectToWifi()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget v0, Lorg/telegram/messenger/R$string;->WifiFailed:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    return-void

    .line 348
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 350
    sget v0, Lorg/telegram/messenger/R$string;->WifiFailed:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    return-void

    .line 354
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/16 v2, 0x1d

    if-nez v1, :cond_3

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 356
    sget v0, Lorg/telegram/messenger/R$string;->WifiDisabled:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 360
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->WifiDisabled:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    return-void

    .line 365
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    .line 366
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/components/QRCodeSheet;->connectWifiModern(Landroid/net/wifi/WifiManager;)V

    return-void

    .line 368
    :cond_4
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/components/QRCodeSheet;->connectWifiLegacy(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method private connectWifiLegacy(Landroid/net/wifi/WifiManager;)V
    .locals 7

    .line 399
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 400
    iget-object v1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->ssid:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "\"%s\""

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 402
    iget-object v3, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nopass"

    iget-object v5, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 404
    :goto_1
    iget-object v5, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 405
    const-string v3, "WPA"

    iget-object v5, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    iget-object v3, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 407
    :cond_2
    const-string v3, "WEP"

    iget-object v5, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 408
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v4

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 409
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 410
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 411
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 414
    :cond_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 417
    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 419
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 421
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 422
    iget-object p1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v1, Lorg/telegram/messenger/R$string;->WifiSuccess:I

    .line 424
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 427
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->WifiFailed:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    return-void

    .line 430
    :cond_6
    sget p1, Lorg/telegram/messenger/R$string;->WifiFailed:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    return-void
.end method

.method private connectWifiModern(Landroid/net/wifi/WifiManager;)V
    .locals 3

    .line 374
    invoke-static {}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticApiModelOutline0;->m()Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->ssid:Ljava/lang/String;

    .line 375
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 376
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsAppInteractionRequired(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    const-string v1, "WPA"

    iget-object v2, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    goto :goto_0

    .line 381
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    const-string v1, "SAE"

    iget-object v2, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    .line 386
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v0

    .line 387
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetworkSuggestions(Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_2

    .line 391
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 394
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->WifiFailed:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->showErrorBulletin(Ljava/lang/String;)V

    return-void
.end method

.method private copyQR(Landroid/graphics/Bitmap;Landroid/app/Activity;)V
    .locals 3

    .line 301
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const-string v1, "qr_code.jpg"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 308
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 309
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 310
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 311
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 312
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 314
    new-instance p1, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;)V

    invoke-static {v0, p1}, Lcom/exteragram/messenger/utils/system/SystemUtils;->addFileToClipboard(Ljava/io/File;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 316
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private createQR(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    .line 287
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 288
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    const/16 v2, 0x300

    const/16 v3, 0x300

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    move-object v1, p1

    .line 291
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;IILjava/util/Map;Landroid/graphics/Bitmap;FIIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 293
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getTextWithIcon(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 6

    .line 278
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 279
    const-string v1, ".."

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    iget-object v3, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "copy"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    :goto_0
    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 280
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 281
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->LinkActionCopy:I

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->LinkActionShare:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private synthetic lambda$copyQR$7()V
    .locals 3

    .line 314
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PhotoCopied:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Bitmap;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/components/QRCodeSheet;->copyQR(Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 200
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 201
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->showCopyBulletin(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    new-instance p1, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;)V

    const-wide/16 p2, 0x2ee

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 225
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet;->showCopyBulletin(Z)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 229
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/16 v0, 0x11

    .line 246
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 247
    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    const-string v0, "\\+"

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    .line 249
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 250
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_acceptLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_acceptLoginToken;-><init>()V

    .line 251
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_acceptLoginToken;->token:[B

    .line 252
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda10;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 254
    const-string v0, "Failed to pass qr code auth"

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    new-instance p1, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6(ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x2

    if-ne p1, p4, :cond_0

    .line 244
    new-instance p1, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p2, p3}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 p2, 0x2ee

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 260
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p4, "android.intent.action.SEND"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    const-string p4, "text/plain"

    invoke-virtual {p1, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string p4, "android.intent.extra.TEXT"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    sget p2, Lorg/telegram/messenger/R$string;->QrCode:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1f4

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCopyBulletin$9(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    .line 441
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TextCopied"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showErrorBulletin$8(Ljava/lang/String;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private parseWifiInfo(Ljava/lang/String;)V
    .locals 5

    .line 321
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 322
    const-string v0, "(?<!\\\\);"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 323
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 324
    const-string v3, "S:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/components/QRCodeSheet;->unescapeWifiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 326
    :cond_0
    const-string v3, "P:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/exteragram/messenger/components/QRCodeSheet;->unescapeWifiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->password:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_1
    const-string v3, "T:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/exteragram/messenger/components/QRCodeSheet;->wifiAuthType:Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private showCopyBulletin(Z)V
    .locals 1

    .line 439
    new-instance v0, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showErrorBulletin(Ljava/lang/String;)V
    .locals 1

    .line 435
    new-instance v0, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/components/QRCodeSheet$$ExternalSyntheticLambda9;-><init>(Lcom/exteragram/messenger/components/QRCodeSheet;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unescapeWifiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 335
    const-string v0, "\\\\"

    const-string v1, "\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\;"

    const-string v1, ";"

    .line 336
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\:"

    const-string v1, ":"

    .line 337
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\,"

    const-string v1, ","

    .line 338
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\""

    const-string v1, "\""

    .line 339
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
