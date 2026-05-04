.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage$LongCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage$LongCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/messenger/MessagesStorage$LongCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/messenger/MessagesStorage$LongCallback;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$HWkJAAOnE8HXomNyKu0F3UeUvCk(Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void
.end method
