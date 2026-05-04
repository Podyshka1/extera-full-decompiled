.class Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;
.super Landroid/graphics/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScalablePath"
.end annotation


# static fields
.field private static recycled:Ljava/util/ArrayList;


# instance fields
.field lastBottom:F

.field private rects:Ljava/util/ArrayList;

.field private rectsCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetrects(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrectsCount(Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rectsCount:I

    return p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 3321
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 3322
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    .line 3324
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rects:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3325
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rectsCount:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;-><init>()V

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 2

    .line 3342
    sget-object v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->recycled:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3343
    sget-object v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->recycled:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    goto :goto_0

    .line 3345
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 3347
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3348
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3349
    iget v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rectsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rectsCount:I

    .line 3350
    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    move-object p1, p0

    .line 3351
    iget p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    .line 3352
    iput p4, p1, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 3329
    invoke-super {p0}, Landroid/graphics/Path;->reset()V

    .line 3330
    sget-object v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->recycled:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->recycled:Ljava/util/ArrayList;

    .line 3333
    :cond_0
    sget-object v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->recycled:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3334
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3335
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->rectsCount:I

    const/4 v0, 0x0

    .line 3336
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$ScalablePath;->lastBottom:F

    return-void
.end method
