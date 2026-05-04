.class Lorg/telegram/ui/Components/ThemeEditorView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    .line 1602
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1606
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1607
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView;->-$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$3;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
