.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/messenger/AccountInstance;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda27;->f$0:I

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda27;->f$1:Lorg/telegram/messenger/AccountInstance;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda27;->f$0:I

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda27;->f$1:Lorg/telegram/messenger/AccountInstance;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$vXL7ho_ggYDskgl6cWD4BYeq2xE(ILorg/telegram/messenger/AccountInstance;)V

    return-void
.end method
