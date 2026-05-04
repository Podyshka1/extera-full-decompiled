.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda153;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextCaption;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage$StringCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/MessagesStorage$StringCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda153;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda153;->f$1:Lorg/telegram/messenger/MessagesStorage$StringCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda153;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda153;->f$1:Lorg/telegram/messenger/MessagesStorage$StringCallback;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$4X5evEaly5Z5noomoLqLYltJee8(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/MessagesStorage$StringCallback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
