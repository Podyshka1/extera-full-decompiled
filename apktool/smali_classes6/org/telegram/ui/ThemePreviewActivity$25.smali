.class Lorg/telegram/ui/ThemePreviewActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    .line 2056
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$25;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getContentDescription(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStepsCount()I
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getStepsCount(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)I

    move-result v0

    return v0
.end method

.method public synthetic needVisuallyDivideSteps()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$needVisuallyDivideSteps(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 0

    .line 2059
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$25;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$fputcurrentIntensity(Lorg/telegram/ui/ThemePreviewActivity;F)V

    .line 2060
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$25;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->-$$Nest$mupdateIntensity(Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
