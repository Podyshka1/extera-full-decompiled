.class Lorg/telegram/ui/DialogsActivity$44;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->updateStoriesVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 12653
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 12656
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCellVisible:Z

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p1, Lorg/telegram/ui/DialogsActivity;->progressToDialogStoriesCell:F

    if-nez v0, :cond_1

    .line 12658
    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12660
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$44;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 12661
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
