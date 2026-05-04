.class Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->setPressed(Z)V
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

    .line 841
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$3;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 844
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton$3;->this$1:Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$CategoryButton;->backAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
