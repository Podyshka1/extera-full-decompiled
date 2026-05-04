.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$5:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesController$ErrorDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$2:Ljava/lang/Runnable;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$5:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$7:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    iput-boolean p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$2:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$4:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$5:Lorg/telegram/messenger/MessagesController$ErrorDelegate;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$7:Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    iget-boolean v9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda206;->f$8:Z

    move-object v10, p1

    move-object v11, p2

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$99Y8SNZcGXMOdolc-WdmPC4VVJk(Lorg/telegram/messenger/MessagesController;JLjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesController$ErrorDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
