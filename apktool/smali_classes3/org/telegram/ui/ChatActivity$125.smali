.class Lorg/telegram/ui/ChatActivity$125;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/PopupSwipeBackLayout$OnSwipeBackProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isEnter:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 31744
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$125;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$125;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 31746
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$125;->isEnter:Z

    return-void
.end method


# virtual methods
.method public onSwipeBackProgress(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FF)V
    .locals 2

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 31750
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$125;->isEnter:Z

    if-nez p1, :cond_0

    .line 31751
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$125;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    const/4 p1, 0x1

    .line 31752
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$125;->isEnter:Z

    return-void

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p1

    if-nez p2, :cond_1

    .line 31753
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$125;->isEnter:Z

    if-eqz p2, :cond_1

    .line 31754
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$125;->val$finalReactionsLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    sub-float v1, p1, p3

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1

    .line 31756
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$125;->isEnter:Z

    :cond_1
    return-void
.end method
