.class public final synthetic Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$KeyboardButton;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;

    iput-object p2, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;

    iget-object v1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-static {v0, v1, p1, p2}, Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;->$r8$lambda$_3BWyWAipFQJIQuWAYnIE53nXxQ(Lcom/exteragram/messenger/export/ui/ChatViewer$ChatActivityAdapter$1;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V

    return-void
.end method
