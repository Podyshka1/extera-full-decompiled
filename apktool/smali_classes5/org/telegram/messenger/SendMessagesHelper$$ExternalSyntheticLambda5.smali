.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLObject;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$4:Lorg/telegram/messenger/MessageObject;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iput-boolean p7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$6:Z

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$7:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$4:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$6:Z

    iget-object v7, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda5;->f$7:Lorg/telegram/tgnet/TLObject;

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$vRse1t278wU4NtJrTvZHS3fy6cU(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;)V

    return-void
.end method
