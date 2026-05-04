.class public final synthetic Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

.field public final synthetic f$2:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

    iput-object p2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iput-object p3, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;

    iget-object v1, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    iget-object v2, p0, Landroidx/recyclerview/widget/ChatListItemAnimator$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0, v1, v2, p1}, Landroidx/recyclerview/widget/ChatListItemAnimator;->$r8$lambda$qA9X7o-vu6MzHoXlAlzncqZZGW4(Landroidx/recyclerview/widget/ChatListItemAnimator$MoveInfoExtended;Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/animation/ValueAnimator;)V

    return-void
.end method
