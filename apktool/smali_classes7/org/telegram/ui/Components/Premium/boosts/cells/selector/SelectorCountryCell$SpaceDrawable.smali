.class Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpaceDrawable"
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 112
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;->size:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 117
    iget p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorCountryCell$SpaceDrawable;->size:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1
.end method
