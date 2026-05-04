.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda345;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda345;->f$0:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final didSelectUsers(Ljava/util/ArrayList;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda345;->f$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$tmiC87cMiN_ThXhdCNxvCcw2lL0(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public synthetic needAddBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate$-CC;->$default$needAddBot(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
