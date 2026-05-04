.class Lorg/telegram/ui/TopicsFragment$13;
.super Lorg/telegram/ui/Components/StickerEmptyView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field showProgressInternal:Z

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$13;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public showProgress(ZZ)V
    .locals 2

    .line 1337
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1338
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$13;->showProgressInternal:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1340
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$13;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1342
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$13;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1343
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$13;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
