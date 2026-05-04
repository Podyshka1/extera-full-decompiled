.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda83;->f$0:Lorg/telegram/ui/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final didSelectUsers(Ljava/util/ArrayList;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda83;->f$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$H06JcctO0zQPi0RvBwwXG--f8H4(Lorg/telegram/ui/ProfileActivity;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public synthetic needAddBot(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate$-CC;->$default$needAddBot(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
