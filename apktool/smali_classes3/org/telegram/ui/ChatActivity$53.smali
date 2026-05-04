.class Lorg/telegram/ui/ChatActivity$53;
.super Lorg/telegram/ui/EmojiAnimationsOverlay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJJ)V
    .locals 0

    .line 9060
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/EmojiAnimationsOverlay;-><init>(Lorg/telegram/ui/ChatActivity;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/RecyclerListView;IJJ)V

    return-void
.end method


# virtual methods
.method public onAllEffectsEnd()V
    .locals 2

    .line 9063
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$53;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    return-void
.end method
