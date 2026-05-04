.class public Lorg/telegram/ui/Components/TableLayout;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TableLayout$Child;,
        Lorg/telegram/ui/Components/TableLayout$LayoutParams;,
        Lorg/telegram/ui/Components/TableLayout$Spec;,
        Lorg/telegram/ui/Components/TableLayout$Interval;,
        Lorg/telegram/ui/Components/TableLayout$Alignment;,
        Lorg/telegram/ui/Components/TableLayout$Axis;,
        Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;,
        Lorg/telegram/ui/Components/TableLayout$PackedMap;,
        Lorg/telegram/ui/Components/TableLayout$Bounds;,
        Lorg/telegram/ui/Components/TableLayout$Assoc;,
        Lorg/telegram/ui/Components/TableLayout$MutableInt;,
        Lorg/telegram/ui/Components/TableLayout$Arc;
    }
.end annotation


# static fields
.field public static final BASELINE:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final BOTTOM:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final CENTER:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final END:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field private static final LEADING:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final LEFT:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final RIGHT:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final START:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field public static final TOP:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field private static final TRAILING:Lorg/telegram/ui/Components/TableLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Lorg/telegram/ui/Components/TableLayout$Alignment;


# instance fields
.field private backgroundPath:Landroid/graphics/Path;

.field private cellsToFixHeight:Ljava/util/ArrayList;

.field private childrens:Ljava/util/ArrayList;

.field private colCount:I

.field private delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

.field private drawLines:Z

.field private isRtl:Z

.field private isStriped:Z

.field private itemPaddingLeft:I

.field private itemPaddingTop:I

.field private linePath:Landroid/graphics/Path;

.field private mAlignmentMode:I

.field private mDefaultGap:I

.field private final mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

.field private mLastLayoutParamsHashCode:I

.field private mOrientation:I

.field private mUseDefaultMargins:Z

.field private final mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private rowSpans:Ljava/util/ArrayList;

