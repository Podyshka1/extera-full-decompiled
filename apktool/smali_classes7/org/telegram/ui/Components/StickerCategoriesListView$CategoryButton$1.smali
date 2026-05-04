.class Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->onLoaded()V
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

    .line 700
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$1;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$1;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadProgress:F

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$1;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->loadAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
