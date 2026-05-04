.class Lorg/telegram/ui/Stories/DialogStoriesCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

.field final synthetic val$overscrollTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/widget/TextView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$2;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$2;->val$overscrollTextView:Landroid/widget/TextView;

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
    .locals 2

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$2;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fputoverScrollCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;F)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$2;->val$overscrollTextView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Screen oversrcoll: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$2;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->-$$Nest$fgetoverScrollCoef(Lorg/telegram/ui/Stories/DialogStoriesCell;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
