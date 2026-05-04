.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$29;
.super Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->showLimitReachedSheet(Lorg/telegram/ui/Stories/StoriesController$StoryLimit;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 7504
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$29;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7505
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mgetCount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->storiesCount:I

    return-void
.end method
