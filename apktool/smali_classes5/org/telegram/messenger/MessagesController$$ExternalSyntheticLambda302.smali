.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>([Lorg/telegram/ui/ActionBar/AlertDialog;[ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;->f$0:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;->f$0:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda302;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$W9RA4Sis-4qjQ4-QoE7eUChlFaI([Lorg/telegram/ui/ActionBar/AlertDialog;[ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method
