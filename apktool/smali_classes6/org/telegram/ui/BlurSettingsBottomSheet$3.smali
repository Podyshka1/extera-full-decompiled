.class Lorg/telegram/ui/BlurSettingsBottomSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BlurSettingsBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/BlurSettingsBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BlurSettingsBottomSheet;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/BlurSettingsBottomSheet$3;->this$0:Lorg/telegram/ui/BlurSettingsBottomSheet;

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

    .line 118
    sput p2, Lorg/telegram/ui/BlurSettingsBottomSheet;->blurRadius:F

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/BlurSettingsBottomSheet$3;->this$0:Lorg/telegram/ui/BlurSettingsBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/BlurSettingsBottomSheet;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/BlurSettingsBottomSheet$3;->this$0:Lorg/telegram/ui/BlurSettingsBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/BlurSettingsBottomSheet;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlurredViews()V

    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/BlurSettingsBottomSheet$3;->this$0:Lorg/telegram/ui/BlurSettingsBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/BlurSettingsBottomSheet;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlurredViews()V

    return-void
.end method
