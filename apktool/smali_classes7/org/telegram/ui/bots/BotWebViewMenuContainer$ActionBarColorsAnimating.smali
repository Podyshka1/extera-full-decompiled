.class public Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field colorKeys:[I

.field fromColors:Landroid/util/SparseIntArray;

.field public progress:F

.field toColors:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->fromColors:Landroid/util/SparseIntArray;

    .line 1169
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->toColors:Landroid/util/SparseIntArray;

    .line 1171
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->colorKeys:[I

    return-void
.end method

.method private updateColors(Landroid/util/SparseIntArray;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1193
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->colorKeys:[I

    array-length v1, p2

    if-ge v0, v1, :cond_7

    .line 1194
    aget p2, p2, v0

    .line 1195
    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1198
    :cond_0
    invoke-static {p2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    const/high16 v1, -0x1000000

    :goto_1
    const/16 v2, 0x3c

    .line 1199
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1200
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->colorKeys:[I

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 1201
    aget v3, v3, v0

    .line 1202
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    if-eq v3, v4, :cond_6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    if-eq v3, v4, :cond_6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    if-eq v3, v4, :cond_6

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    if-ne v3, v4, :cond_2

    goto :goto_4

    .line 1204
    :cond_2
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    if-ne v3, v5, :cond_3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1205
    invoke-static {p2, v1, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 1206
    :cond_3
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    if-eq v3, v5, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_3

    .line 1209
    :cond_4
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 1207
    :cond_5
    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 1203
    :cond_6
    :goto_4
    invoke-static {v3, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 2

    .line 1216
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->fromColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->toColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget v1, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->progress:F

    invoke-static {v0, p1, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1
.end method

.method public setFrom(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->fromColors:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateColors(Landroid/util/SparseIntArray;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public setTo(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->toColors:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->updateColors(Landroid/util/SparseIntArray;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public updateActionBar(Lorg/telegram/ui/ActionBar/ActionBar;F)V
    .locals 4

    .line 1220
    iput p2, p0, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->progress:F

    .line 1221
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1222
    invoke-virtual {p0, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 1223
    invoke-virtual {p0, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1224
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1225
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result p2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1227
    :cond_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/bots/BotWebViewMenuContainer$ActionBarColorsAnimating;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    return-void
.end method
