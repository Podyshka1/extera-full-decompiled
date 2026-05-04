.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController$ChatlistUpdatesStat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/messenger/MessagesController$ChatlistUpdatesStat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;->f$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;->f$2:Lorg/telegram/messenger/MessagesController$ChatlistUpdatesStat;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;->f$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda186;->f$2:Lorg/telegram/messenger/MessagesController$ChatlistUpdatesStat;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$baQLGmDpp1GQK8NgZ6MLfzX8HUI(Lorg/telegram/messenger/MessagesController;ILorg/telegram/messenger/MessagesController$ChatlistUpdatesStat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
