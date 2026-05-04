.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda488;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda488;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda488;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda488;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda488;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$NdWUE6mJG4Q08M0--_YE8QydAQE(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
