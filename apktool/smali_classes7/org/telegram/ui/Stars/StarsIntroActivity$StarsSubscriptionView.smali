.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsSubscriptionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView$Factory;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field public final imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field public final priceLayout:Landroid/widget/LinearLayout;

.field public final priceSubtitleView:Landroid/widget/TextView;

.field public final priceTitleView:Landroid/widget/TextView;

.field public final productView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final subtitleView:Landroid/widget/TextView;

.field public final textLayout:Landroid/widget/LinearLayout;

.field private threeLines:Z

.field public final titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1849
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move/from16 v3, p2

    .line 1851
    iput v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    .line 1852
    iput-object v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    .line 1853
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1855
    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x42380000    # 46.0f

    .line 1856
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/16 v5, 0x2e

    const/16 v6, 0x2e

    const/4 v7, 0x0

    const/16 v8, 0x13

    const/16 v9, 0xd

    const/4 v10, 0x0

    .line 1857
    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1859
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->textLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    .line 1860
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 1861
    invoke-static/range {v5 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1863
    new-instance v5, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1864
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v7, 0x10

    .line 1865
    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1866
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1867
    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/4 v12, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1868
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1870
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    .line 1871
    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41500000    # 13.0f

    .line 1872
    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v8, 0x8

    .line 1873
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v10, -0x2

    .line 1874
    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1876
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    .line 1877
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 1878
    invoke-virtual {v5, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    .line 1879
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceLayout:Landroid/widget/LinearLayout;

    .line 1882
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v15, 0x12

    const/16 v16, 0x0

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1883
    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1885
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    .line 1886
    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 1887
    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1888
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x5

    .line 1889
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v15, 0x1

    const/4 v9, -0x1

    const/4 v11, 0x5

    const/4 v12, 0x0

    .line 1890
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1892
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    .line 1893
    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1894
    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1895
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x5

    const/4 v11, 0x0

    .line 1896
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1981
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1982
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    .line 1983
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1974
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1975
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->threeLines:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42880000    # 68.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42680000    # 58.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1973
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1900
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    .line 1902
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->threeLines:Z

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    const/4 v7, 0x0

    if-gez v5, :cond_1

    .line 1907
    iget v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1908
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 1909
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1910
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-eqz v3, :cond_0

    .line 1911
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v4, v7

    goto :goto_1

    .line 1914
    :cond_1
    iget v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1915
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 1916
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1917
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1918
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    .line 1919
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isBot(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    xor-int/2addr v3, v6

    move-object/from16 v21, v4

    move v4, v3

    move-object/from16 v3, v21

    .line 1922
    :goto_1
    iget v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    int-to-long v8, v5

    .line 1923
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-static {v3, v10, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1925
    iget-object v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v5, 0x41600000    # 14.0f

    const/16 v10, 0x8

    if-nez v3, :cond_3

    .line 1926
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1927
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1928
    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v11, :cond_2

    .line 1929
    new-instance v11, Lorg/telegram/ui/ImageReceiverSpan;

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    iget v13, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->currentAccount:I

    invoke-direct {v11, v12, v13, v5}, Lorg/telegram/ui/ImageReceiverSpan;-><init>(Landroid/view/View;IF)V

    const/high16 v12, 0x40800000    # 4.0f

    .line 1930
    invoke-virtual {v11, v12}, Lorg/telegram/ui/ImageReceiverSpan;->setRoundRadius(F)V

    .line 1931
    invoke-virtual {v11, v7}, Lorg/telegram/ui/ImageReceiverSpan;->enableShadow(Z)V

    .line 1932
    new-instance v12, Landroid/text/SpannableString;

    const-string v13, "x"

    invoke-direct {v12, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v13, 0x21

    .line 1933
    invoke-virtual {v12, v11, v7, v6, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1934
    iget-object v14, v11, Lorg/telegram/ui/ImageReceiverSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {v11}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    const-string v16, "14_14"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1935
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1937
    :cond_2
    iget-object v11, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    invoke-static {v11, v12, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1938
    iget-object v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1940
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->productView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1943
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    iget-boolean v11, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->threeLines:Z

    if-eqz v11, :cond_4

    const/high16 v5, 0x41500000    # 13.0f

    :cond_4
    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1944
    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-nez v3, :cond_9

    iget-boolean v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v3, :cond_5

    goto/16 :goto_3

    .line 1949
    :cond_5
    iget v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v4, v3

    cmp-long v4, v4, v8

    if-gez v4, :cond_6

    .line 1950
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpired:I

    int-to-long v8, v3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1951
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1952
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1953
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusExpired:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1955
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->StarsSubscriptionRenews:I

    int-to-long v8, v3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1957
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2b50\ufe0f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget-wide v7, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->amount:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1958
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1959
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->period:I

    const v3, 0x278d00

    if-ne v1, v3, :cond_7

    .line 1960
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->StarsParticipantSubscriptionPerMonth:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_8

    .line 1962
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    const-string v3, "per minute"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    const/16 v3, 0x12c

    if-ne v1, v3, :cond_d

    .line 1964
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    const-string v3, "per 5 minutes"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1945
    :cond_9
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->subtitleView:Landroid/widget/TextView;

    iget v5, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    int-to-long v11, v5

    cmp-long v8, v11, v8

    if-gez v8, :cond_a

    sget v8, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpired:I

    goto :goto_4

    :cond_a
    sget v8, Lorg/telegram/messenger/R$string;->StarsSubscriptionExpires:I

    :goto_4
    int-to-long v11, v5

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v5

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v5, v9, v7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1946
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1947
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_color_red:I

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1948
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->priceSubtitleView:Landroid/widget/TextView;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v1, :cond_c

    if-eqz v4, :cond_b

    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusBizCancelled:I

    goto :goto_5

    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusBotCancelled:I

    goto :goto_5

    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->StarsSubscriptionStatusCancelled:I

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1968
    :cond_d
    :goto_6
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsSubscriptionView;->needDivider:Z

    xor-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method
