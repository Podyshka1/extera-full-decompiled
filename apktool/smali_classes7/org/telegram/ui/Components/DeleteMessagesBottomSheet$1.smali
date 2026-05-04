.class Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;JIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 290
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 291
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;->this$0:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->access$000(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
