.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda187;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda187;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda187;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda187;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda187;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$xugHco_o61WeZUcMKpEqARjftfE(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
