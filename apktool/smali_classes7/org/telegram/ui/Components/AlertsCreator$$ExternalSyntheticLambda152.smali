.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextCaption;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage$StringCallback;

.field public final synthetic f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/MessagesStorage$StringCallback;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$1:Lorg/telegram/messenger/MessagesStorage$StringCallback;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$1:Lorg/telegram/messenger/MessagesStorage$StringCallback;

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda152;->f$3:Landroid/view/View;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$XmmyoHn6lHAr_950-xOv40giscI(Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/MessagesStorage$StringCallback;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
