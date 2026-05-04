.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/RequestDelegate;

.field public final synthetic f$1:Lorg/telegram/tgnet/RequestDelegateTimestamp;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/tgnet/RequestDelegate;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/tgnet/RequestDelegate;

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$BHcEx53gGK4FSthrIIX5DgZqUDA(Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;)V

    return-void
.end method
