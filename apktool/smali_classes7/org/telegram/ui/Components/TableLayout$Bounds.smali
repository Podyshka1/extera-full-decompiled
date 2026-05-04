.class Lorg/telegram/ui/Components/TableLayout$Bounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TableLayout$Bounds;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/TableLayout-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TableLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Alignment;IZ)I
    .locals 0

    .line 1778
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->before:I

    invoke-virtual {p3, p2, p4}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getAlignmentValue(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method protected include(II)V
    .locals 1

    .line 1764
    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->before:I

    .line 1765
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->after:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->after:I

    return-void
.end method

.method protected final include(Lorg/telegram/ui/Components/TableLayout;Lorg/telegram/ui/Components/TableLayout$Child;Lorg/telegram/ui/Components/TableLayout$Spec;Lorg/telegram/ui/Components/TableLayout$Axis;I)V
    .locals 1

    .line 1782
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Lorg/telegram/ui/Components/TableLayout$Spec;->getFlexibility()I

    move-result v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->flexibility:I

    .line 1783
    iget-boolean p1, p4, Lorg/telegram/ui/Components/TableLayout$Axis;->horizontal:Z

    .line 1784
    invoke-static {p3, p1}, Lorg/telegram/ui/Components/TableLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Lorg/telegram/ui/Components/TableLayout$Spec;Z)Lorg/telegram/ui/Components/TableLayout$Alignment;

    move-result-object p1

    .line 1785
    invoke-virtual {p1, p2, p5}, Lorg/telegram/ui/Components/TableLayout$Alignment;->getAlignmentValue(Lorg/telegram/ui/Components/TableLayout$Child;I)I

    move-result p1

    sub-int/2addr p5, p1

    .line 1786
    invoke-virtual {p0, p1, p5}, Lorg/telegram/ui/Components/TableLayout$Bounds;->include(II)V

    return-void
.end method

.method protected reset()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1758
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->before:I

    .line 1759
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->after:I

    const/4 v0, 0x2

    .line 1760
    iput v0, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->flexibility:I

    return-void
.end method

.method protected size(Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 1770
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->flexibility:I

    invoke-static {p1}, Lorg/telegram/ui/Components/TableLayout;->canStretch(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x186a0

    return p1

    .line 1774
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->before:I

    iget v0, p0, Lorg/telegram/ui/Components/TableLayout$Bounds;->after:I

    add-int/2addr p1, v0

    return p1
.end method
