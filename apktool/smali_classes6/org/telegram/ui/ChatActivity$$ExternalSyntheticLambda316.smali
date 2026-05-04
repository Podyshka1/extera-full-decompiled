.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda316;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda316;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda316;->f$1:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda316;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda316;->f$1:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$wt80961MWX19YaRK4DjGejcj12s(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