.field private textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetbackgroundPath(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/Path;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->backgroundPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawLines(Lorg/telegram/ui/Components/TableLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/TableLayout;->drawLines:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisStriped(Lorg/telegram/ui/Components/TableLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/TableLayout;->isStriped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemPaddingLeft(Lorg/telegram/ui/Components/TableLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemPaddingTop(Lorg/telegram/ui/Components/TableLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetradii(Lorg/telegram/ui/Components/TableLayout;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->radii:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lorg/telegram/ui/Components/TableLayout;)Landroid/graphics/RectF;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/Components/TableLayout;)Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/TableLayout;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smhandleInvalidParams(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/TableLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1957
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$1;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->UNDEFINED_ALIGNMENT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 1969
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$2;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$2;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->LEADING:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 1981
    new-instance v1, Lorg/telegram/ui/Components/TableLayout$3;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TableLayout$3;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/TableLayout;->TRAILING:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 1993
    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->TOP:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 1994
    sput-object v1, Lorg/telegram/ui/Components/TableLayout;->BOTTOM:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 1995
    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->START:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 1996
    sput-object v1, Lorg/telegram/ui/Components/TableLayout;->END:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 2012
    invoke-static {v0}, Lorg/telegram/ui/Components/TableLayout;->createSwitchingAlignment(Lorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->LEFT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 2013
    invoke-static {v1}, Lorg/telegram/ui/Components/TableLayout;->createSwitchingAlignment(Lorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->RIGHT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 2014
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$5;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$5;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->CENTER:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 2026
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$6;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$6;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->BASELINE:Lorg/telegram/ui/Components/TableLayout$Alignment;

    .line 2067
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$7;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout$7;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;)V
    .locals 3

    .line 414
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Lorg/telegram/ui/Components/TableLayout$Axis;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;-><init>(Lorg/telegram/ui/Components/TableLayout;ZLorg/telegram/ui/Components/TableLayout-IA;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    .line 61
    new-instance p1, Lorg/telegram/ui/Components/TableLayout$Axis;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2, v1}, Lorg/telegram/ui/Components/TableLayout$Axis;-><init>(Lorg/telegram/ui/Components/TableLayout;ZLorg/telegram/ui/Components/TableLayout-IA;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    .line 62
    iput v2, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    .line 63
    iput-boolean v2, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    .line 64
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    .line 66
    iput v2, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    const/high16 p1, 0x40e00000    # 7.0f

    .line 67
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingTop:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 68
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->linePath:Landroid/graphics/Path;

    .line 76
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->backgroundPath:Landroid/graphics/Path;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->rect:Landroid/graphics/RectF;

    const/16 p1, 0x8

    .line 78
    new-array p1, p1, [F

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->radii:[F

    .line 353
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    .line 415
    iput-object p3, p0, Lorg/telegram/ui/Components/TableLayout;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    const/high16 p1, -0x80000000

    .line 416
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout;->setRowCount(I)V

    .line 417
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout;->setColumnCount(I)V

    .line 418
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->setOrientation(I)V

    .line 419
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->setUseDefaultMargins(Z)V

    .line 420
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->setAlignmentMode(I)V

    .line 421
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->setRowOrderPreserved(Z)V

    .line 422
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->setColumnOrderPreserved(Z)V

    .line 423
    iput-object p2, p0, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    return-void
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 507
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static canStretch(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static clip(Lorg/telegram/ui/Components/TableLayout$Interval;ZI)I
    .locals 1

    .line 603
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Interval;->size()I

    move-result v0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 607
    iget p0, p0, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sub-int/2addr p2, p0

    .line 608
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private computeLayoutParamsHashCode()I
    .locals 4

    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 715
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v3

    .line 716
    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    mul-int/lit8 v1, v1, 0x1f

    .line 717
    invoke-virtual {v3}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private consistencyCheck()V
    .locals 2

    .line 723
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    .line 724
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->validateLayoutParams()V

    .line 725
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    return-void

    .line 726
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 727
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    .line 728
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->consistencyCheck()V

    :cond_1
    return-void
.end method

.method private static createSwitchingAlignment(Lorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Alignment;
    .locals 1

    .line 1999
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TableLayout$4;-><init>(Lorg/telegram/ui/Components/TableLayout$Alignment;)V

    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 2

    .line 581
    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_2

    .line 585
    aget v0, p0, p2

    if-le v0, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;ZZ)I
    .locals 4

    .line 543
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    .line 546
    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    :goto_0
    if-eqz p3, :cond_2

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    .line 548
    :goto_1
    iget-object p2, p2, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    .line 549
    iget-boolean v3, p0, Lorg/telegram/ui/Components/TableLayout;->isRtl:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eq v3, p4, :cond_4

    .line 550
    iget p2, p2, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-nez p2, :cond_5

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_4
    iget p2, p2, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    if-ne p2, v0, :cond_5

    goto :goto_3

    .line 552
    :cond_5
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Lorg/telegram/ui/Components/TableLayout;->getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZZ)I

    move-result p1

    return p1
.end method

.method private getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I
    .locals 0

    .line 535
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout;->mDefaultGap:I

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZZ)I
    .locals 0

    .line 539
    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/Components/TableLayout;->getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result p1

    return p1
.end method

.method private getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I
    .locals 2

    .line 564
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TableLayout;->getMargin1(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    :goto_0
    if-eqz p3, :cond_2

    .line 568
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLeadingMargins()[I

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getTrailingMargins()[I

    move-result-object v0

    .line 569
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 570
    iget-object p1, p1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 571
    :goto_2
    iget-object p1, p1, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    if-eqz p3, :cond_4

    iget p1, p1, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget p1, p1, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    .line 572
    :goto_3
    aget p1, v0, p1

    return p1
.end method

.method private getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 975
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredWidth()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I
    .locals 2

    const/4 v0, 0x1

    .line 577
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 2

    .line 682
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    .line 668
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout;->mLastLayoutParamsHashCode:I

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateStructure()V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateStructure()V

    .line 671
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateValues()V

    return-void
.end method

.method private invalidateValues()V
    .locals 2

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 3

    .line 498
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 499
    aget v2, p0, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private measureChildWithMargins2(Lorg/telegram/ui/Components/TableLayout$Child;IIIIZ)V
    .locals 0

    const/4 p2, 0x1

    .line 733
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result p2

    add-int/2addr p2, p4

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p2, p3, p6}, Lorg/telegram/ui/Components/TableLayout$Child;->measure(IIZ)V

    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 10

    .line 737
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    .line 740
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v4

    .line 741
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v3

    if-eqz p3, :cond_2

    .line 743
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 745
    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 746
    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_0
    int-to-float v5, v5

    const/high16 v6, 0x3fc00000    # 1.5f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 750
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    invoke-static {v4}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetcell(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->createTextLayout(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;I)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/TableLayout$Child;->setTextLayout(Lorg/telegram/ui/ArticleViewer$DrawingText;)V

    .line 751
    iget-object v5, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v5, :cond_1

    .line 752
    iget v5, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textWidth:I

    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingLeft:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 753
    iget v5, v4, Lorg/telegram/ui/Components/TableLayout$Child;->textHeight:I

    iget v6, p0, Lorg/telegram/ui/Components/TableLayout;->itemPaddingTop:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_2

    .line 755
    :cond_1
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 756
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 758
    :goto_2
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v9, 0x1

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/TableLayout;->measureChildWithMargins2(Lorg/telegram/ui/Components/TableLayout$Child;IIIIZ)V

    move-object p1, v3

    goto :goto_6

    :cond_2
    move v5, p1

    move v6, p2

    move-object p1, p0

    .line 761
    iget p2, p1, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    move p2, v1

    :goto_3
    if-eqz p2, :cond_4

    .line 762
    iget-object v7, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_4

    :cond_4
    iget-object v7, v3, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 763
    :goto_4
    invoke-static {v7, p2}, Lorg/telegram/ui/Components/TableLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v8

    sget-object v9, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    if-ne v8, v9, :cond_7

    .line 764
    iget-object v7, v7, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    if-eqz p2, :cond_5

    .line 765
    iget-object v8, p1, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_5

    :cond_5
    iget-object v8, p1, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    .line 766
    :goto_5
    invoke-virtual {v8}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object v8

    .line 767
    iget v9, v7, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    aget v9, v8, v9

    iget v7, v7, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v7, v8, v7

    sub-int/2addr v9, v7

    .line 768
    invoke-direct {p0, v4, p2}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v7

    sub-int v7, v9, v7

    if-eqz p2, :cond_6

    .line 770
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/TableLayout;->measureChildWithMargins2(Lorg/telegram/ui/Components/TableLayout$Child;IIIIZ)V

    goto :goto_6

    .line 772
    :cond_6
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, 0x0

    move-object v3, p0

    move v8, v7

    move v7, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/TableLayout;->measureChildWithMargins2(Lorg/telegram/ui/Components/TableLayout$Child;IIIIZ)V

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move p1, v5

    move p2, v6

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 1

    .line 593
    array-length v0, p0

    .line 594
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static setCellGroup(Lorg/telegram/ui/Components/TableLayout$LayoutParams;IIII)V
    .locals 1

    .line 598
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr p2, p1

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->setRowSpecSpan(Lorg/telegram/ui/Components/TableLayout$Interval;)V

    .line 599
    new-instance p1, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr p4, p3

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->setColumnSpecSpan(Lorg/telegram/ui/Components/TableLayout$Interval;)V

    return-void
.end method

.method public static spec(I)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    .line 1937
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/TableLayout;->spec(II)Lorg/telegram/ui/Components/TableLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(II)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 1

    .line 1933
    sget-object v0, Lorg/telegram/ui/Components/TableLayout;->UNDEFINED_ALIGNMENT:Lorg/telegram/ui/Components/TableLayout$Alignment;

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/TableLayout;->spec(IILorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(IILorg/telegram/ui/Components/TableLayout$Alignment;)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 1

    const/4 v0, 0x0

    .line 1925
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Components/TableLayout;->spec(IILorg/telegram/ui/Components/TableLayout$Alignment;F)Lorg/telegram/ui/Components/TableLayout$Spec;

    move-result-object p0

    return-object p0
.end method

.method public static spec(IILorg/telegram/ui/Components/TableLayout$Alignment;F)Lorg/telegram/ui/Components/TableLayout$Spec;
    .locals 7

    .line 1909
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Spec;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZIILorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout-IA;)V

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 14

    .line 612
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 613
    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    .line 614
    :goto_1
    iget v2, v2, Lorg/telegram/ui/Components/TableLayout$Axis;->definedCount:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 618
    :goto_2
    new-array v3, v2, [I

    .line 620
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v4

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_3
    if-ge v5, v4, :cond_d

    .line 621
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    if-eqz v0, :cond_3

    .line 623
    iget-object v9, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_4

    :cond_3
    iget-object v9, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 624
    :goto_4
    iget-object v10, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 625
    iget-boolean v9, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->startDefined:Z

    .line 626
    invoke-virtual {v10}, Lorg/telegram/ui/Components/TableLayout$Interval;->size()I

    move-result v11

    if-eqz v9, :cond_4

    .line 628
    iget v6, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    :cond_4
    if-eqz v0, :cond_5

    .line 631
    iget-object v10, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    goto :goto_5

    :cond_5
    iget-object v10, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 632
    :goto_5
    iget-object v12, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 633
    iget-boolean v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->startDefined:Z

    .line 634
    invoke-static {v12, v10, v2}, Lorg/telegram/ui/Components/TableLayout;->clip(Lorg/telegram/ui/Components/TableLayout$Interval;ZI)I

    move-result v13

    if-eqz v10, :cond_6

    .line 636
    iget v7, v12, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    :cond_6
    if-eqz v2, :cond_b

    if-eqz v9, :cond_7

    if-nez v10, :cond_a

    :cond_7
    :goto_6
    add-int v9, v7, v13

    .line 641
    invoke-static {v3, v6, v7, v9}, Lorg/telegram/ui/Components/TableLayout;->fits([IIII)Z

    move-result v12

    if-nez v12, :cond_a

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    if-gt v9, v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_6

    :cond_a
    add-int v9, v7, v13

    add-int v10, v6, v11

    .line 654
    invoke-static {v3, v7, v9, v10}, Lorg/telegram/ui/Components/TableLayout;->procrusteanFill([IIII)V

    :cond_b
    if-eqz v0, :cond_c

    .line 658
    invoke-static {v8, v6, v11, v7, v13}, Lorg/telegram/ui/Components/TableLayout;->setCellGroup(Lorg/telegram/ui/Components/TableLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 660
    :cond_c
    invoke-static {v8, v7, v13, v6, v11}, Lorg/telegram/ui/Components/TableLayout;->setCellGroup(Lorg/telegram/ui/Components/TableLayout$LayoutParams;IIII)V

    :goto_7
    add-int/2addr v7, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public addChild(IIII)V
    .locals 11

    .line 356
    new-instance v0, Lorg/telegram/ui/Components/TableLayout$Child;

    iget-object v1, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/TableLayout$Child;-><init>(Lorg/telegram/ui/Components/TableLayout;I)V

    .line 357
    new-instance v1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;-><init>()V

    .line 358
    new-instance v2, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v4, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr p4, p2

    invoke-direct {v4, p2, p4}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    sget-object v5, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout-IA;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    move-object v8, v5

    .line 359
    new-instance v5, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v7, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr p3, p1

    invoke-direct {v7, p1, p3}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout-IA;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 360
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fputlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;)V

    .line 361
    iput p2, v0, Lorg/telegram/ui/Components/TableLayout$Child;->rowspan:I

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    return-void
.end method

.method public addChild(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x1

    if-nez p4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    .line 370
    :goto_0
    new-instance v6, Lorg/telegram/ui/Components/TableLayout$Child;

    iget-object v7, v0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lorg/telegram/ui/Components/TableLayout$Child;-><init>(Lorg/telegram/ui/Components/TableLayout;I)V

    .line 371
    invoke-static {v6, v1}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fputcell(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;)V

    .line 372
    new-instance v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    invoke-direct {v7}, Lorg/telegram/ui/Components/TableLayout$LayoutParams;-><init>()V

    .line 373
    new-instance v8, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v10, Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    add-int/2addr v9, v3

    invoke-direct {v10, v3, v9}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    sget-object v11, Lorg/telegram/ui/Components/TableLayout;->FILL:Lorg/telegram/ui/Components/TableLayout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout-IA;)V

    iput-object v8, v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    move-object v14, v11

    .line 374
    new-instance v11, Lorg/telegram/ui/Components/TableLayout$Spec;

    new-instance v13, Lorg/telegram/ui/Components/TableLayout$Interval;

    add-int/2addr v5, v2

    invoke-direct {v13, v2, v5}, Lorg/telegram/ui/Components/TableLayout$Interval;-><init>(II)V

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Components/TableLayout$Spec;-><init>(ZLorg/telegram/ui/Components/TableLayout$Interval;Lorg/telegram/ui/Components/TableLayout$Alignment;FLorg/telegram/ui/Components/TableLayout-IA;)V

    iput-object v11, v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 375
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fputlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;)V

    .line 376
    iput v3, v6, Lorg/telegram/ui/Components/TableLayout$Child;->rowspan:I

    .line 377
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->rowspan:I

    if-le v1, v4, :cond_2

    .line 379
    iget-object v2, v0, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Components/Point;

    int-to-float v5, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_2
    invoke-direct {v0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    return-void
.end method

.method public getAlignmentMode()I
    .locals 1

    .line 468
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    return v0
.end method

.method public getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;
    .locals 1

    if-ltz p1, :cond_1

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/TableLayout$Child;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method getMargin1(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I
    .locals 3

    .line 556
    invoke-virtual {p1}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 558
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 559
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    .line 560
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/TableLayout;->getDefaultMargin(Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$LayoutParams;ZZ)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method final getMeasurementIncludingMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I
    .locals 1

    .line 979
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout;->getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TableLayout;->getTotalMargin(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 427
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 706
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 707
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v2

    .line 708
    invoke-virtual {v2, p1, p0}, Lorg/telegram/ui/Components/TableLayout$Child;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 990
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->consistencyCheck()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 792
    invoke-direct {v1}, Lorg/telegram/ui/Components/TableLayout;->consistencyCheck()V

    .line 794
    invoke-direct {v1}, Lorg/telegram/ui/Components/TableLayout;->invalidateValues()V

    const/4 v6, 0x0

    .line 796
    iput v6, v1, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    .line 797
    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v3

    move v4, v6

    :goto_0
    if-ge v4, v3, :cond_0

    .line 798
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v5

    .line 799
    iget v7, v1, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    invoke-static {v5}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v5, v5, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v5, v5, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v1, Lorg/telegram/ui/Components/TableLayout;->colCount:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    .line 802
    invoke-direct {v1, v0, v2, v7}, Lorg/telegram/ui/Components/TableLayout;->measureChildrenWithMargins(IIZ)V

    .line 807
    iget v3, v1, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    if-nez v3, :cond_1

    .line 808
    iget-object v3, v1, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v3

    .line 809
    invoke-direct {v1, v0, v2, v6}, Lorg/telegram/ui/Components/TableLayout;->measureChildrenWithMargins(IIZ)V

    .line 810
    iget-object v4, v1, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v2

    goto :goto_1

    .line 812
    :cond_1
    iget-object v3, v1, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v3

    .line 813
    invoke-direct {v1, v0, v2, v6}, Lorg/telegram/ui/Components/TableLayout;->measureChildrenWithMargins(IIZ)V

    .line 814
    iget-object v2, v1, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getMeasure(I)I

    move-result v2

    move/from16 v28, v3

    move v3, v2

    move/from16 v2, v28

    .line 817
    :goto_1
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 818
    invoke-virtual {v1}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 819
    invoke-virtual {v1, v0, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 822
    iget-object v2, v1, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->layout(I)V

    .line 823
    iget-object v0, v1, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/TableLayout$Axis;->layout(I)V

    .line 825
    iget-object v0, v1, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object v9

    .line 826
    iget-object v0, v1, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TableLayout$Axis;->getLocations()[I

    move-result-object v10

    .line 830
    iget-object v0, v1, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 831
    array-length v0, v9

    sub-int/2addr v0, v7

    aget v11, v9, v0

    .line 832
    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v12

    move v13, v6

    :goto_2
    if-ge v13, v12, :cond_8

    .line 833
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v2

    .line 834
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->getLayoutParams()Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v0

    .line 835
    iget-object v3, v0, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->columnSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 836
    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    .line 838
    iget-object v4, v3, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 839
    iget-object v5, v0, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    .line 841
    iget v14, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v14, v9, v14

    .line 842
    iget v15, v5, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    aget v15, v10, v15

    .line 844
    iget v4, v4, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    aget v4, v9, v4

    .line 845
    iget v5, v5, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    aget v5, v10, v5

    sub-int v16, v4, v14

    sub-int v17, v5, v15

    .line 850
    invoke-direct {v1, v2, v7}, Lorg/telegram/ui/Components/TableLayout;->getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v4

    .line 851
    invoke-direct {v1, v2, v6}, Lorg/telegram/ui/Components/TableLayout;->getMeasurement(Lorg/telegram/ui/Components/TableLayout$Child;Z)I

    move-result v5

    .line 853
    invoke-static {v3, v7}, Lorg/telegram/ui/Components/TableLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v3

    .line 854
    invoke-static {v0, v6}, Lorg/telegram/ui/Components/TableLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object v0

    .line 856
    iget-object v6, v1, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/TableLayout$Axis;->getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v6

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/TableLayout$Bounds;

    .line 857
    iget-object v7, v1, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TableLayout$Axis;->getGroupBounds()Lorg/telegram/ui/Components/TableLayout$PackedMap;

    move-result-object v7

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/TableLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Bounds;

    move/from16 p1, v4

    const/4 v4, 0x1

    .line 859
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/TableLayout$Bounds;->size(Z)I

    move-result v18

    move/from16 p2, v5

    sub-int v5, v16, v18

    invoke-virtual {v3, v2, v5}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getGravityOffset(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    move-result v19

    .line 860
    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/TableLayout$Bounds;->size(Z)I

    move-result v5

    sub-int v5, v17, v5

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getGravityOffset(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    move-result v20

    .line 862
    invoke-direct {v1, v2, v4, v4}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v21

    const/4 v5, 0x0

    .line 863
    invoke-direct {v1, v2, v5, v4}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v22

    .line 864
    invoke-direct {v1, v2, v4, v5}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v23

    .line 865
    invoke-direct {v1, v2, v5, v5}, Lorg/telegram/ui/Components/TableLayout;->getMargin(Lorg/telegram/ui/Components/TableLayout$Child;ZZ)I

    move-result v4

    add-int v24, v21, v23

    add-int v25, v22, v4

    add-int v4, p1, v24

    const/4 v5, 0x1

    move-object/from16 v26, v0

    move-object v0, v6

    move/from16 v6, p1

    move-object/from16 p1, v7

    move/from16 v7, p2

    .line 870
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableLayout$Bounds;->getOffset(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Alignment;IZ)I

    move-result v27

    add-int v4, v7, v25

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 p2, v8

    move-object v8, v3

    move-object/from16 v3, v26

    .line 871
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/TableLayout$Bounds;->getOffset(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Alignment;IZ)I

    move-result v0

    sub-int v4, v16, v24

    .line 873
    invoke-virtual {v8, v2, v6, v4}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getSizeInCell(Lorg/telegram/ui/Components/TableLayout$Child;II)I

    move-result v4

    sub-int v5, v17, v25

    .line 874
    invoke-virtual {v3, v2, v7, v5}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getSizeInCell(Lorg/telegram/ui/Components/TableLayout$Child;II)I

    move-result v3

    add-int v14, v14, v19

    add-int v14, v14, v27

    .line 878
    iget-boolean v5, v1, Lorg/telegram/ui/Components/TableLayout;->isRtl:Z

    if-nez v5, :cond_2

    add-int v21, v21, v14

    :goto_3
    move/from16 v5, v21

    goto :goto_4

    :cond_2
    sub-int v5, v11, v4

    sub-int v5, v5, v23

    sub-int v21, v5, v14

    goto :goto_3

    :goto_4
    add-int v15, v15, v20

    add-int/2addr v15, v0

    add-int v15, v15, v22

    .line 881
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetcell(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 882
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredWidth()I

    move-result v0

    if-ne v4, v0, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->getMeasuredHeight()I

    move-result v0

    if-eq v3, v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_6

    .line 883
    :goto_5
    invoke-virtual {v2, v4, v3, v0}, Lorg/telegram/ui/Components/TableLayout$Child;->measure(IIZ)V

    .line 885
    :goto_6
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v6

    if-eq v6, v3, :cond_7

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v6, v6, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v6, v6, Lorg/telegram/ui/Components/TableLayout$Interval;->max:I

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v7, v7, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v7, v7, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    if-gt v6, v7, :cond_7

    .line 887
    iget-object v6, v1, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_7
    if-ge v7, v6, :cond_6

    .line 888
    iget-object v8, v1, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Point;

    .line 889
    iget v14, v8, Lorg/telegram/ui/Components/Point;->x:F

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v0, v0, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v0, v0, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    int-to-float v0, v0

    cmpg-float v0, v14, v0

    if-gtz v0, :cond_5

    iget v0, v8, Lorg/telegram/ui/Components/Point;->y:F

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v8, v8, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v8, v8, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    int-to-float v8, v8

    cmpl-float v0, v0, v8

    if-lez v0, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    goto :goto_7

    .line 895
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_8
    add-int/2addr v4, v5

    add-int/2addr v3, v15

    .line 899
    invoke-virtual {v2, v5, v15, v4, v3}, Lorg/telegram/ui/Components/TableLayout$Child;->layout(IIII)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, p2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_8
    move/from16 p2, v8

    .line 902
    iget-object v0, v1, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v0, :cond_16

    .line 903
    iget-object v2, v1, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/TableLayout$Child;

    .line 905
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 906
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetindex(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    iget-object v6, v1, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_a
    if-ge v4, v6, :cond_b

    .line 907
    iget-object v7, v1, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Child;

    .line 908
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v9, v9, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ne v9, v10, :cond_b

    .line 909
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-ge v9, v10, :cond_9

    const/4 v4, 0x1

    goto :goto_b

    .line 913
    :cond_9
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v7

    sub-int/2addr v9, v7

    if-lez v9, :cond_a

    .line 915
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_e

    .line 923
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetindex(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v6

    const/16 v18, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_c
    if-ltz v6, :cond_e

    .line 924
    iget-object v7, v1, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Child;

    .line 925
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v9, v9, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ne v9, v10, :cond_e

    .line 926
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-ge v9, v10, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    .line 930
    :cond_c
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v7

    sub-int/2addr v9, v7

    if-lez v9, :cond_d

    .line 932
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_e
    :goto_d
    if-eqz v4, :cond_f

    :goto_e
    const/16 v18, 0x1

    goto/16 :goto_11

    .line 944
    :cond_f
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TableLayout$Child;->setFixedHeight(I)V

    sub-int/2addr v8, v3

    .line 947
    iget-object v4, v1, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_15

    .line 948
    iget-object v7, v1, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/TableLayout$Child;

    if-ne v2, v7, :cond_10

    goto :goto_10

    .line 952
    :cond_10
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v9, v9, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ne v9, v10, :cond_13

    .line 953
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetfixedHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-eq v9, v10, :cond_12

    .line 954
    iget-object v9, v1, Lorg/telegram/ui/Components/TableLayout;->cellsToFixHeight:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 955
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetindex(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetindex(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    if-ge v9, v10, :cond_11

    add-int/lit8 v6, v6, -0x1

    :cond_11
    add-int/lit8 v0, v0, -0x1

    .line 960
    :cond_12
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v7, v9}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fputmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;I)V

    .line 961
    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredWidth(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetmeasuredHeight(Lorg/telegram/ui/Components/TableLayout$Child;)I

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v7, v9, v10, v12}, Lorg/telegram/ui/Components/TableLayout$Child;->measure(IIZ)V

    goto :goto_10

    .line 962
    :cond_13
    invoke-static {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v9, v9, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v9, v9, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    invoke-static {v7}, Lorg/telegram/ui/Components/TableLayout$Child;->-$$Nest$fgetlayoutParams(Lorg/telegram/ui/Components/TableLayout$Child;)Lorg/telegram/ui/Components/TableLayout$LayoutParams;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$LayoutParams;->rowSpec:Lorg/telegram/ui/Components/TableLayout$Spec;

    iget-object v10, v10, Lorg/telegram/ui/Components/TableLayout$Spec;->span:Lorg/telegram/ui/Components/TableLayout$Interval;

    iget v10, v10, Lorg/telegram/ui/Components/TableLayout$Interval;->min:I

    if-ge v9, v10, :cond_14

    .line 963
    iget v9, v7, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    sub-int/2addr v9, v3

    iput v9, v7, Lorg/telegram/ui/Components/TableLayout$Child;->y:I

    :cond_14
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_15
    move v5, v6

    goto/16 :goto_e

    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 967
    :cond_16
    invoke-virtual {v1}, Lorg/telegram/ui/Components/TableLayout;->getChildCount()I

    move-result v0

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v0, :cond_17

    .line 968
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/TableLayout;->getChildAt(I)Lorg/telegram/ui/Components/TableLayout$Child;

    move-result-object v2

    .line 969
    iget-object v3, v1, Lorg/telegram/ui/Components/TableLayout;->delegate:Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;

    iget-object v4, v2, Lorg/telegram/ui/Components/TableLayout$Child;->textLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextX()I

    move-result v5

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TableLayout$Child;->getTextY()I

    move-result v2

    invoke-interface {v3, v4, v5, v2}, Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;->onLayoutChild(Lorg/telegram/ui/ArticleViewer$DrawingText;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 971
    :cond_17
    invoke-virtual {v1, v11, v8}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllChildrens()V
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->childrens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->rowSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 399
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 984
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 985
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateValues()V

    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0

    .line 472
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->mAlignmentMode:I

    .line 473
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setCount(I)V

    .line 454
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    .line 455
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mHorizontalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setOrderPreserved(Z)V

    .line 492
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    .line 493
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setDrawLines(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->drawLines:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 431
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 432
    iput p1, p0, Lorg/telegram/ui/Components/TableLayout;->mOrientation:I

    .line 433
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setCount(I)V

    .line 444
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    .line 445
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Components/TableLayout;->mVerticalAxis:Lorg/telegram/ui/Components/TableLayout$Axis;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableLayout$Axis;->setOrderPreserved(Z)V

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout;->invalidateStructure()V

    .line 483
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method

.method public setRtl(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->isRtl:Z

    return-void
.end method

.method public setStriped(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->isStriped:Z

    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TableLayout;->mUseDefaultMargins:Z

    .line 464
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout;->requestLayout()V

    return-void
.end method
