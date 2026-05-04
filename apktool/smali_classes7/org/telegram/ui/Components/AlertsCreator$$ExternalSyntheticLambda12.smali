.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda12;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$CpN2fUhD1pd7OeCIGolsV_8lyw4(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
