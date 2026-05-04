.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->contentHeight:I

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$1;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f266666    # 0.65f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->contentHeight:I

    .line 134
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
