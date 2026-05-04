.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda188;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda188;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda188;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda188;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda188;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$uuZgIvQ9MTqgQy0uDU4_d1mYCcg(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
