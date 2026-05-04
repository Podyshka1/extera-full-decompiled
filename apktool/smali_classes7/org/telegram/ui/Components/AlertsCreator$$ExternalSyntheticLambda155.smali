.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextCaption;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda155;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$C14bQF25GcuJm-KEUteH82ng-Xs(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method
