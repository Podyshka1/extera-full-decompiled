.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->f$1:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->f$2:Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->f$1:Z

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda257;->f$2:Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$MsW5DHoPi3q8FlkFQCBCiRTsh9Q(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
