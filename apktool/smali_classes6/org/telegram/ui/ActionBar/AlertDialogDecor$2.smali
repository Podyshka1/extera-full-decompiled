.class Lorg/telegram/ui/ActionBar/AlertDialogDecor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialogDecor;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialogDecor;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialogDecor$2;->this$0:Lorg/telegram/ui/ActionBar/AlertDialogDecor;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialogDecor;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ActionBar/AlertDialogDecor;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
