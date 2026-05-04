.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/ui/Components/AlertsCreator$AccountSelectDelegate;


# direct methods
.method public synthetic constructor <init>([Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Lorg/telegram/ui/Components/AlertsCreator$AccountSelectDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;->f$0:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;->f$2:Lorg/telegram/ui/Components/AlertsCreator$AccountSelectDelegate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;->f$0:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda27;->f$2:Lorg/telegram/ui/Components/AlertsCreator$AccountSelectDelegate;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$1wLQpRck4F5q_LqRKe0xHnA3R3Y([Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/Runnable;Lorg/telegram/ui/Components/AlertsCreator$AccountSelectDelegate;Landroid/view/View;)V

    return-void
.end method
