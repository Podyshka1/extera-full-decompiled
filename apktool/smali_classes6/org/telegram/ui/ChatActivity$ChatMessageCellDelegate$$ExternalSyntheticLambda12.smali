.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$KeyboardButton;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->$r8$lambda$7Q7z-kFvRlZqQM3k2xlLMqRZpbo(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V

    return-void
.end method
