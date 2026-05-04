.class Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->updateOffActive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

.field final synthetic val$activeT:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;F)V
    .locals 0

    .line 953
    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iput p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;->val$activeT:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 956
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iget-object p1, p1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->leftTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    .line 957
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    .line 958
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;->this$1:Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iget v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider$6;->val$activeT:F

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->-$$Nest$fputoffActiveT(Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;F)V

    .line 956
    invoke-static {v0, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
