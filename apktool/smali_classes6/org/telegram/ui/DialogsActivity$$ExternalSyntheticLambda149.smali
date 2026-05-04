.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ChannelCreateActivity;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;->f$1:Lorg/telegram/ui/ChannelCreateActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;->f$1:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda149;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog;

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$93gLc0SbrpizIJMwD0F2MV7ir-A(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Long;)V

    return-void
.end method
