.class Lorg/telegram/ui/Components/SlideChooseView$1;
.super Lorg/telegram/ui/Components/IntSeekBarAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SlideChooseView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SlideChooseView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/IntSeekBarAccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$fgetselectedIndex(Lorg/telegram/ui/Components/SlideChooseView;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$fgetoptionsStr(Lorg/telegram/ui/Components/SlideChooseView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {p1}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$fgetoptionsStr(Lorg/telegram/ui/Components/SlideChooseView;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$fgetselectedIndex(Lorg/telegram/ui/Components/SlideChooseView;)I

    move-result v0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getMaxValue()I
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$fgetoptionsStr(Lorg/telegram/ui/Components/SlideChooseView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getProgress()I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$fgetselectedIndex(Lorg/telegram/ui/Components/SlideChooseView;)I

    move-result v0

    return v0
.end method

.method protected setProgress(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/SlideChooseView$1;->this$0:Lorg/telegram/ui/Components/SlideChooseView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/SlideChooseView;->-$$Nest$msetOption(Lorg/telegram/ui/Components/SlideChooseView;I)V

    return-void
.end method
