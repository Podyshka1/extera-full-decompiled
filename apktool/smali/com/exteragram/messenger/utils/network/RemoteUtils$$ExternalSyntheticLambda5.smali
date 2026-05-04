.class public final synthetic Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1, p1, p2}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->$r8$lambda$46mUGun92abcfiukauq4x97j_ek(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
