.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ChannelCreateActivity;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;->f$1:Lorg/telegram/ui/ChannelCreateActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;->f$1:Lorg/telegram/ui/ChannelCreateActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda162;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$QOX7BdAZK6fT-18szPK_3o77DEw(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ChannelCreateActivity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method
