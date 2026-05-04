.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setFiltersShown(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V
    .locals 0

    .line 647
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    iput-boolean p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 650
    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;->val$show:Z

    if-nez p1, :cond_0

    .line 651
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->-$$Nest$fgetfilterScrollView(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Landroid/widget/HorizontalScrollView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
