.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->onCustomOpenAnimation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field final synthetic val$premiumAppIconsPreviewView:Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;->val$premiumAppIconsPreviewView:Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$12;->val$premiumAppIconsPreviewView:Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;->setOffset(F)V

    return-void
.end method
