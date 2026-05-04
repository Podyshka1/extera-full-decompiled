.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/ShapeAppearance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;,
        Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;
    }
.end annotation


# static fields
.field public static final CORNER_BOTTOM_LEFT:I = 0x4

.field public static final CORNER_BOTTOM_RIGHT:I = 0x8

.field public static final CORNER_TOP_LEFT:I = 0x1

.field public static final CORNER_TOP_RIGHT:I = 0x2

.field public static final NUM_CORNERS:I = 0x4

.field public static final PILL:Lcom/google/android/material/shape/CornerSize;


# instance fields
.field bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 629
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    sput-object v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 664
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 665
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 666
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 668
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 669
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 670
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 671
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 673
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 674
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 675
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 676
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V
    .locals 1

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 646
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 647
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$300(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 648
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$400(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 650
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$500(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 651
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$600(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 652
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$700(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 653
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$800(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 655
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$900(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 656
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1000(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 657
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 658
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/shape/ShapeAppearanceModel$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 496
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 541
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 550
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 564
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_0

    .line 566
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 568
    :cond_0
    sget-object p0, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 569
    invoke-static {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/res/TypedArray;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 505
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 515
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 526
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 527
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 529
    sget p2, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 530
    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 531
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 532
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 533
    invoke-static {p0, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static builder(Landroid/content/res/TypedArray;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 8

    .line 575
    :try_start_0
    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 576
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 577
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 578
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 579
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 580
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 581
    invoke-virtual {p0, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 582
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 583
    invoke-virtual {p0, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 585
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 586
    invoke-static {p0, v4, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p1

    .line 588
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 589
    invoke-static {p0, v4, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    .line 590
    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 591
    invoke-static {p0, v5, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 592
    sget v6, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 593
    invoke-static {p0, v6, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 594
    sget v7, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 595
    invoke-static {p0, v7, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p1

    .line 597
    new-instance v7, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v7}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 598
    invoke-virtual {v7, v1, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 599
    invoke-virtual {v1, v2, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 600
    invoke-virtual {v1, v3, v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 601
    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 604
    throw p1
.end method

.method static containsFlag(II)Z
    .locals 0

    or-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 2

    .line 611
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 619
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 620
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 622
    new-instance p0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getDefaultShape()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    return-object p0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getShapeAppearanceModels()[Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    const/4 v0, 0x1

    .line 906
    new-array v0, v0, [Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getShapeForState([I)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    return-object p0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    return-object v0
.end method

.method public hasRoundedCorners()Z
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v0, v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRoundRect(Landroid/graphics/RectF;)Z
    .locals 5

    .line 862
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 863
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 864
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 865
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 868
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    invoke-interface {v1, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    .line 870
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 871
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 872
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 873
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 875
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->hasRoundedCorners()Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .locals 1

    .line 802
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method

.method public withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method

.method public withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 846
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 847
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 849
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 850
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    .line 851
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    return-object p1
.end method
