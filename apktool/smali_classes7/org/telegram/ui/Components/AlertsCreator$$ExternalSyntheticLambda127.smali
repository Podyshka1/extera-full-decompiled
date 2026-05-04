.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda127;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$uaSHgR4MVsTnWF_6Ml9gtPFR6g0(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method
