.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;
.super Lorg/telegram/ui/ActionBar/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 601
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 608
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$7;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->-$$Nest$mupdateStatusBar(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)V

    return-void
.end method
