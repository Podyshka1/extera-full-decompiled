.class Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->setSelected(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$2;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$2;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    invoke-static {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->-$$Nest$fgetselectedAnimator(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->-$$Nest$mupdateSelectedT(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;F)V

    .line 730
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$2;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->-$$Nest$fputselectedAnimator(Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;Landroid/animation/ValueAnimator;)V

    return-void
.end method
