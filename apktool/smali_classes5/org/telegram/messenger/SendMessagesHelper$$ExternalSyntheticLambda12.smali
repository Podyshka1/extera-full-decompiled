.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$1Chc8gwa6V6WVw-ouvbMbTnCcq4(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;Ljava/lang/Long;)V

    return-void
.end method
