.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/tgnet/RequestDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$3:Lorg/telegram/tgnet/RequestDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda245;->f$3:Lorg/telegram/tgnet/RequestDelegate;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$Mk0ZT3bwBRaC_P5bKhf6F6syc3s(Lorg/telegram/messenger/MessagesStorage;ILjava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    return-void
.end method
