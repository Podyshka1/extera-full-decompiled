.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;
.super Lorg/telegram/ui/Stories/recorder/StoryModeTabs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;)V
    .locals 0

    .line 3022
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryModeTabs;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowTouch()Z
    .locals 1

    .line 3025
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$14;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$minCheck(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
