.class public final Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)V
    .locals 0

    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getNowPlayingCardData$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getEmoji$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getNowPlayingCardData$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "nowPlayingCardData"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getAccentColor()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    .line 116
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 115
    invoke-static {v1, v4}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getThemedColor(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getNowPlayingCardData$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getAccentColor()Ljava/lang/Integer;

    move-result-object v1

    .line 115
    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 119
    sget-object v4, Lcom/exteragram/messenger/utils/ui/UIUtil;->INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

    .line 120
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getEmoji$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard$1;->this$0:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;

    invoke-static {v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;->access$getNowPlayingCardData$p(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCard;)Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const v0, 0x3ecccccd    # 0.4f

    :goto_2
    move-object v5, p1

    move v9, v0

    goto :goto_3

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    .line 119
    :goto_3
    invoke-virtual/range {v4 .. v9}, Lcom/exteragram/messenger/utils/ui/UIUtil;->drawNowPlayingPattern(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFF)V

    goto :goto_4

    :cond_5
    move-object v5, p1

    .line 123
    :goto_4
    invoke-super {p0, v5}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
