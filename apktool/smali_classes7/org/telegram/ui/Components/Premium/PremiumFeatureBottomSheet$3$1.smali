.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3$1;
.super Landroid/widget/Scroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;Landroid/content/Context;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;

    invoke-direct {p0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 7

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3$1;->this$1:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;->-$$Nest$fgetsmoothScroll(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int v6, v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    return-void
.end method
