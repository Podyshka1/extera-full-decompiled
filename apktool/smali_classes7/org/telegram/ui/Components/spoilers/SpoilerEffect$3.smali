.class Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->renderWithRipple(Landroid/view/View;ZIILjava/util/concurrent/atomic/AtomicReference;ILandroid/text/Layout;Ljava/util/List;Landroid/graphics/Canvas;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Landroid/text/style/ReplacementSpan;


# direct methods
.method constructor <init>(Landroid/text/style/ReplacementSpan;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;->val$e:Landroid/text/style/ReplacementSpan;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$3;->val$e:Landroid/text/style/ReplacementSpan;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    return p1
.end method
