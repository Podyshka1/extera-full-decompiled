.class Lorg/telegram/messenger/SvgHelper$SVGHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/SvgHelper$SvgResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SVGHandler"
.end annotation


# instance fields
.field private alphaOnly:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private boundsMode:Z

.field private canvas:Landroid/graphics/Canvas;

.field private desiredHeight:I

.field private desiredWidth:I

.field private drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field private globalScale:F

.field private globalStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/SvgHelper$StyleSet;",
            ">;"
        }
    .end annotation
.end field

.field private insideGiftRect:Z

.field private insideGiftRectDepth:I

.field private insideGiftRectPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private paintColor:Ljava/lang/Integer;

.field pushed:Z

.field private rect:Landroid/graphics/RectF;

.field private rectTmp:Landroid/graphics/RectF;

.field private scale:F

.field private styles:Ljava/lang/StringBuilder;


# direct methods
.method static bridge synthetic -$$Nest$fputalphaOnly(Lorg/telegram/messenger/SvgHelper$SVGHandler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->alphaOnly:Z

    return-void
.end method

.method private constructor <init>(IILjava/lang/Integer;ZF)V
    .locals 3

    .line 1407
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1395
    iput v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    .line 1396
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    .line 1397
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    .line 1398
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    .line 1400
    iput v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalScale:F

    const/4 v0, 0x0

    .line 1402
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushed:Z

    .line 1404
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    .line 1533
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRect:Z

    .line 1534
    iput v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectDepth:I

    .line 1408
    iput p5, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalScale:F

    .line 1409
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    .line 1410
    iput p2, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    .line 1411
    iput-object p3, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paintColor:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    .line 1413
    new-instance p1, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-direct {p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/Integer;ZFLorg/telegram/messenger/SvgHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;-><init>(IILjava/lang/Integer;ZF)V

    return-void
.end method

.method private doColor(Lorg/telegram/messenger/SvgHelper$Properties;Ljava/lang/Integer;Z)V
    .locals 1

    .line 1489
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paintColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1490
    iget-object p2, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const v0, 0xffffff

    .line 1492
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/2addr p2, v0

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 1493
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1495
    :goto_0
    const-string p2, "opacity"

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SvgHelper$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    .line 1497
    const-string p2, "fill-opacity"

    goto :goto_1

    :cond_1
    const-string p2, "stroke-opacity"

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/SvgHelper$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    .line 1500
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 1502
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z
    .locals 5

    .line 1428
    const-string v0, "display"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1431
    :cond_0
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1432
    const-string v4, "url(#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1433
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    const/4 v0, 0x5

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    return v1

    .line 1436
    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getHex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1438
    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doColor(Lorg/telegram/messenger/SvgHelper$Properties;Ljava/lang/Integer;Z)V

    .line 1439
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return v3

    .line 1441
    :cond_2
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "stroke"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1442
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1443
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paintColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1444
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1446
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return v3

    :cond_4
    return v1
.end method

.method private doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z
    .locals 3

    .line 1455
    const-string v0, "display"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1458
    :cond_0
    const-string v0, "stroke"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getHex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1460
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doColor(Lorg/telegram/messenger/SvgHelper$Properties;Ljava/lang/Integer;Z)V

    .line 1461
    const-string v0, "stroke-width"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1464
    iget-object v1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1466
    :cond_1
    const-string v0, "stroke-linecap"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1467
    const-string v1, "round"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1468
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 1469
    :cond_2
    const-string v2, "square"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1470
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 1471
    :cond_3
    const-string v2, "butt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1472
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1474
    :cond_4
    :goto_0
    const-string v0, "stroke-linejoin"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/SvgHelper$Properties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1475
    const-string v0, "miter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1476
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 1477
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1478
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_1

    .line 1479
    :cond_6
    const-string v0, "bevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1480
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1482
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x1

    return p1

    :cond_8
    return v1
.end method

.method private popTransform()V
    .locals 2

    .line 1524
    iget-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushed:Z

    if-eqz v0, :cond_1

    .line 1525
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1526
    invoke-static {v0, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;)V

    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private pushTransform(Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1510
    const-string v0, "transform"

    invoke-static {v0, p1}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1511
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushed:Z

    if-eqz v0, :cond_2

    .line 1513
    invoke-static {p1}, Lorg/telegram/messenger/SvgHelper;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1514
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v0, :cond_1

    .line 1515
    invoke-static {v0, p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;)V

    return-void

    .line 1517
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1518
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1797
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1804
    iget-boolean p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRect:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1805
    iget p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectDepth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectDepth:I

    if-nez p1, :cond_9

    .line 1806
    iput-boolean p3, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRect:Z

    return-void

    .line 1810
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "clipPath"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string p1, "style"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string p1, "defs"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :sswitch_3
    const-string p1, "g"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, p3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1812
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_9

    .line 1813
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move p2, p3

    .line 1814
    :goto_1
    array-length v1, p1

    const/4 v2, 0x0

    if-ge p2, v1, :cond_8

    .line 1815
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\t"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p2

    .line 1816
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, p1, p2

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_5

    goto :goto_2

    .line 1819
    :cond_5
    aget-object v1, p1, p2

    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_6

    goto :goto_2

    .line 1823
    :cond_6
    aget-object v3, p1, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1824
    aget-object v4, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1825
    iget-object v4, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    new-instance v5, Lorg/telegram/messenger/SvgHelper$StyleSet;

    invoke-direct {v5, v1, v2}, Lorg/telegram/messenger/SvgHelper$StyleSet;-><init>(Ljava/lang/String;Lorg/telegram/messenger/SvgHelper-IA;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1827
    :cond_8
    iput-object v2, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    return-void

    .line 1835
    :pswitch_1
    iput-boolean p3, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_3
        0x2efd0e -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x36b25395 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1841
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDrawable()Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 1

    .line 1849
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    return-object v0
.end method

.method public getGiftPatternPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;",
            ">;"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectPositions:Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    .line 1620
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 1540
    const-string v6, "g"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "rect"

    const-string v9, "id"

    const/4 v10, 0x1

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRect:Z

    if-nez v7, :cond_0

    .line 1541
    invoke-interface {v3, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1542
    const-string v7, "GiftPatterns"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1543
    iput-boolean v10, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRect:Z

    .line 1544
    iput v10, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectDepth:I

    return-void

    .line 1547
    :cond_0
    iget-boolean v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRect:Z

    if-eqz v7, :cond_2

    .line 1548
    iget v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectDepth:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectDepth:I

    .line 1549
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1550
    iget v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    invoke-static {v3, v1}, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->create(Lorg/xml/sax/Attributes;F)Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 1552
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectPositions:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1553
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectPositions:Ljava/util/List;

    .line 1555
    :cond_1
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->insideGiftRectPositions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1562
    :cond_2
    iget-boolean v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    const-string v7, "style"

    if-eqz v2, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_11

    .line 1565
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v12, "polygon"

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "clipPath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v15, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "polyline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v15, 0xa

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v15, 0x9

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v15, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v15, 0x7

    goto :goto_0

    :sswitch_5
    const-string v2, "line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v15, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "defs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v15, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "svg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v15, 0x4

    goto :goto_0

    :sswitch_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v15, 0x3

    goto :goto_0

    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    move v15, v14

    goto :goto_0

    :sswitch_a
    const-string v2, "circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    move v15, v10

    goto :goto_0

    :sswitch_b
    const-string v2, "ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    move v15, v13

    :goto_0
    const-string v2, "cy"

    const-string v6, "cx"

    const-string v7, "rx"

    const-string v8, "height"

    move/from16 p1, v4

    const-string v4, "width"

    const/16 p3, 0x3

    const/4 v11, 0x0

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_11

    .line 1610
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->styles:Ljava/lang/StringBuilder;

    return-void

    .line 1618
    :pswitch_1
    const-string v1, "x"

    invoke-static {v1, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v1, v5

    .line 1622
    :cond_10
    const-string v2, "y"

    invoke-static {v2, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_1

    :cond_11
    move-object v5, v2

    .line 1626
    :goto_1
    invoke-static {v4, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1627
    invoke-static {v8, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1628
    invoke-static {v7, v3, v11}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    .line 1629
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1630
    new-instance v7, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v8, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v7, v3, v8, v11}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper-IA;)V

    .line 1631
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1632
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v3, :cond_13

    if-eqz v6, :cond_12

    .line 1634
    new-instance v8, Lorg/telegram/messenger/SvgHelper$RoundRect;

    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lorg/telegram/messenger/SvgHelper$RoundRect;-><init>(Landroid/graphics/RectF;F)V

    iget-object v9, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1636
    :cond_12
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v9, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v8, v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_13
    if-eqz v6, :cond_14

    .line 1640
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v11, v12

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1641
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1643
    :cond_14
    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float v15, v3, v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float v16, v3, v8

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1647
    :cond_15
    :goto_2
    invoke-direct {v0, v7}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1648
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v3, :cond_17

    if-eqz v6, :cond_16

    .line 1650
    new-instance v7, Lorg/telegram/messenger/SvgHelper$RoundRect;

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    invoke-direct {v8, v9, v10, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v7, v8, v1}, Lorg/telegram/messenger/SvgHelper$RoundRect;-><init>(Landroid/graphics/RectF;F)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v7, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1652
    :cond_16
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    invoke-direct {v6, v7, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v6, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_17
    if-eqz v6, :cond_18

    .line 1656
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v3, v7, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1657
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1659
    :cond_18
    iget-object v6, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float v9, v1, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float v10, v1, v2

    iget-object v11, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1663
    :cond_19
    :goto_3
    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    return-void

    .line 1772
    :pswitch_2
    const-string v1, "d"

    invoke-static {v1, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 1773
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1774
    new-instance v2, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v11}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper-IA;)V

    .line 1775
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1776
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v3, :cond_1a

    .line 1777
    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v1, v4}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 1779
    :cond_1a
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1782
    :cond_1b
    :goto_4
    invoke-direct {v0, v2}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1783
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v2, :cond_1c

    .line 1784
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 1786
    :cond_1c
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1789
    :cond_1d
    :goto_5
    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    return-void

    .line 1667
    :pswitch_3
    const-string v1, "x1"

    invoke-static {v1, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1668
    const-string v2, "x2"

    invoke-static {v2, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1669
    const-string v4, "y1"

    invoke-static {v4, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1670
    const-string v5, "y2"

    invoke-static {v5, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    .line 1671
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v6, v3, v7, v11}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper-IA;)V

    .line 1672
    invoke-direct {v0, v6}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1673
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1674
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v3, :cond_1e

    .line 1675
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Line;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v6, v1, v4, v2, v5}, Lorg/telegram/messenger/SvgHelper$Line;-><init>(FFFF)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v6, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 1677
    :cond_1e
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1679
    :goto_6
    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    return-void

    .line 1607
    :pswitch_4
    iput-boolean v10, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    return-void

    .line 1567
    :pswitch_5
    invoke-static {v4, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1568
    invoke-static {v8, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v1, :cond_1f

    if-nez v2, :cond_20

    .line 1570
    :cond_1f
    const-string v4, "viewBox"

    invoke-static {v4, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1572
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1573
    aget-object v2, v1, v14

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1574
    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    :cond_20
    if-eqz v1, :cond_21

    if-nez v2, :cond_22

    .line 1578
    :cond_21
    iget v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1579
    iget v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1581
    :cond_22
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 1582
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-eqz v1, :cond_24

    if-nez v2, :cond_23

    goto :goto_7

    .line 1586
    :cond_23
    iget v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    if-eqz v3, :cond_25

    iget v4, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    if-eqz v4, :cond_25

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 1587
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_8

    .line 1584
    :cond_24
    :goto_7
    iget v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredWidth:I

    .line 1585
    iget v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->desiredHeight:I

    .line 1592
    :cond_25
    :goto_8
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v3, :cond_27

    .line 1593
    iget-boolean v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->alphaOnly:Z

    if-eqz v3, :cond_26

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_9

    :cond_26
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_9
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    .line 1594
    invoke-virtual {v1, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1595
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    .line 1596
    iget v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->scale:F

    cmpl-float v3, v2, p1

    if-eqz v3, :cond_36

    .line 1597
    iget v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalScale:F

    mul-float v4, v3, v2

    mul-float/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    return-void

    .line 1600
    :cond_27
    iput v1, v3, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    .line 1601
    iput v2, v3, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    return-void

    .line 1613
    :pswitch_6
    const-string v1, "bounds"

    invoke-static {v9, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1614
    iput-boolean v10, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->boundsMode:Z

    return-void

    .line 1737
    :pswitch_7
    const-string v2, "points"

    invoke-static {v2, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/telegram/messenger/SvgHelper$NumberParse;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1739
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1740
    invoke-static {v2}, Lorg/telegram/messenger/SvgHelper$NumberParse;->-$$Nest$fgetnumbers(Lorg/telegram/messenger/SvgHelper$NumberParse;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1741
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_36

    .line 1742
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1743
    new-instance v5, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v6, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v5, v3, v6, v11}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper-IA;)V

    .line 1744
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1745
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_28

    .line 1746
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v6, v14, 0x1

    .line 1747
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1748
    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v14, v14, 0x2

    goto :goto_a

    .line 1750
    :cond_28
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1751
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 1753
    :cond_29
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1754
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_2a

    .line 1755
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_b

    .line 1757
    :cond_2a
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1760
    :cond_2b
    :goto_b
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1761
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_2c

    .line 1762
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v4, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 1764
    :cond_2c
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1767
    :cond_2d
    :goto_c
    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    return-void

    .line 1684
    :pswitch_8
    invoke-static {v6, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1685
    invoke-static {v2, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1686
    const-string v4, "r"

    invoke-static {v4, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    if-eqz v4, :cond_36

    .line 1688
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1689
    new-instance v5, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v6, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v5, v3, v6, v11}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper-IA;)V

    .line 1690
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1691
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v3, :cond_2e

    .line 1692
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Circle;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lorg/telegram/messenger/SvgHelper$Circle;-><init>(FFF)V

    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v6, v7}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_d

    .line 1694
    :cond_2e
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1697
    :cond_2f
    :goto_d
    invoke-direct {v0, v5}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1698
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v3, :cond_30

    .line 1699
    new-instance v5, Lorg/telegram/messenger/SvgHelper$Circle;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v5, v1, v2, v4}, Lorg/telegram/messenger/SvgHelper$Circle;-><init>(FFF)V

    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v3, v5, v1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_e

    .line 1701
    :cond_30
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1704
    :cond_31
    :goto_e
    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    return-void

    .line 1709
    :pswitch_9
    invoke-static {v6, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v1

    .line 1710
    invoke-static {v2, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v2

    .line 1711
    invoke-static {v7, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v4

    .line 1712
    const-string v5, "ry"

    invoke-static {v5, v3}, Lorg/telegram/messenger/SvgHelper;->-$$Nest$smgetFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object v5

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    if-eqz v4, :cond_36

    if-eqz v5, :cond_36

    .line 1714
    invoke-direct {v0, v3}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->pushTransform(Lorg/xml/sax/Attributes;)V

    .line 1715
    new-instance v6, Lorg/telegram/messenger/SvgHelper$Properties;

    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->globalStyles:Ljava/util/HashMap;

    invoke-direct {v6, v3, v7, v11}, Lorg/telegram/messenger/SvgHelper$Properties;-><init>(Lorg/xml/sax/Attributes;Ljava/util/HashMap;Lorg/telegram/messenger/SvgHelper-IA;)V

    .line 1716
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {v3, v7, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1717
    invoke-direct {v0, v6}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doFill(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1718
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_32

    .line 1719
    new-instance v2, Lorg/telegram/messenger/SvgHelper$Oval;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/SvgHelper$Oval;-><init>(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_f

    .line 1721
    :cond_32
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1724
    :cond_33
    :goto_f
    invoke-direct {v0, v6}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->doStroke(Lorg/telegram/messenger/SvgHelper$Properties;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1725
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->drawable:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-eqz v1, :cond_34

    .line 1726
    new-instance v2, Lorg/telegram/messenger/SvgHelper$Oval;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/SvgHelper$Oval;-><init>(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->-$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V

    goto :goto_10

    .line 1728
    :cond_34
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SVGHandler;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1731
    :cond_35
    :goto_10
    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SVGHandler;->popTransform()V

    :cond_36
    :goto_11
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62bbe422 -> :sswitch_b
        -0x51134330 -> :sswitch_a
        -0x17b1aac6 -> :sswitch_9
        0x67 -> :sswitch_8
        0x1be64 -> :sswitch_7
        0x2efd0e -> :sswitch_6
        0x32aff4 -> :sswitch_5
        0x346425 -> :sswitch_4
        0x3559e4 -> :sswitch_3
        0x68b1db1 -> :sswitch_2
        0x217e81c0 -> :sswitch_1
        0x36b25395 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method
