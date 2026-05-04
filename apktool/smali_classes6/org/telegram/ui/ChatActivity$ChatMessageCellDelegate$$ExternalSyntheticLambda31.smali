.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$4:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$2:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;->f$4:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->$r8$lambda$NcZNkSTl5cD-2THl5ZP-aixYfxc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/ChatActivity;)V

    return-void
.end method
