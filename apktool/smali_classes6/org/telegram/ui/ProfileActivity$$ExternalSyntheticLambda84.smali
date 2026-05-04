.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda84;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda84;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda84;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda84;->f$1:Z

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$SF9MRdMdk61DeX6o0dsK8GwIX74(Lorg/telegram/ui/ProfileActivity;ZLjava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
