.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda139;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda139;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda139;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda139;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda139;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$-pUHbxMB2qqdFkNyC6WnBZtYEHo(Lorg/telegram/messenger/Utilities$Callback;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
