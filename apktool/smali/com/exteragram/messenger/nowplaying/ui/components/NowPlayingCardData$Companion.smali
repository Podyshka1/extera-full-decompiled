.class public final Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CkJytQz-mKuKqumf6IFQhPZcbKY(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->create$lambda$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnrhaFRJ58BSauScUmIU5bsvxkM(Landroid/graphics/Bitmap;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->create$lambda$1$0$0(Landroid/graphics/Bitmap;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJPagV89_NcEpOuQtzWvHvBuRkU(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->create$lambda$1(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gAuWKsdeEwaKjnRsh2r6C9g7BQ0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->create$lambda$1$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5YaXtABeZsDwzMNohPL0nSo6oY(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->create$lambda$1$0$0$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;-><init>()V

    return-void
.end method

.method private static final create$lambda$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V
    .locals 10

    .line 63
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;->onDataLoaded(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V

    return-void
.end method

.method private static final create$lambda$1(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V
    .locals 8

    .line 72
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 74
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 91
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static final create$lambda$1$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    move-object p5, p3

    move-object p3, p1

    .line 76
    invoke-virtual {p5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 78
    sget-object p6, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    move-object p4, p2

    move-object p2, p0

    new-instance p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;

    invoke-direct/range {p0 .. p5}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/Bitmap;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V

    invoke-virtual {p6, p0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static final create$lambda$1$0$0(Landroid/graphics/Bitmap;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 10

    .line 79
    sget-object v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->Companion:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->extractColors(Landroid/graphics/Bitmap;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    .line 81
    new-instance v2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda4;

    move-object v7, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final create$lambda$1$0$0$0(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 10

    .line 83
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    invoke-interface {p0, v0}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;->onDataLoaded(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;)V

    .line 85
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method private final extractColors(Landroid/graphics/Bitmap;)Lkotlin/Pair;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 98
    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 100
    :cond_0
    invoke-static {p1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v1

    const-string v2, "generate(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    :goto_0
    move v1, p1

    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->getMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 106
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p1

    goto :goto_0

    :goto_2
    const/4 p1, -0x1

    .line 108
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_7

    .line 111
    sget-object v0, Lcom/exteragram/messenger/utils/ui/UIUtil;->INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/exteragram/messenger/utils/ui/UIUtil;->adjustHsl$default(Lcom/exteragram/messenger/utils/ui/UIUtil;IFFILjava/lang/Object;)I

    move-result v1

    goto :goto_3

    :cond_7
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_8

    .line 112
    sget-object v0, Lcom/exteragram/messenger/utils/ui/UIUtil;->INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/exteragram/messenger/utils/ui/UIUtil;->adjustHsl$default(Lcom/exteragram/messenger/utils/ui/UIUtil;IFFILjava/lang/Object;)I

    move-result v1

    .line 116
    :cond_8
    :goto_3
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double p1, v2, v4

    if-gez p1, :cond_9

    const/high16 p1, -0x1000000

    const v0, 0x3e99999a    # 0.3f

    .line 117
    invoke-static {v1, p1, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    :cond_9
    move v3, v1

    const/4 p1, 0x3

    .line 121
    new-array p1, p1, [F

    .line 122
    invoke-static {v3, p1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v0, 0x2

    .line 124
    aget p1, p1, v0

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    const/high16 v1, 0x3e800000    # 0.25f

    if-gtz v0, :cond_a

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_a

    const/high16 p1, 0x40000000    # 2.0f

    :goto_4
    move v4, p1

    goto :goto_5

    :cond_a
    cmpg-float v0, v1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    if-gtz v0, :cond_b

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_b

    const/high16 p1, 0x3fc00000    # 1.5f

    goto :goto_4

    :cond_b
    cmpg-float v0, v1, p1

    if-gtz v0, :cond_c

    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_c

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_c
    move v4, v1

    .line 131
    :goto_5
    sget-object v2, Lcom/exteragram/messenger/utils/ui/UIUtil;->INSTANCE:Lcom/exteragram/messenger/utils/ui/UIUtil;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/exteragram/messenger/utils/ui/UIUtil;->adjustHsl$default(Lcom/exteragram/messenger/utils/ui/UIUtil;IFFILjava/lang/Object;)I

    move-result p1

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final create(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/tgnet/TLRPC$Document;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;)V
    .locals 3

    const-string/jumbo v0, "nowPlayingDTO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getPlatform()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TELEGRAM"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0, p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->getCoverUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 62
    new-instance p2, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 68
    :cond_3
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    .line 71
    new-instance v1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2, p3, p1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageLocation;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;Lcom/exteragram/messenger/api/dto/NowPlayingDTO;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
