.class public final Lcom/exteragram/messenger/utils/ui/ColorRectSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/utils/ui/ColorRectSpan$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/utils/ui/ColorRectSpan$Companion;

.field private static final colorPaint:Landroid/graphics/Paint;

.field private static final offset:I


# instance fields
.field private final color:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/utils/ui/ColorRectSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/utils/ui/ColorRectSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->Companion:Lcom/exteragram/messenger/utils/ui/ColorRectSpan$Companion;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->colorPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    .line 26
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->offset:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->color:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9

    move-object/from16 v0, p9

    const-string v1, "canvas"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v8, v0

    check-cast v8, Landroid/text/TextPaint;

    .line 38
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 39
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {v0, p3, p4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eq v3, p0, :cond_0

    .line 42
    invoke-virtual {v3, v8}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v0, p7

    int-to-float v7, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    .line 49
    invoke-virtual {v8, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    add-int p3, p8, p6

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    div-float p4, v0, p4

    add-float/2addr p5, p2

    .line 54
    sget p2, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->offset:I

    int-to-float p2, p2

    add-float/2addr p5, p2

    sub-float p2, p3, p4

    add-float p6, p5, v0

    add-float/2addr p3, p4

    const p4, 0x3e91eb85    # 0.285f

    mul-float/2addr v0, p4

    .line 61
    sget-object p4, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->colorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->color:I

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v1, v0

    move/from16 p7, p6

    move p6, p3

    move p3, p5

    move/from16 p5, p7

    move-object/from16 p9, p4

    move/from16 p7, v0

    move/from16 p8, v1

    move p4, p2

    move-object p2, p1

    .line 62
    invoke-virtual/range {p2 .. p9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const-string p5, "paint"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p5

    float-to-int p5, p5

    .line 31
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 32
    sget p2, Lcom/exteragram/messenger/utils/ui/ColorRectSpan;->offset:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    int-to-float p2, p5

    add-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method
