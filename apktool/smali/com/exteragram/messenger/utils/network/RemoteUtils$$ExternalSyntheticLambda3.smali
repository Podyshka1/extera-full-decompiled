.class public final synthetic Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput p4, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lcom/exteragram/messenger/utils/network/RemoteUtils$$ExternalSyntheticLambda3;->f$3:I

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/exteragram/messenger/utils/network/RemoteUtils;->$r8$lambda$AIZtPRC5Vxz46P873cr5PQfu3is(Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;ILorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
