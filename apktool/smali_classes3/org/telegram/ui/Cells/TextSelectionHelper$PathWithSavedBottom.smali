.class Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;
.super Landroid/graphics/Path;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/TextSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathWithSavedBottom"
.end annotation


# instance fields
.field lastBottom:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3302
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    .line 3304
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;->lastBottom:F

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Cells/TextSelectionHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;-><init>()V

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 0

    .line 3314
    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    move-object p1, p0

    .line 3315
    iget p2, p1, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;->lastBottom:F

    cmpl-float p2, p4, p2

    if-lez p2, :cond_0

    .line 3316
    iput p4, p1, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;->lastBottom:F

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 3308
    invoke-super {p0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 3309
    iput v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper$PathWithSavedBottom;->lastBottom:F

    return-void
.end method
