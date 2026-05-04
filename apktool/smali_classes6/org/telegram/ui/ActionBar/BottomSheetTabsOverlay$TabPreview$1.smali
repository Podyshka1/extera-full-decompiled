.class Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->animateDismiss(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

.field final synthetic val$dismissTo:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;F)V
    .locals 0

    .line 966
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;->val$dismissTo:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 969
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;->this$0:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview$1;->val$dismissTo:F

    iput v0, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->dismissProgress:F

    .line 970
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$TabPreview;->parentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
