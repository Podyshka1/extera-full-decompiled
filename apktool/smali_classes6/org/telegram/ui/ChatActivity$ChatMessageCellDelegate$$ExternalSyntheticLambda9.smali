.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$3:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;->f$3:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->$r8$lambda$EkMVKwQbP8CH9LuGvhom1wnR0wk(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V

    return-void
.end method
