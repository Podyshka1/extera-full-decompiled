.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda141;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda141;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda141;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda141;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda141;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$DW4waWwcm8AusW89C-i0pL2SiAc(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    return p1
.end method
