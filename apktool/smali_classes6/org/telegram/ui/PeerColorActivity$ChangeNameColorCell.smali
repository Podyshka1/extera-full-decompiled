.class public Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeNameColorCell"
.end annotation


# instance fields
.field private final buttonText:Lorg/telegram/ui/Components/Text;

.field private color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

.field private color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

.field private final currentAccount:I

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final isChannelOrGroup:Z

.field private final isGroup:Z

.field private lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private userText:Lorg/telegram/ui/Components/Text;

.field private final userTextBackgroundPaint:Landroid/graphics/Paint;

.field private userTextColorKey:I


# direct methods
.method public constructor <init>(IJLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 2107
    invoke-direct {p0, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2098
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 2100
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    .line 2108
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, p2

    .line 2109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 2111
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->currentAccount:I

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    const/4 p3, 0x0

    if-gez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, p3

    .line 2112
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isChannelOrGroup:Z

    if-eqz p2, :cond_1

    .line 2113
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isGroup:Z

    .line 2114
    iput-object p5, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 2116
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_edit_appearance:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2117
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v6, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_3

    if-eqz v3, :cond_2

    .line 2118
    sget v4, Lorg/telegram/messenger/R$string;->ChangeGroupAppearance:I

    goto :goto_2

    :cond_2
    sget v4, Lorg/telegram/messenger/R$string;->ChangeChannelNameColor2:I

    goto :goto_2

    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->ChangeUserNameColor:I

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_7

    if-nez v3, :cond_7

    .line 2119
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "boostingappearance"

    invoke-interface {p1, v3, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x3

    if-ge p1, v3, :cond_7

    .line 2121
    iget-object p1, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const v3, 0x7fffffff

    if-eqz p1, :cond_4

    .line 2122
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2123
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2124
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->minLevel()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2125
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->minLevel()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v8, v3

    move v3, p1

    move p1, v8

    goto :goto_3

    :cond_4
    move p1, p3

    .line 2127
    :goto_3
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2128
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelBgIconLevelMin:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2129
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v5, :cond_5

    .line 2130
    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2131
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->maxLevel()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2132
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->minLevel()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2133
    iget-object v5, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController$PeerColors;->minLevel()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2135
    :cond_5
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2136
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelProfileIconLevelMin:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2137
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2138
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelEmojiStatusLevelMin:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2139
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2140
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2141
    iget v5, v0, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2142
    iget v0, v0, Lorg/telegram/messenger/MessagesController;->channelCustomWallpaperLevelMin:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez v2, :cond_6

    goto :goto_4

    .line 2143
    :cond_6
    iget p3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    :goto_4
    if-ge p3, p1, :cond_7

    .line 2145
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$LevelLock;

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-direct {p1, p4, v1, p3, p5}, Lorg/telegram/ui/PeerColorActivity$LevelLock;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    :cond_7
    if-eqz p2, :cond_8

    .line 2148
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    if-nez p1, :cond_8

    .line 2149
    invoke-static {v4}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2151
    :cond_8
    new-instance p1, Lorg/telegram/ui/Components/Text;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-direct {p1, v4, p2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    .line 2152
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    return-void
.end method

.method private rtl(I)I
    .locals 1

    .line 2289
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2297
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x42800000    # 64.0f

    .line 2298
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->rtl(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 2299
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 2300
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->rtl(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 2301
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 2297
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2304
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x432b0000    # 171.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/PeerColorActivity$LevelLock;->getIntrinsicWidth()I

    move-result v3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 2305
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x428e0000    # 71.0f

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 2306
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v2, p1, v0, v3}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FF)V

    .line 2307
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    if-eqz v2, :cond_2

    .line 2308
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2309
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PeerColorActivity$LevelLock;->draw(Landroid/graphics/Canvas;)V

    .line 2313
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isGroup:Z

    const/high16 v2, 0x42680000    # 58.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x41300000    # 11.0f

    if-eqz v0, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz v8, :cond_4

    .line 2314
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2315
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2, v5, v6, v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2316
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->stroke(FI)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 2318
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz v8, :cond_6

    .line 2320
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2321
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2, v5, v6, v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2322
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v2, v5, v8}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->stroke(FI)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2323
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 2325
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2326
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v2, v5, v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2327
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->stroke(FI)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2328
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    .line 2330
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    if-eqz v2, :cond_b

    if-nez v0, :cond_b

    .line 2331
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->lock:Lorg/telegram/ui/PeerColorActivity$LevelLock;

    const/high16 v7, 0x41400000    # 12.0f

    if-nez v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lorg/telegram/ui/PeerColorActivity$LevelLock;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v3, v8

    :goto_4
    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v8, 0x43240000    # 164.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 2332
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    .line 2334
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 2335
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v9, 0x42040000    # 33.0f

    const/high16 v10, 0x41700000    # 15.0f

    if-eqz v8, :cond_8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_5
    int-to-float v8, v8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v8, v11

    sub-int/2addr v8, v2

    goto :goto_5

    .line 2336
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, 0x41b00000    # 22.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    div-float/2addr v11, v5

    .line 2337
    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v2

    :goto_7
    int-to-float v9, v9

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_7

    .line 2338
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v10, v12

    int-to-float v10, v10

    div-float/2addr v10, v5

    .line 2334
    invoke-virtual {v3, v8, v11, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2340
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2342
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    .line 2343
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v0

    .line 2344
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_9

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, p1, v2, v3}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FF)V

    .line 2347
    :cond_b
    :goto_a
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->needDivider:Z

    if-eqz v0, :cond_10

    .line 2348
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_c

    const-string v2, "paintDivider"

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_d

    .line 2350
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    :cond_d
    move-object v10, v0

    .line 2352
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_c
    move v6, v0

    goto :goto_d

    :cond_e
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_c

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :cond_f
    sub-int/2addr v0, v4

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v9, v0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42480000    # 50.0f

    .line 2285
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->needDivider:Z

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 2170
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->needDivider:Z

    .line 2171
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2172
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2173
    new-instance v0, Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, p2, v2, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    .line 2175
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2176
    invoke-virtual {p2, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2178
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    const/high16 v3, 0x41300000    # 11.0f

    if-eqz v2, :cond_2

    .line 2179
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    goto :goto_1

    .line 2181
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result p2

    if-ltz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v2

    invoke-static {p2, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->fromProfile(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2183
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz p2, :cond_4

    .line 2184
    invoke-virtual {p2, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2187
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    const v4, 0x3dcccccd    # 0.1f

    if-eqz v2, :cond_a

    .line 2188
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    .line 2189
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p1

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p1

    :goto_2
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 2190
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->dark_accent_color:I

    goto :goto_3

    :cond_6
    iget v2, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->accent_color:I

    :goto_3
    if-eqz p1, :cond_7

    .line 2191
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->dark_colors:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->colors:Ljava/util/ArrayList;

    .line 2193
    :goto_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v5, -0x1000000

    or-int v7, v1, v5

    .line 2194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x2

    if-lt v1, v6, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v5

    move v8, v0

    goto :goto_5

    :cond_8
    move v8, v7

    .line 2195
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, v5

    move v9, p1

    goto :goto_6

    :cond_9
    move v9, v7

    .line 2197
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    .line 2198
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2199
    new-instance v6, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    iget-wide v10, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->gift_emoji_id:J

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;-><init>(IIIJ)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2200
    invoke-virtual {p1, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    return-void

    .line 2202
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result p1

    const/4 p2, 0x7

    if-ge p1, p2, :cond_b

    .line 2204
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p2, p2, p1

    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    goto :goto_8

    .line 2206
    :cond_b
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez p2, :cond_c

    goto :goto_7

    .line 2207
    :cond_c
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_d

    const/4 p2, -0x1

    .line 2209
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    .line 2210
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p2

    goto :goto_8

    .line 2212
    :cond_d
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p2, p2, v1

    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    .line 2216
    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    .line 2217
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {p2, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2218
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->currentAccount:I

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz p1, :cond_e

    .line 2220
    invoke-virtual {p1, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    :cond_e
    :goto_9
    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 2229
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2230
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 2232
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2235
    :cond_2
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2236
    new-instance v1, Lorg/telegram/ui/Components/Text;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    .line 2237
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2238
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2240
    :cond_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    const/high16 v4, 0x41300000    # 11.0f

    if-eqz v3, :cond_4

    .line 2241
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    goto :goto_2

    .line 2243
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v0

    if-ltz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->fromProfile(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2245
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color1Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz v0, :cond_6

    .line 2246
    invoke-virtual {v0, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2248
    :cond_6
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$PeerColor;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    const v5, 0x3dcccccd    # 0.1f

    if-eqz v3, :cond_c

    .line 2249
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    .line 2250
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p1

    goto :goto_3

    :cond_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p1

    :goto_3
    const/4 v1, 0x1

    if-eqz p1, :cond_8

    .line 2251
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_8

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->dark_accent_color:I

    goto :goto_4

    :cond_8
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->accent_color:I

    :goto_4
    if-eqz p1, :cond_9

    .line 2252
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->dark_colors:Ljava/util/ArrayList;

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->colors:Ljava/util/ArrayList;

    .line 2254
    :goto_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v6, -0x1000000

    or-int v8, v2, v6

    .line 2255
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x2

    if-lt v2, v7, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v1, v6

    move v9, v1

    goto :goto_6

    :cond_a
    move v9, v8

    .line 2256
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_b

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, v6

    move v10, p1

    goto :goto_7

    :cond_b
    move v10, v8

    .line 2258
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    .line 2259
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2260
    new-instance v7, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    iget-wide v11, v0, Lorg/telegram/tgnet/TLRPC$PeerColor;->gift_emoji_id:J

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;-><init>(IIIJ)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 2261
    invoke-virtual {p1, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setView(Landroid/view/View;)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    return-void

    .line 2264
    :cond_c
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result p1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_d

    .line 2266
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v0, v0, p1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_9

    .line 2268
    :cond_d
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_e

    goto :goto_8

    .line 2269
    :cond_e
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_f

    const/4 v0, -0x1

    .line 2271
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    .line 2272
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v0

    goto :goto_9

    .line 2274
    :cond_f
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 2277
    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    .line 2278
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2279
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->currentAccount:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->color2Drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 2156
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isChannelOrGroup:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->buttonText:Lorg/telegram/ui/Components/Text;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->isChannelOrGroup:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextColorKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2160
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 2161
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    .line 2162
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->userTextBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method
