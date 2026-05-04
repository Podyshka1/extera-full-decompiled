.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda220;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda220;->f$0:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda220;->f$0:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$wgIOo8DiOAsR0EL8re3cZHiQU6I(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
